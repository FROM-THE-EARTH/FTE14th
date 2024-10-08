# For Developers

開発者向けドキュメント

物理とか風とか解析部分ついては[ここ](https://github.com/FROM-THE-EARTH/Prologue/blob/master/docs/DYNAMICS.md)

## 開発環境

|                  |                    |
| ---------------- | ------------------ |
| 使用言語         | C++ 20             |
| エディタ         | Visual Studio Code |
| ライブラリ       | boost 1.71.0       |
| 外部ソフトウェア | Gnuplot 5.2.8      |

[Visual Studio Code](https://code.visualstudio.com/download) での開発を想定して環境構築しているため、エディタは VSCode を使用し、推奨拡張機能をインストールして開発してください。

MSVC, GCC, Clang などのコンパイラが入っていない場合はインストールしてください。

## ディレクトリ、ファイルについて
- `.github`: GitHub Actionsのワークフローの定義ファイルなどGitHubで参照されるファイル
- `.vscode`: VSCodeの設定などを記述したファイル群
- `application`: ビルドしたファイルの出力先。ここにシミュレーションの入出力ファイルが格納される
- `deps`: Prologueが依存している外部ライブラリのファイル
- `docs`: ドキュメントファイル群
- `src`: ソースファイル
- `.clang-format`: C++ファイルのフォーマット設定、VSCodeの設定でファイルを保存するたびにこの設定をもとに自動フォーマットされる
- `.editorconfig`: コーディングスタイルを統一するための設定
- `.gitattributes`: おまじないのようなもの
- `.gitignore`: git管理下に置かないファイルを設定する
- `CMakeLists.txt`: CMakeというツールでWindows, macOS, Linuxの異なる環境下でのビルドを簡単に行えるようにしていて、これはその設定ファイル
- `LICENSE`: Prologueのライセンス
- `README.md`: リポジトリのトップページに表示されている説明書のようなもの

## ビルド

ビルドは VSCode の拡張機能 CMakeTools を利用して行います。VSCode でこのリポジトリを開くと CMakeTools が自動的に構成を開始します。

ビルドする際は VSCode 下部にある画像の部分で Debug / Release 切り替えやビルド・デバッグの実行をします。

![](vscode.png)

## バージョン管理について

**基本のバージョン表記は x.y.z です。**

- x はプログラムまるごと書き換えるレベルで更新した際にインクリメントします。

- y は仕様にそれなりの変更があった場合や機能追加時にインクリメントします。

- z はバグ修正や軽微なアップデートなどを行った場合にインクリメントします。

## 配布方法

配布は GitHub Actions を通して半自動的に行われます。

配布の流れは以下のようになっています。

1. ソースコードの修正が完了し、更新準備が整う
2. `main.cpp`の`const auto VERSION = "X.X.X"` を書き換える
3. [`README.md`](https://github.com/FROM-THE-EARTH/Prologue/blob/main/README.md)のバージョン・日付を修正する
4. 上記作業が終了したコミットに`vX.X.X`とタグをつけ、リモートにプッシュする（例 `v1.2.3`）
   タグを付けたコミットに不具合があり、バージョンを変更せずにリリース作業をやり直す場合、不具合を修正したコミットに`vX.X.X.X`とタグを付けリモートにプッシュする（例 `v1.2.3.1`, `v1.2.3.2`）
5. [**Actions**] タグに反応して[`release.yml`](https://github.com/FROM-THE-EARTH/Prologue/blob/main/.github/workflows/release.yml)のワークフローが実行される
6. [**Actions**] [Releases](https://github.com/FROM-THE-EARTH/Prologue/releases) に`vX.X.X`を名前として Windows, macOS, Linux 向けの実行ファイル・設定ファイル・入力ファイルを同包した zip ファイルが登録される
7. Releases に更新情報を書く
8. developブランチをmainブランチにマージする

## CI

main ブランチをプッシュする、または main ブランチに PR を送ると[`ci.yml`](https://github.com/FROM-THE-EARTH/Prologue/blob/main/.github/workflows/ci.yml)のワークフローが自動的に Windows, macOS, Linux でのビルドを実行します。

何かしらエラーが発生するとワークフローが失敗するため開発時に活用してください。
