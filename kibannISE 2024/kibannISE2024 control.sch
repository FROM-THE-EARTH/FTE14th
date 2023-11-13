<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC" urn="urn:adsk.eagle:symbol:13874/1" library_version="1">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" urn="urn:adsk.eagle:component:13926/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="arduinonano device">
<packages>
<package name="ARDUINONANO">
<pad name="D12" x="1.27" y="-1.27" drill="1"/>
<pad name="D11" x="3.81" y="-1.27" drill="1"/>
<pad name="D10" x="6.35" y="-1.27" drill="1"/>
<pad name="D9" x="8.89" y="-1.27" drill="1"/>
<pad name="D8" x="11.43" y="-1.27" drill="1"/>
<pad name="D7" x="13.97" y="-1.27" drill="1"/>
<pad name="D6" x="16.51" y="-1.27" drill="1"/>
<pad name="D5" x="19.05" y="-1.27" drill="1"/>
<pad name="D4" x="21.59" y="-1.27" drill="1"/>
<pad name="D3" x="24.13" y="-1.27" drill="1"/>
<pad name="D2" x="26.67" y="-1.27" drill="1"/>
<pad name="GND2" x="29.21" y="-1.27" drill="1"/>
<pad name="RESET2" x="31.75" y="-1.27" drill="1"/>
<pad name="D0" x="34.29" y="-1.27" drill="1"/>
<pad name="D1" x="36.83" y="-1.27" drill="1" shape="square"/>
<pad name="D13" x="1.27" y="-16.51" drill="1"/>
<pad name="3V3" x="3.81" y="-16.51" drill="1"/>
<pad name="AREF" x="6.35" y="-16.51" drill="1"/>
<pad name="D14" x="8.89" y="-16.51" drill="1"/>
<pad name="D15" x="11.43" y="-16.51" drill="1"/>
<pad name="D16" x="13.97" y="-16.51" drill="1"/>
<pad name="D17" x="16.51" y="-16.51" drill="1"/>
<pad name="D18" x="19.05" y="-16.51" drill="1"/>
<pad name="D19" x="21.59" y="-16.51" drill="1"/>
<pad name="A6" x="24.13" y="-16.51" drill="1"/>
<pad name="A7" x="26.67" y="-16.51" drill="1"/>
<pad name="5V" x="29.21" y="-16.51" drill="1"/>
<pad name="RESET1" x="31.75" y="-16.51" drill="1"/>
<pad name="GND1" x="34.29" y="-16.51" drill="1"/>
<pad name="VIN" x="36.83" y="-16.51" drill="1" shape="square"/>
<wire x1="-2.55" y1="0.11" x2="-2.55" y2="-17.89" width="0.127" layer="21"/>
<wire x1="-2.55" y1="-17.89" x2="40.65" y2="-17.89" width="0.127" layer="21"/>
<wire x1="40.65" y1="-17.89" x2="40.65" y2="0.11" width="0.127" layer="21"/>
<wire x1="40.65" y1="0.11" x2="-2.55" y2="0.11" width="0.127" layer="21"/>
<text x="43.18" y="-1.27" size="1.27" layer="21">&gt;NAME</text>
<text x="43.18" y="-3.81" size="1.27" layer="21">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="ARDUINONANO">
<wire x1="0" y1="-30.48" x2="71.12" y2="-30.48" width="0.254" layer="94"/>
<pin name="D13" x="5.08" y="-33.02" length="middle" rot="R90"/>
<pin name="3V3" x="10.16" y="-33.02" length="middle" rot="R90"/>
<pin name="AREF" x="15.24" y="-33.02" length="middle" rot="R90"/>
<pin name="D14" x="20.32" y="-33.02" length="middle" rot="R90"/>
<pin name="D15" x="25.4" y="-33.02" length="middle" rot="R90"/>
<pin name="D16" x="30.48" y="-33.02" length="middle" rot="R90"/>
<pin name="D17" x="35.56" y="-33.02" length="middle" rot="R90"/>
<pin name="D18" x="40.64" y="-33.02" length="middle" rot="R90"/>
<pin name="D19" x="45.72" y="-33.02" length="middle" rot="R90"/>
<pin name="A6" x="50.8" y="-33.02" length="middle" rot="R90"/>
<pin name="A7" x="55.88" y="-33.02" length="middle" rot="R90"/>
<pin name="5V" x="60.96" y="-33.02" length="middle" rot="R90"/>
<pin name="RESET1" x="66.04" y="-33.02" length="middle" rot="R90"/>
<pin name="GND1" x="71.12" y="-33.02" length="middle" rot="R90"/>
<wire x1="0" y1="0" x2="0" y2="-30.48" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="86.36" y2="0" width="0.254" layer="94"/>
<wire x1="86.36" y1="0" x2="86.36" y2="-30.48" width="0.254" layer="94"/>
<wire x1="73.66" y1="-30.48" x2="71.12" y2="-30.48" width="0.254" layer="94"/>
<wire x1="73.66" y1="-30.48" x2="86.36" y2="-30.48" width="0.254" layer="94"/>
<pin name="VIN" x="76.2" y="-33.02" length="middle" rot="R90"/>
<pin name="D12" x="5.08" y="2.54" length="middle" rot="R270"/>
<pin name="D11" x="10.16" y="2.54" length="middle" rot="R270"/>
<pin name="D10" x="15.24" y="2.54" length="middle" rot="R270"/>
<pin name="D9" x="20.32" y="2.54" length="middle" rot="R270"/>
<pin name="D8" x="25.4" y="2.54" length="middle" rot="R270"/>
<pin name="D7" x="30.48" y="2.54" length="middle" rot="R270"/>
<pin name="D6" x="35.56" y="2.54" length="middle" rot="R270"/>
<pin name="D5" x="40.64" y="2.54" length="middle" rot="R270"/>
<pin name="D4" x="45.72" y="2.54" length="middle" rot="R270"/>
<pin name="D3" x="50.8" y="2.54" length="middle" rot="R270"/>
<pin name="D2" x="55.88" y="2.54" length="middle" rot="R270"/>
<pin name="GND2" x="60.96" y="2.54" length="middle" rot="R270"/>
<pin name="RESET2" x="66.04" y="2.54" length="middle" rot="R270"/>
<pin name="D0" x="71.12" y="2.54" length="middle" rot="R270"/>
<pin name="D1" x="76.2" y="2.54" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINONANO">
<gates>
<gate name="G$1" symbol="ARDUINONANO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ARDUINONANO">
<connects>
<connect gate="G$1" pin="3V3" pad="3V3"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="D0" pad="D0"/>
<connect gate="G$1" pin="D1" pad="D1"/>
<connect gate="G$1" pin="D10" pad="D10"/>
<connect gate="G$1" pin="D11" pad="D11"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13" pad="D13"/>
<connect gate="G$1" pin="D14" pad="D14"/>
<connect gate="G$1" pin="D15" pad="D15"/>
<connect gate="G$1" pin="D16" pad="D16"/>
<connect gate="G$1" pin="D17" pad="D17"/>
<connect gate="G$1" pin="D18" pad="D18"/>
<connect gate="G$1" pin="D19" pad="D19"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D3" pad="D3"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D5" pad="D5"/>
<connect gate="G$1" pin="D6" pad="D6"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="D9" pad="D9"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="GND2" pad="GND2"/>
<connect gate="G$1" pin="RESET1" pad="RESET1"/>
<connect gate="G$1" pin="RESET2" pad="RESET2"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="BMP180" urn="urn:adsk.eagle:library:38464354">
<packages>
<package name="GY-68" urn="urn:adsk.eagle:footprint:38464355/1" library_version="2">
<pad name="P1" x="-5" y="4" drill="1.2"/>
<pad name="P2" x="-5" y="1.46" drill="1.2"/>
<pad name="P3" x="-5" y="-1.08" drill="1.2"/>
<pad name="P4" x="-5" y="-3.62" drill="1.2"/>
<wire x1="-6" y1="5" x2="-6" y2="-5" width="0.127" layer="21"/>
<wire x1="-6" y1="-5" x2="7" y2="-5" width="0.127" layer="21"/>
<wire x1="7" y1="-5" x2="7" y2="5" width="0.127" layer="21"/>
<wire x1="7" y1="5" x2="-6" y2="5" width="0.127" layer="21"/>
<wire x1="5.7" y1="-4" x2="2.4" y2="-4" width="0.127" layer="21"/>
<wire x1="2.4" y1="-4" x2="2.4" y2="-1" width="0.127" layer="21"/>
<wire x1="2.4" y1="-1" x2="5.7" y2="-1" width="0.127" layer="21"/>
<wire x1="5.7" y1="-1" x2="5.7" y2="-4" width="0.127" layer="21"/>
<circle x="4" y="2" radius="1.503328125" width="0.127" layer="21"/>
<circle x="3.1" y="-1.7" radius="0.22360625" width="0.127" layer="21"/>
<text x="-4" y="2" size="1.27" layer="25">&gt;NAME</text>
<text x="-4" y="0" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="GY-68" urn="urn:adsk.eagle:package:38464357/3" type="model" library_version="2">
<packageinstances>
<packageinstance name="GY-68"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="BMP180" urn="urn:adsk.eagle:symbol:38464356/1" library_version="2">
<pin name="VIN" x="-7.62" y="3.81" visible="pin" length="middle"/>
<pin name="GND" x="-7.62" y="1.27" visible="pin" length="middle"/>
<pin name="SCL" x="-7.62" y="-1.27" visible="pin" length="middle"/>
<pin name="SDA" x="-7.62" y="-3.81" visible="pin" length="middle"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<text x="-5.08" y="5.08" size="1.27" layer="95">&gt;NAME</text>
<text x="-5.08" y="-5.08" size="1.27" layer="96" align="top-left">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BMP180" urn="urn:adsk.eagle:component:38464358/2" prefix="BMP" library_version="2">
<gates>
<gate name="G$1" symbol="BMP180" x="0" y="0"/>
</gates>
<devices>
<device name="" package="GY-68">
<connects>
<connect gate="G$1" pin="GND" pad="P2"/>
<connect gate="G$1" pin="SCL" pad="P3"/>
<connect gate="G$1" pin="SDA" pad="P4"/>
<connect gate="G$1" pin="VIN" pad="P1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:38464357/3"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="BMX055" urn="urn:adsk.eagle:library:38466640">
<packages>
<package name="BMX055" urn="urn:adsk.eagle:footprint:38466641/1" library_version="2">
<wire x1="0" y1="-14" x2="0" y2="0" width="0.127" layer="21"/>
<wire x1="0" y1="0" x2="10" y2="0" width="0.127" layer="21"/>
<wire x1="10" y1="0" x2="10" y2="-14" width="0.127" layer="21"/>
<wire x1="10" y1="-14" x2="0" y2="-14" width="0.127" layer="21"/>
<pad name="GND" x="1.19" y="-4.46" drill="1.2" diameter="1.5" shape="square"/>
<pad name="SDA" x="1.19" y="-7" drill="1.2" diameter="1.5" shape="square"/>
<pad name="SCL" x="1.19" y="-9.53" drill="1.2" diameter="1.5" shape="square"/>
<pad name="VCC" x="8.81" y="-4.46" drill="1.2" diameter="1.5" shape="square"/>
<pad name="VCCIO" x="8.81" y="-7" drill="1.2" diameter="1.5" shape="square"/>
<pad name="3V3" x="8.81" y="-9.53" drill="1.2" diameter="1.5" shape="square"/>
<text x="0" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="0" y="-15.494" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="BMX055" urn="urn:adsk.eagle:package:38466643/2" type="model" library_version="2">
<packageinstances>
<packageinstance name="BMX055"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="BMX055" urn="urn:adsk.eagle:symbol:38466642/1" library_version="2">
<text x="-6.08" y="6.08" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="-12.7" y="2.54" length="middle" direction="pwr"/>
<pin name="VCC" x="15.24" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="SDA" x="-12.7" y="0" length="middle"/>
<pin name="VCCIO" x="15.24" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="SCL" x="-12.7" y="-2.54" length="middle"/>
<pin name="3V3" x="15.24" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<wire x1="-7.62" y1="5.08" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="10.16" y2="-5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="-5.08" x2="10.16" y2="5.08" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BMX055" urn="urn:adsk.eagle:component:38466644/2" prefix="BMX055" library_version="2">
<gates>
<gate name="G$1" symbol="BMX055" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="BMX055">
<connects>
<connect gate="G$1" pin="3V3" pad="3V3"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
<connect gate="G$1" pin="VCCIO" pad="VCCIO"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:38466643/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="microSD" urn="urn:adsk.eagle:library:40252279">
<packages>
<package name="DM3AT" urn="urn:adsk.eagle:footprint:40252280/1" library_version="2">
<smd name="VDD" x="0" y="6.4" dx="0.7" dy="1.9" layer="1"/>
<smd name="CMD" x="1.1" y="6.4" dx="0.7" dy="1.9" layer="1"/>
<smd name="CD/DAT3" x="2.2" y="6.4" dx="0.7" dy="1.9" layer="1"/>
<smd name="DAT2" x="3.3" y="6.4" dx="0.7" dy="1.9" layer="1"/>
<smd name="CLK" x="-1.1" y="6.4" dx="0.7" dy="1.9" layer="1"/>
<smd name="VSS" x="-2.2" y="6.4" dx="0.7" dy="1.9" layer="1"/>
<smd name="DAT0" x="-3.3" y="6.4" dx="0.7" dy="1.9" layer="1"/>
<smd name="DAT1" x="-4.4" y="6.4" dx="0.7" dy="1.9" layer="1"/>
<smd name="P$9" x="4.8" y="6.381" dx="1" dy="1.9" layer="1"/>
<smd name="DET_B" x="-5.5" y="6.4" dx="0.7" dy="1.9" layer="1"/>
<smd name="P$11" x="-6.7" y="1.7" dx="1.2" dy="1.2" layer="1"/>
<smd name="DET_A" x="-6.7" y="-4.5" dx="1.2" dy="0.8" layer="1"/>
<smd name="P$13" x="-7.081" y="-7.973" dx="1.2" dy="2.8" layer="1"/>
<smd name="P$14" x="7.054" y="-8.562" dx="1.9" dy="1.9" layer="1"/>
<wire x1="-6.7" y1="6" x2="-6.7" y2="-9" width="0.1524" layer="21"/>
<wire x1="-6.7" y1="-9" x2="5.7" y2="-9" width="0.1524" layer="21"/>
<wire x1="5.7" y1="-9" x2="7" y2="-7.1" width="0.1524" layer="21"/>
<wire x1="7" y1="-7.1" x2="7" y2="6" width="0.1524" layer="21"/>
<wire x1="7" y1="6" x2="-6.7" y2="6" width="0.1524" layer="21"/>
<text x="-4" y="-4" size="1.778" layer="25">&gt;NAME</text>
<text x="-4" y="-6" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-7.4" y1="2.4" x2="-6" y2="5.7" layer="41"/>
<rectangle x1="-7.4" y1="-2.6" x2="-6" y2="1" layer="41"/>
<rectangle x1="-5" y1="-1" x2="4" y2="1" layer="41"/>
<rectangle x1="-5.7" y1="-7.8" x2="-4.7" y2="-1" layer="41"/>
<rectangle x1="3.4" y1="-9.3" x2="5.6" y2="-7.9" layer="41"/>
</package>
</packages>
<packages3d>
<package3d name="DM3AT" urn="urn:adsk.eagle:package:40252282/2" type="model" library_version="2">
<packageinstances>
<packageinstance name="DM3AT"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MICROSD" urn="urn:adsk.eagle:symbol:40252281/1" library_version="2">
<pin name="DAT2" x="-5.08" y="10.16" visible="pin" length="middle"/>
<pin name="CD/DAT3" x="-5.08" y="7.62" visible="pin" length="middle"/>
<pin name="CMD" x="-5.08" y="5.08" visible="pin" length="middle"/>
<pin name="VDD" x="-5.08" y="2.54" visible="pin" length="middle"/>
<pin name="CLK" x="-5.08" y="0" visible="pin" length="middle"/>
<pin name="VSS" x="-5.08" y="-2.54" visible="pin" length="middle"/>
<pin name="DAT0" x="-5.08" y="-5.08" visible="pin" length="middle"/>
<pin name="DAT1" x="-5.08" y="-7.62" visible="pin" length="middle"/>
<pin name="DET_A" x="12.7" y="-10.16" visible="pin" length="middle" rot="R90"/>
<pin name="DET_B" x="15.24" y="-10.16" visible="pin" length="middle" rot="R90"/>
<wire x1="-2.54" y1="11.43" x2="-2.54" y2="-8.89" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-8.89" x2="20.32" y2="-8.89" width="0.1524" layer="94"/>
<wire x1="20.32" y1="-8.89" x2="20.32" y2="13.97" width="0.1524" layer="94"/>
<wire x1="20.32" y1="13.97" x2="7.62" y2="13.97" width="0.1524" layer="94"/>
<wire x1="7.62" y1="13.97" x2="2.54" y2="11.43" width="0.1524" layer="94"/>
<wire x1="2.54" y1="11.43" x2="-2.54" y2="11.43" width="0.1524" layer="94"/>
<text x="10.16" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<text x="10.16" y="8.89" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DM3AT" urn="urn:adsk.eagle:component:40252283/2" prefix="CN" library_version="2">
<gates>
<gate name="G$1" symbol="MICROSD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DM3AT">
<connects>
<connect gate="G$1" pin="CD/DAT3" pad="CD/DAT3"/>
<connect gate="G$1" pin="CLK" pad="CLK"/>
<connect gate="G$1" pin="CMD" pad="CMD"/>
<connect gate="G$1" pin="DAT0" pad="DAT0"/>
<connect gate="G$1" pin="DAT1" pad="DAT1"/>
<connect gate="G$1" pin="DAT2" pad="DAT2"/>
<connect gate="G$1" pin="DET_A" pad="DET_A"/>
<connect gate="G$1" pin="DET_B" pad="DET_B"/>
<connect gate="G$1" pin="VDD" pad="VDD"/>
<connect gate="G$1" pin="VSS" pad="VSS"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:40252282/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A4L-LOC" device=""/>
<part name="U$1" library="arduinonano device" deviceset="ARDUINONANO" device=""/>
<part name="BMP1" library="BMP180" library_urn="urn:adsk.eagle:library:38464354" deviceset="BMP180" device="" package3d_urn="urn:adsk.eagle:package:38464357/3"/>
<part name="BMX1" library="BMX055" library_urn="urn:adsk.eagle:library:38466640" deviceset="BMX055" device="" package3d_urn="urn:adsk.eagle:package:38466643/2"/>
<part name="CN1" library="microSD" library_urn="urn:adsk.eagle:library:40252279" deviceset="DM3AT" device="" package3d_urn="urn:adsk.eagle:package:40252282/2"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="-10.16" y="7.62" smashed="yes">
<attribute name="DRAWING_NAME" x="207.01" y="22.86" size="2.54" layer="94"/>
<attribute name="LAST_DATE_TIME" x="207.01" y="17.78" size="2.286" layer="94"/>
<attribute name="SHEET" x="220.345" y="12.7" size="2.54" layer="94"/>
</instance>
<instance part="U$1" gate="G$1" x="60.96" y="129.54" smashed="yes" rot="R270"/>
<instance part="BMP1" gate="G$1" x="119.38" y="132.08" smashed="yes">
<attribute name="NAME" x="114.3" y="137.16" size="1.27" layer="95"/>
<attribute name="VALUE" x="114.3" y="127" size="1.27" layer="96" align="top-left"/>
</instance>
<instance part="BMX1" gate="G$1" x="121.92" y="114.3" smashed="yes">
<attribute name="NAME" x="115.84" y="120.38" size="1.778" layer="95"/>
<attribute name="VALUE" x="114.3" y="106.68" size="1.778" layer="96"/>
</instance>
<instance part="CN1" gate="G$1" x="124.46" y="76.2" smashed="yes">
<attribute name="NAME" x="134.62" y="87.63" size="1.778" layer="95"/>
<attribute name="VALUE" x="134.62" y="85.09" size="1.778" layer="96"/>
</instance>
<instance part="GND1" gate="1" x="86.36" y="25.4" smashed="yes">
<attribute name="VALUE" x="83.82" y="22.86" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D18"/>
<wire x1="27.94" y1="88.9" x2="12.7" y2="88.9" width="0.1524" layer="91"/>
<wire x1="12.7" y1="88.9" x2="12.7" y2="134.62" width="0.1524" layer="91"/>
<wire x1="12.7" y1="134.62" x2="96.52" y2="134.62" width="0.1524" layer="91"/>
<pinref part="BMX1" gate="G$1" pin="SDA"/>
<wire x1="96.52" y1="134.62" x2="96.52" y2="129.54" width="0.1524" layer="91"/>
<wire x1="96.52" y1="128.27" x2="96.52" y2="114.3" width="0.1524" layer="91"/>
<wire x1="96.52" y1="114.3" x2="109.22" y2="114.3" width="0.1524" layer="91"/>
<pinref part="BMP1" gate="G$1" pin="SDA"/>
<wire x1="111.76" y1="128.27" x2="96.52" y2="128.27" width="0.1524" layer="91"/>
<wire x1="96.52" y1="128.27" x2="96.52" y2="129.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D19"/>
<wire x1="27.94" y1="83.82" x2="22.86" y2="83.82" width="0.1524" layer="91"/>
<wire x1="22.86" y1="83.82" x2="22.86" y2="137.16" width="0.1524" layer="91"/>
<pinref part="BMP1" gate="G$1" pin="SCL"/>
<wire x1="22.86" y1="137.16" x2="104.14" y2="137.16" width="0.1524" layer="91"/>
<wire x1="104.14" y1="137.16" x2="104.14" y2="130.81" width="0.1524" layer="91"/>
<wire x1="104.14" y1="130.81" x2="111.76" y2="130.81" width="0.1524" layer="91"/>
<pinref part="BMX1" gate="G$1" pin="SCL"/>
<wire x1="104.14" y1="130.81" x2="104.14" y2="111.76" width="0.1524" layer="91"/>
<wire x1="104.14" y1="111.76" x2="109.22" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="BMX1" gate="G$1" pin="GND"/>
<wire x1="86.36" y1="133.35" x2="86.36" y2="116.84" width="0.1524" layer="91"/>
<wire x1="109.22" y1="116.84" x2="86.36" y2="116.84" width="0.1524" layer="91"/>
<junction x="86.36" y="116.84"/>
<pinref part="BMP1" gate="G$1" pin="GND"/>
<wire x1="111.76" y1="133.35" x2="86.36" y2="133.35" width="0.1524" layer="91"/>
<wire x1="86.36" y1="116.84" x2="86.36" y2="68.58" width="0.1524" layer="91"/>
<wire x1="86.36" y1="68.58" x2="86.36" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND2"/>
<wire x1="86.36" y1="38.1" x2="86.36" y2="27.94" width="0.1524" layer="91"/>
<wire x1="63.5" y1="68.58" x2="86.36" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND1"/>
<wire x1="27.94" y1="58.42" x2="25.4" y2="58.42" width="0.1524" layer="91"/>
<wire x1="25.4" y1="58.42" x2="25.4" y2="38.1" width="0.1524" layer="91"/>
<wire x1="25.4" y1="38.1" x2="86.36" y2="38.1" width="0.1524" layer="91"/>
<junction x="86.36" y="38.1"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="CN1" gate="G$1" pin="CLK"/>
<wire x1="119.38" y1="76.2" x2="76.2" y2="76.2" width="0.1524" layer="91"/>
<wire x1="76.2" y1="76.2" x2="76.2" y2="142.24" width="0.1524" layer="91"/>
<wire x1="76.2" y1="142.24" x2="25.4" y2="142.24" width="0.1524" layer="91"/>
<wire x1="25.4" y1="142.24" x2="25.4" y2="124.46" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="D13"/>
<wire x1="25.4" y1="124.46" x2="27.94" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="CN1" gate="G$1" pin="DAT0"/>
<wire x1="119.38" y1="71.12" x2="71.12" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="D12"/>
<wire x1="71.12" y1="71.12" x2="71.12" y2="124.46" width="0.1524" layer="91"/>
<wire x1="71.12" y1="124.46" x2="63.5" y2="124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D11"/>
<wire x1="63.5" y1="119.38" x2="68.58" y2="119.38" width="0.1524" layer="91"/>
<wire x1="68.58" y1="119.38" x2="68.58" y2="81.28" width="0.1524" layer="91"/>
<pinref part="CN1" gate="G$1" pin="CMD"/>
<wire x1="68.58" y1="81.28" x2="119.38" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="CN1" gate="G$1" pin="CD/DAT3"/>
<wire x1="119.38" y1="83.82" x2="81.28" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="D10"/>
<wire x1="81.28" y1="83.82" x2="81.28" y2="114.3" width="0.1524" layer="91"/>
<wire x1="81.28" y1="114.3" x2="63.5" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="3V3"/>
<wire x1="27.94" y1="119.38" x2="20.32" y2="119.38" width="0.1524" layer="91"/>
<wire x1="20.32" y1="119.38" x2="20.32" y2="147.32" width="0.1524" layer="91"/>
<wire x1="20.32" y1="147.32" x2="111.76" y2="147.32" width="0.1524" layer="91"/>
<pinref part="BMP1" gate="G$1" pin="VIN"/>
<wire x1="111.76" y1="147.32" x2="111.76" y2="135.89" width="0.1524" layer="91"/>
<wire x1="111.76" y1="147.32" x2="152.4" y2="147.32" width="0.1524" layer="91"/>
<wire x1="152.4" y1="147.32" x2="152.4" y2="111.76" width="0.1524" layer="91"/>
<junction x="111.76" y="147.32"/>
<pinref part="BMX1" gate="G$1" pin="3V3"/>
<wire x1="152.4" y1="111.76" x2="137.16" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="5V"/>
<wire x1="27.94" y1="68.58" x2="25.4" y2="68.58" width="0.1524" layer="91"/>
<wire x1="22.86" y1="68.58" x2="25.4" y2="68.58" width="0.1524" layer="91"/>
<label x="22.86" y="68.58" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="BMX1" gate="G$1" pin="VCC"/>
<wire x1="137.16" y1="116.84" x2="139.7" y2="116.84" width="0.1524" layer="91"/>
<label x="139.7" y="116.84" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D0"/>
<wire x1="63.5" y1="58.42" x2="68.58" y2="58.42" width="0.1524" layer="91"/>
<label x="68.58" y="58.42" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="TX" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D1"/>
<wire x1="63.5" y1="53.34" x2="68.58" y2="53.34" width="0.1524" layer="91"/>
<label x="68.58" y="53.34" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="外部電源" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VIN"/>
<wire x1="27.94" y1="53.34" x2="22.86" y2="53.34" width="0.1524" layer="91"/>
<label x="22.86" y="53.34" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="PWM" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D5"/>
<wire x1="63.5" y1="88.9" x2="91.44" y2="88.9" width="0.1524" layer="91"/>
<label x="91.44" y="88.9" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
