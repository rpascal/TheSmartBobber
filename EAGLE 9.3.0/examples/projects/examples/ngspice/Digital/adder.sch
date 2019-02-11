<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.2.0">
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
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="no" active="yes"/>
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
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ngspice-digital" urn="urn:adsk.eagle:library:5271971">
<description>SPICE compatible library parts</description>
<packages>
</packages>
<symbols>
<symbol name="XOR" urn="urn:adsk.eagle:symbol:5271985/1" library_version="1">
<wire x1="-1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-6.35" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-6.35" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-1.2446" y1="-5.0678" x2="7.5439" y2="0.0507" width="0.4064" layer="94" curve="60.147761" cap="flat"/>
<wire x1="-1.2446" y1="5.0678" x2="7.5442" y2="-0.0505" width="0.4064" layer="94" curve="-60.148802" cap="flat"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-5.08" width="0.4064" layer="94" curve="-77.319617"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-5.08" width="0.4064" layer="94" curve="-77.319617" cap="flat"/>
<text x="-7.62" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-12.7" y="2.54" visible="pad" length="middle" swaplevel="1"/>
<pin name="B" x="-12.7" y="-2.54" visible="pad" length="middle" swaplevel="1"/>
<pin name="Y" x="12.7" y="0" visible="pad" length="middle" direction="out" rot="R180"/>
</symbol>
<symbol name="OR" urn="urn:adsk.eagle:symbol:5271986/1" library_version="1">
<wire x1="-1.27" y1="5.08" x2="-7.62" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="-7.62" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-6.35" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-6.35" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-1.2446" y1="-5.0678" x2="7.5439" y2="0.0507" width="0.4064" layer="94" curve="60.147761" cap="flat"/>
<wire x1="-1.2446" y1="5.0678" x2="7.5442" y2="-0.0505" width="0.4064" layer="94" curve="-60.148802" cap="flat"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-5.08" width="0.4064" layer="94" curve="-77.319617"/>
<text x="-7.62" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-12.7" y="2.54" visible="pad" length="middle" swaplevel="1"/>
<pin name="B" x="-12.7" y="-2.54" visible="pad" length="middle" swaplevel="1"/>
<pin name="Y" x="12.7" y="0" visible="pad" length="middle" direction="out" rot="R180"/>
</symbol>
<symbol name="AND" urn="urn:adsk.eagle:symbol:5271984/1" library_version="1">
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="-5.08" width="0.4064" layer="94" curve="-180"/>
<wire x1="2.54" y1="5.08" x2="-7.62" y2="5.08" width="0.4064" layer="94"/>
<text x="-7.62" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-12.7" y="2.54" visible="pad" length="middle" swaplevel="1"/>
<pin name="B" x="-12.7" y="-2.54" visible="pad" length="middle" swaplevel="1"/>
<pin name="Y" x="12.7" y="0" visible="pad" length="middle" direction="out" rot="R180"/>
</symbol>
<symbol name="DIGSRC8" urn="urn:adsk.eagle:symbol:5271978/1" library_version="1">
<description>digital source</description>
<wire x1="12.7" y1="10.16" x2="12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="-12.7" x2="-10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="-10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="10.16" x2="12.7" y2="10.16" width="0.254" layer="94"/>
<text x="-7.366" y="7.112" size="1.27" layer="94">001100..</text>
<text x="-10.16" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<pin name="OUT1" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="OUT2" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="OUT3" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="OUT4" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="OUT5" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="OUT6" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="OUT7" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="OUT8" x="17.78" y="-10.16" length="middle" rot="R180"/>
</symbol>
<symbol name="DIGSRC" urn="urn:adsk.eagle:symbol:5271993/1" library_version="1">
<description>digital source</description>
<pin name="OUT" x="12.7" y="0" length="middle" rot="R180"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="-12.7" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-2.54" x2="-12.7" y2="2.54" width="0.254" layer="94"/>
<wire x1="-12.7" y1="2.54" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<text x="-9.906" y="-0.508" size="1.27" layer="94">001100..</text>
<text x="-12.7" y="3.81" size="1.778" layer="95">&gt;NAME</text>
</symbol>
<symbol name="BUFFER" urn="urn:adsk.eagle:symbol:5271989/1" library_version="2">
<wire x1="-5.08" y1="5.08" x2="5.08" y2="0" width="0.4064" layer="94"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<text x="2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I" x="-10.16" y="0" visible="pad" length="middle"/>
<pin name="O" x="10.16" y="0" visible="pad" length="middle" direction="out" rot="R180"/>
</symbol>
<symbol name="DFF" urn="urn:adsk.eagle:symbol:5271980/1" library_version="1">
<pin name="D" x="-12.7" y="5.08" length="middle"/>
<pin name="CLK" x="-12.7" y="0" length="middle" function="clk"/>
<pin name="Q" x="12.7" y="5.08" length="middle" rot="R180"/>
<pin name="!Q" x="12.7" y="-5.08" length="middle" rot="R180"/>
<pin name="S" x="0" y="12.7" length="middle" rot="R270"/>
<pin name="R" x="0" y="-12.7" length="middle" rot="R90"/>
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<text x="-7.62" y="7.62" size="1.778" layer="95">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="XOR" urn="urn:adsk.eagle:component:5272007/1" prefix="X" library_version="1">
<description>2 input XOR gate</description>
<gates>
<gate name="G$1" symbol="XOR" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="X">
<pinmap gate="G$1" pin="A" pinorder="1"/>
<pinmap gate="G$1" pin="B" pinorder="2"/>
<pinmap gate="G$1" pin="Y" pinorder="3"/>
</pinmapping>
<model name="XOR2">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.SUBCKT XOR2 A B OUT
a1 [A B] OUT xor2
.model xor2 d_xor(rise_delay = 1n fall_delay = 1n)
.ENDS XOR2</model>
</spice>
</deviceset>
<deviceset name="OR" urn="urn:adsk.eagle:component:5272009/1" prefix="X" library_version="1">
<description>2 input logic OR gate</description>
<gates>
<gate name="G$1" symbol="OR" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="X">
<pinmap gate="G$1" pin="A" pinorder="1"/>
<pinmap gate="G$1" pin="B" pinorder="2"/>
<pinmap gate="G$1" pin="Y" pinorder="3"/>
</pinmapping>
<model name="OR2">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.SUBCKT OR2 A B OUT
a1 [A B] OUT or2
.model or2 d_or(rise_delay = 1n fall_delay = 1n)
.ENDS OR2</model>
</spice>
</deviceset>
<deviceset name="AND" urn="urn:adsk.eagle:component:5272012/1" prefix="X" library_version="1">
<description>2 input logic AND gate</description>
<gates>
<gate name="G$1" symbol="AND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="X">
<pinmap gate="G$1" pin="A" pinorder="1"/>
<pinmap gate="G$1" pin="B" pinorder="2"/>
<pinmap gate="G$1" pin="Y" pinorder="3"/>
</pinmapping>
<model name="AND2">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.SUBCKT AND2 A B OUT
a1 [A B] OUT and2
.model and2 d_and(rise_delay = 1n fall_delay = 1n)
.ENDS AND2</model>
</spice>
</deviceset>
<deviceset name="DIGSRC8" urn="urn:adsk.eagle:component:5272002/1" prefix="X" library_version="1">
<description>8 output digital (file) source</description>
<gates>
<gate name="G$1" symbol="DIGSRC8" x="5.08" y="7.62"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="X">
<pinmap gate="G$1" pin="OUT1" pinorder="1"/>
<pinmap gate="G$1" pin="OUT2" pinorder="2"/>
<pinmap gate="G$1" pin="OUT3" pinorder="3"/>
<pinmap gate="G$1" pin="OUT4" pinorder="4"/>
<pinmap gate="G$1" pin="OUT5" pinorder="5"/>
<pinmap gate="G$1" pin="OUT6" pinorder="6"/>
<pinmap gate="G$1" pin="OUT7" pinorder="7"/>
<pinmap gate="G$1" pin="OUT8" pinorder="8"/>
</pinmapping>
<model name="DRIVERD8">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.subckt driverd8 n1 n2 n3 n4 n5 n6 n7 n8
a_source [n1 n2 n3 n4 n5 n6 n7 n8] d_source8
.model d_source8 d_source (input_file="{EAGLE_DIGITAL_SOURCE_FILE}")
.ends driverd8</model>
</spice>
</deviceset>
<deviceset name="DIGSRC" urn="urn:adsk.eagle:component:5272015/1" prefix="X" library_version="1">
<description>1 output digital (file) source</description>
<gates>
<gate name="G$1" symbol="DIGSRC" x="2.54" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="X">
<pinmap gate="G$1" pin="OUT" pinorder="1"/>
</pinmapping>
<model name="DRIVERD1">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.subckt driverd1 n1
a_source [n1] d_source1
.model d_source1 d_source (input_file="{EAGLE_DIGITAL_SOURCE_FILE}")
.ends driverd1</model>
</spice>
</deviceset>
<deviceset name="DFF" urn="urn:adsk.eagle:component:5272004/1" prefix="X" library_version="1">
<description>D TYPE FLIP FLOP</description>
<gates>
<gate name="G$1" symbol="DFF" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="X">
<pinmap gate="G$1" pin="!Q" pinorder="6"/>
<pinmap gate="G$1" pin="CLK" pinorder="2"/>
<pinmap gate="G$1" pin="D" pinorder="1"/>
<pinmap gate="G$1" pin="Q" pinorder="5"/>
<pinmap gate="G$1" pin="R" pinorder="4"/>
<pinmap gate="G$1" pin="S" pinorder="3"/>
</pinmapping>
<model name="DFF1">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.SUBCKT DFF1 D CLK S R Q !Q
a1 D CLK S R Q !Q flop1
.model flop1 d_dff(clk_delay = 13.0e-9 set_delay = 25.0e-9
+ reset_delay = 27.0e-9 ic = 2 rise_delay = 10.0e-9
+ fall_delay = 3e-9)
.ENDS DFF1</model>
</spice>
</deviceset>
<deviceset name="BUFFER" urn="urn:adsk.eagle:component:5272097/1" prefix="X" library_version="2">
<description>buffer</description>
<gates>
<gate name="G$1" symbol="BUFFER" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="X">
<pinmap gate="G$1" pin="I" pinorder="1"/>
<pinmap gate="G$1" pin="O" pinorder="2"/>
</pinmapping>
<model name="BUFFER">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.SUBCKT BUFFER IN OUT
a1 IN OUT dbuf
.model dbuf d_buffer (rise_delay = 1e-9 fall_delay = 1e-9 input_load = 0.5e-12)
.ENDS BUFFER</model>
</spice>
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
<modules>
<module name="ADDER1BIT" prefix="" dx="30.48" dy="20.32">
<ports>
<port name="A" side="top" coord="-5.08" direction="io"/>
<port name="B" side="top" coord="5.08" direction="io"/>
<port name="CIN" side="right" coord="0" direction="io"/>
<port name="COUT" side="left" coord="0" direction="io"/>
<port name="S" side="bottom" coord="0" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
<part name="X1" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="XOR" device=""/>
<part name="X2" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="XOR" device=""/>
<part name="X3" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="OR" device=""/>
<part name="X4" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="AND" device=""/>
<part name="X5" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="AND" device=""/>
<part name="X6" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="BUFFER" device=""/>
<part name="X7" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="BUFFER" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="45.72" y="81.28" size="5.08" layer="97">1 bit adder with carry</text>
<frame x1="0" y1="0" x2="172.72" y2="104.14" columns="8" rows="5" layer="91"/>
</plain>
<instances>
<instance part="X1" gate="G$1" x="40.64" y="66.04">
<attribute name="NAME" x="33.02" y="71.755" size="1.778" layer="95"/>
<attribute name="VALUE" x="33.02" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="X2" gate="G$1" x="76.2" y="63.5">
<attribute name="NAME" x="68.58" y="69.215" size="1.778" layer="95"/>
<attribute name="VALUE" x="68.58" y="55.88" size="1.778" layer="96"/>
</instance>
<instance part="X3" gate="G$1" x="111.76" y="43.18">
<attribute name="NAME" x="104.14" y="48.895" size="1.778" layer="95"/>
<attribute name="VALUE" x="104.14" y="35.56" size="1.778" layer="96"/>
</instance>
<instance part="X4" gate="G$1" x="76.2" y="45.72">
<attribute name="NAME" x="68.58" y="51.435" size="1.778" layer="95"/>
<attribute name="VALUE" x="68.58" y="38.1" size="1.778" layer="96"/>
</instance>
<instance part="X5" gate="G$1" x="76.2" y="30.48">
<attribute name="NAME" x="68.58" y="36.195" size="1.778" layer="95"/>
<attribute name="VALUE" x="68.58" y="22.86" size="1.778" layer="96"/>
</instance>
<instance part="X6" gate="G$1" x="111.76" y="63.5">
<attribute name="NAME" x="114.3" y="66.04" size="1.778" layer="95"/>
<attribute name="VALUE" x="114.3" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="X7" gate="G$1" x="137.16" y="43.18">
<attribute name="NAME" x="139.7" y="45.72" size="1.778" layer="95"/>
<attribute name="VALUE" x="139.7" y="38.1" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="A" class="0">
<segment>
<wire x1="15.24" y1="68.58" x2="25.4" y2="68.58" width="0.1524" layer="91"/>
<label x="15.24" y="68.58" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="25.4" y1="68.58" x2="27.94" y2="68.58" width="0.1524" layer="91"/>
<wire x1="63.5" y1="33.02" x2="25.4" y2="33.02" width="0.1524" layer="91"/>
<wire x1="25.4" y1="33.02" x2="25.4" y2="68.58" width="0.1524" layer="91"/>
<junction x="25.4" y="68.58"/>
<pinref part="X5" gate="G$1" pin="A"/>
<pinref part="X1" gate="G$1" pin="A"/>
</segment>
</net>
<net name="B" class="0">
<segment>
<wire x1="27.94" y1="63.5" x2="22.86" y2="63.5" width="0.1524" layer="91"/>
<label x="15.24" y="63.5" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="22.86" y1="63.5" x2="15.24" y2="63.5" width="0.1524" layer="91"/>
<wire x1="63.5" y1="27.94" x2="22.86" y2="27.94" width="0.1524" layer="91"/>
<wire x1="22.86" y1="27.94" x2="22.86" y2="63.5" width="0.1524" layer="91"/>
<junction x="22.86" y="63.5"/>
<pinref part="X5" gate="G$1" pin="B"/>
<pinref part="X1" gate="G$1" pin="B"/>
</segment>
</net>
<net name="AXORB" class="0">
<segment>
<wire x1="53.34" y1="66.04" x2="60.96" y2="66.04" width="0.1524" layer="91"/>
<wire x1="60.96" y1="66.04" x2="63.5" y2="66.04" width="0.1524" layer="91"/>
<wire x1="63.5" y1="48.26" x2="60.96" y2="48.26" width="0.1524" layer="91"/>
<wire x1="60.96" y1="48.26" x2="60.96" y2="66.04" width="0.1524" layer="91"/>
<junction x="60.96" y="66.04"/>
<pinref part="X1" gate="G$1" pin="Y"/>
<pinref part="X4" gate="G$1" pin="A"/>
<pinref part="X2" gate="G$1" pin="A"/>
<label x="50.8" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="CIN" class="0">
<segment>
<label x="15.24" y="53.34" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="15.24" y1="53.34" x2="53.34" y2="53.34" width="0.1524" layer="91"/>
<wire x1="53.34" y1="53.34" x2="53.34" y2="60.96" width="0.1524" layer="91"/>
<wire x1="53.34" y1="60.96" x2="58.42" y2="60.96" width="0.1524" layer="91"/>
<wire x1="58.42" y1="60.96" x2="63.5" y2="60.96" width="0.1524" layer="91"/>
<wire x1="63.5" y1="43.18" x2="58.42" y2="43.18" width="0.1524" layer="91"/>
<wire x1="58.42" y1="43.18" x2="58.42" y2="60.96" width="0.1524" layer="91"/>
<junction x="58.42" y="60.96"/>
<pinref part="X4" gate="G$1" pin="B"/>
<pinref part="X2" gate="G$1" pin="B"/>
</segment>
</net>
<net name="AANDB" class="0">
<segment>
<wire x1="88.9" y1="30.48" x2="88.9" y2="40.64" width="0.1524" layer="91"/>
<wire x1="88.9" y1="40.64" x2="99.06" y2="40.64" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="Y"/>
<pinref part="X3" gate="G$1" pin="B"/>
<label x="99.06" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="AXBXC" class="0">
<segment>
<wire x1="99.06" y1="45.72" x2="88.9" y2="45.72" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="Y"/>
<pinref part="X3" gate="G$1" pin="A"/>
<label x="93.98" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="S" class="0">
<segment>
<label x="137.16" y="63.5" size="1.778" layer="95" xref="yes"/>
<pinref part="X6" gate="G$1" pin="O"/>
<wire x1="121.92" y1="63.5" x2="137.16" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="COUT" class="0">
<segment>
<label x="152.4" y="43.18" size="1.778" layer="95" xref="yes"/>
<pinref part="X7" gate="G$1" pin="O"/>
<wire x1="147.32" y1="43.18" x2="152.4" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="I"/>
<wire x1="88.9" y1="63.5" x2="101.6" y2="63.5" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="Y"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="Y"/>
<pinref part="X7" gate="G$1" pin="I"/>
<wire x1="127" y1="43.18" x2="124.46" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</module>
<module name="ADDER4BIT" prefix="" dx="30.48" dy="30.48">
<ports>
<port name="A0" side="left" coord="7.62" direction="io"/>
<port name="A1" side="left" coord="5.08" direction="io"/>
<port name="A2" side="left" coord="2.54" direction="io"/>
<port name="A3" side="left" coord="0" direction="io"/>
<port name="B0" side="left" coord="-2.54" direction="io"/>
<port name="B2" side="left" coord="-7.62" direction="io"/>
<port name="B1" side="left" coord="-5.08" direction="io"/>
<port name="B3" side="left" coord="-10.16" direction="io"/>
<port name="COUT" side="right" coord="10.16" direction="io"/>
<port name="S0" side="right" coord="5.08" direction="io"/>
<port name="S1" side="right" coord="2.54" direction="io"/>
<port name="S2" side="right" coord="0" direction="io"/>
<port name="S3" side="right" coord="-2.54" direction="io"/>
<port name="CO1" side="right" coord="-7.62" direction="io"/>
<port name="CO2" side="right" coord="-10.16" direction="io"/>
<port name="CO3" side="right" coord="-12.7" direction="io"/>
<port name="MODE" side="left" coord="10.16" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
<part name="X1" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="XOR" device=""/>
<part name="X2" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="XOR" device=""/>
<part name="X3" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="XOR" device=""/>
<part name="X4" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="XOR" device=""/>
<part name="X5" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="BUFFER" device=""/>
<part name="X6" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="BUFFER" device=""/>
<part name="X7" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="BUFFER" device=""/>
<part name="X8" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="BUFFER" device=""/>
<part name="X9" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="BUFFER" device=""/>
<part name="X10" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="BUFFER" device=""/>
<part name="X11" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="BUFFER" device=""/>
<part name="X12" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="BUFFER" device=""/>
<part name="X13" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="BUFFER" device=""/>
<part name="X14" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="BUFFER" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="144.78" y="149.86" size="5.08" layer="97" align="bottom-center">4 bit adder/subtractor with carry out
M=0: A3:A0 + B3:B0 = S3:S0 + COUT
M=1: A3:A0 - B3:B0 = S3:S0 + COUT
</text>
<frame x1="0" y1="0" x2="294.64" y2="198.12" columns="8" rows="5" layer="91"/>
</plain>
<moduleinsts>
<moduleinst name="ADD3" module="ADDER1BIT" x="119.38" y="68.58">
<attribute name="NAME" value="ADD3" x="119.38" y="71.12" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="ADD2" module="ADDER1BIT" x="170.18" y="68.58">
<attribute name="NAME" value="ADD2" x="170.18" y="71.12" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="ADD1" module="ADDER1BIT" x="218.44" y="68.58">
<attribute name="NAME" value="ADD1" x="218.44" y="71.12" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="ADD4" module="ADDER1BIT" x="68.58" y="68.58">
<attribute name="NAME" value="ADD4" x="68.58" y="71.12" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
</moduleinsts>
<instances>
<instance part="X1" gate="G$1" x="73.66" y="124.46" rot="R270">
<attribute name="NAME" x="79.375" y="132.08" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="66.04" y="132.08" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X2" gate="G$1" x="124.46" y="124.46" rot="R270">
<attribute name="NAME" x="130.175" y="132.08" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="116.84" y="132.08" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X3" gate="G$1" x="175.26" y="124.46" rot="R270">
<attribute name="NAME" x="180.975" y="132.08" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="167.64" y="132.08" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X4" gate="G$1" x="223.52" y="124.46" rot="R270">
<attribute name="NAME" x="229.235" y="132.08" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="215.9" y="132.08" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X5" gate="G$1" x="68.58" y="40.64" rot="R270">
<attribute name="NAME" x="71.12" y="38.1" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="63.5" y="38.1" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X6" gate="G$1" x="119.38" y="40.64" rot="R270">
<attribute name="NAME" x="121.92" y="38.1" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="114.3" y="38.1" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X7" gate="G$1" x="170.18" y="38.1" rot="R270">
<attribute name="NAME" x="172.72" y="35.56" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="165.1" y="35.56" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X8" gate="G$1" x="218.44" y="38.1" rot="R270">
<attribute name="NAME" x="220.98" y="35.56" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="213.36" y="35.56" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X9" gate="G$1" x="223.52" y="99.06" rot="R270">
<attribute name="NAME" x="226.06" y="96.52" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="218.44" y="96.52" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X10" gate="G$1" x="175.26" y="99.06" rot="R270">
<attribute name="NAME" x="177.8" y="96.52" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="170.18" y="96.52" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X11" gate="G$1" x="124.46" y="99.06" rot="R270">
<attribute name="NAME" x="127" y="96.52" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="119.38" y="96.52" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X12" gate="G$1" x="73.66" y="99.06" rot="R270">
<attribute name="NAME" x="76.2" y="96.52" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="68.58" y="96.52" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X13" gate="G$1" x="33.02" y="68.58" rot="R180">
<attribute name="NAME" x="30.48" y="66.04" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="30.48" y="73.66" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="X14" gate="G$1" x="256.54" y="68.58" rot="R180">
<attribute name="NAME" x="254" y="66.04" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="254" y="73.66" size="1.778" layer="96" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="CO3" class="0">
<segment>
<portref moduleinst="ADD4" port="CIN"/>
<portref moduleinst="ADD3" port="COUT"/>
<wire x1="88.9" y1="68.58" x2="99.06" y2="68.58" width="0.1524" layer="91"/>
<label x="91.44" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="CO2" class="0">
<segment>
<portref moduleinst="ADD3" port="CIN"/>
<portref moduleinst="ADD2" port="COUT"/>
<wire x1="139.7" y1="68.58" x2="149.86" y2="68.58" width="0.1524" layer="91"/>
<label x="142.24" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="CO1" class="0">
<segment>
<portref moduleinst="ADD2" port="CIN"/>
<portref moduleinst="ADD1" port="COUT"/>
<wire x1="190.5" y1="68.58" x2="198.12" y2="68.58" width="0.1524" layer="91"/>
<label x="193.04" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="A0" class="0">
<segment>
<portref moduleinst="ADD1" port="A"/>
<wire x1="213.36" y1="83.82" x2="213.36" y2="147.32" width="0.1524" layer="91"/>
<label x="213.36" y="147.32" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="A1" class="0">
<segment>
<portref moduleinst="ADD2" port="A"/>
<wire x1="165.1" y1="83.82" x2="165.1" y2="147.32" width="0.1524" layer="91"/>
<label x="165.1" y="147.32" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="A2" class="0">
<segment>
<portref moduleinst="ADD3" port="A"/>
<wire x1="114.3" y1="83.82" x2="114.3" y2="147.32" width="0.1524" layer="91"/>
<label x="114.3" y="147.32" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="A3" class="0">
<segment>
<portref moduleinst="ADD4" port="A"/>
<wire x1="63.5" y1="83.82" x2="63.5" y2="147.32" width="0.1524" layer="91"/>
<label x="63.5" y="147.32" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="_COUT" class="0">
<segment>
<portref moduleinst="ADD4" port="COUT"/>
<wire x1="48.26" y1="68.58" x2="43.18" y2="68.58" width="0.1524" layer="91"/>
<label x="43.18" y="73.66" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="X13" gate="G$1" pin="I"/>
</segment>
</net>
<net name="_MODE" class="0">
<segment>
<portref moduleinst="ADD1" port="CIN"/>
<wire x1="238.76" y1="68.58" x2="241.3" y2="68.58" width="0.1524" layer="91"/>
<wire x1="241.3" y1="68.58" x2="246.38" y2="68.58" width="0.1524" layer="91"/>
<wire x1="241.3" y1="68.58" x2="241.3" y2="144.78" width="0.1524" layer="91"/>
<wire x1="241.3" y1="144.78" x2="226.06" y2="144.78" width="0.1524" layer="91"/>
<junction x="241.3" y="68.58"/>
<pinref part="X1" gate="G$1" pin="A"/>
<wire x1="226.06" y1="144.78" x2="177.8" y2="144.78" width="0.1524" layer="91"/>
<wire x1="177.8" y1="144.78" x2="127" y2="144.78" width="0.1524" layer="91"/>
<wire x1="127" y1="144.78" x2="76.2" y2="144.78" width="0.1524" layer="91"/>
<wire x1="76.2" y1="137.16" x2="76.2" y2="144.78" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="A"/>
<wire x1="127" y1="137.16" x2="127" y2="144.78" width="0.1524" layer="91"/>
<junction x="127" y="144.78"/>
<pinref part="X3" gate="G$1" pin="A"/>
<wire x1="177.8" y1="137.16" x2="177.8" y2="144.78" width="0.1524" layer="91"/>
<junction x="177.8" y="144.78"/>
<pinref part="X4" gate="G$1" pin="A"/>
<wire x1="226.06" y1="137.16" x2="226.06" y2="144.78" width="0.1524" layer="91"/>
<junction x="226.06" y="144.78"/>
<label x="243.84" y="81.28" size="1.778" layer="95" xref="yes"/>
<pinref part="X14" gate="G$1" pin="O"/>
</segment>
</net>
<net name="B3_XOR" class="0">
<segment>
<portref moduleinst="ADD4" port="B"/>
<label x="73.66" y="86.36" size="1.778" layer="95"/>
<pinref part="X12" gate="G$1" pin="O"/>
<wire x1="73.66" y1="88.9" x2="73.66" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B3" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="B"/>
<wire x1="71.12" y1="137.16" x2="71.12" y2="147.32" width="0.1524" layer="91"/>
<label x="71.12" y="147.32" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="B2_XOR" class="0">
<segment>
<portref moduleinst="ADD3" port="B"/>
<wire x1="124.46" y1="83.82" x2="124.46" y2="88.9" width="0.1524" layer="91"/>
<label x="124.46" y="86.36" size="1.778" layer="95"/>
<pinref part="X11" gate="G$1" pin="O"/>
</segment>
</net>
<net name="B0_XOR" class="0">
<segment>
<portref moduleinst="ADD1" port="B"/>
<label x="223.52" y="86.36" size="1.778" layer="95"/>
<pinref part="X9" gate="G$1" pin="O"/>
<wire x1="223.52" y1="88.9" x2="223.52" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B1_XOR" class="0">
<segment>
<portref moduleinst="ADD2" port="B"/>
<label x="175.26" y="86.36" size="1.778" layer="95"/>
<pinref part="X10" gate="G$1" pin="O"/>
<wire x1="175.26" y1="88.9" x2="175.26" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B2" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="B"/>
<wire x1="121.92" y1="137.16" x2="121.92" y2="147.32" width="0.1524" layer="91"/>
<label x="121.92" y="147.32" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="B1" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="B"/>
<wire x1="172.72" y1="137.16" x2="172.72" y2="147.32" width="0.1524" layer="91"/>
<label x="172.72" y="147.32" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="B0" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="B"/>
<wire x1="220.98" y1="137.16" x2="220.98" y2="147.32" width="0.1524" layer="91"/>
<label x="220.98" y="147.32" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<portref moduleinst="ADD4" port="S"/>
<pinref part="X5" gate="G$1" pin="I"/>
<wire x1="68.58" y1="50.8" x2="68.58" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<portref moduleinst="ADD3" port="S"/>
<pinref part="X6" gate="G$1" pin="I"/>
<wire x1="119.38" y1="50.8" x2="119.38" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<portref moduleinst="ADD2" port="S"/>
<pinref part="X7" gate="G$1" pin="I"/>
<wire x1="170.18" y1="48.26" x2="170.18" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<portref moduleinst="ADD1" port="S"/>
<pinref part="X8" gate="G$1" pin="I"/>
<wire x1="218.44" y1="48.26" x2="218.44" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="S0" class="0">
<segment>
<pinref part="X8" gate="G$1" pin="O"/>
<wire x1="218.44" y1="27.94" x2="218.44" y2="20.32" width="0.1524" layer="91"/>
<label x="218.44" y="20.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="S1" class="0">
<segment>
<pinref part="X7" gate="G$1" pin="O"/>
<wire x1="170.18" y1="27.94" x2="170.18" y2="22.86" width="0.1524" layer="91"/>
<label x="170.18" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="S2" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="O"/>
<wire x1="119.38" y1="30.48" x2="119.38" y2="22.86" width="0.1524" layer="91"/>
<label x="119.38" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="S3" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="O"/>
<wire x1="68.58" y1="30.48" x2="68.58" y2="25.4" width="0.1524" layer="91"/>
<wire x1="68.58" y1="25.4" x2="68.58" y2="22.86" width="0.1524" layer="91"/>
<label x="68.58" y="22.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="Y"/>
<pinref part="X9" gate="G$1" pin="I"/>
<wire x1="223.52" y1="109.22" x2="223.52" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X10" gate="G$1" pin="I"/>
<pinref part="X3" gate="G$1" pin="Y"/>
<wire x1="175.26" y1="111.76" x2="175.26" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="Y"/>
<pinref part="X11" gate="G$1" pin="I"/>
<wire x1="124.46" y1="109.22" x2="124.46" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="Y"/>
<wire x1="73.66" y1="111.76" x2="73.66" y2="109.22" width="0.1524" layer="91"/>
<pinref part="X12" gate="G$1" pin="I"/>
</segment>
</net>
<net name="COUT" class="0">
<segment>
<pinref part="X13" gate="G$1" pin="O"/>
<wire x1="22.86" y1="68.58" x2="17.78" y2="68.58" width="0.1524" layer="91"/>
<label x="17.78" y="68.58" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="MODE" class="0">
<segment>
<pinref part="X14" gate="G$1" pin="I"/>
<wire x1="266.7" y1="68.58" x2="271.78" y2="68.58" width="0.1524" layer="91"/>
<label x="271.78" y="68.58" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</module>
</modules>
<parts>
<part name="X_SRC" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="DIGSRC8" device="">
<spice>
<pinmapping isusermap="yes" isdevicewide="no" spiceprefix="X">
<pinmap gate="G$1" pin="OUT1" pinorder="1"/>
<pinmap gate="G$1" pin="OUT2" pinorder="2"/>
<pinmap gate="G$1" pin="OUT3" pinorder="3"/>
<pinmap gate="G$1" pin="OUT4" pinorder="4"/>
<pinmap gate="G$1" pin="OUT5" pinorder="5"/>
<pinmap gate="G$1" pin="OUT6" pinorder="6"/>
<pinmap gate="G$1" pin="OUT7" pinorder="7"/>
<pinmap gate="G$1" pin="OUT8" pinorder="8"/>
</pinmapping>
</spice>
<attribute name="EAGLE_DIGITAL_SOURCE_FILE" value="driverd8_1.dsource.txt"/>
<attribute name="SPICEMODEL" value="DRIVERD8_1"/>
<attribute name="SPICEPREFIX" value="X"/>
</part>
<part name="X_CIN" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="DIGSRC" device="">
<spice>
<pinmapping isusermap="yes" isdevicewide="no" spiceprefix="X">
<pinmap gate="G$1" pin="OUT" pinorder="1"/>
</pinmapping>
</spice>
<attribute name="EAGLE_DIGITAL_SOURCE_FILE" value="driverd1_1.dsource.txt"/>
<attribute name="SPICEMODEL" value="DRIVERD1_1"/>
<attribute name="SPICEPREFIX" value="X"/>
</part>
</parts>
<sheets>
<sheet>
<plain>
<text x="21.59" y="108.712" size="5.08" layer="97">4 bit binary adder/subtractor test circuit 
with input stimulus from ring counter and dig src</text>
<frame x1="2.54" y1="17.78" x2="193.04" y2="152.4" columns="8" rows="5" layer="91"/>
</plain>
<moduleinsts>
<moduleinst name="ADD4" module="ADDER4BIT" x="124.46" y="71.12">
<attribute name="NAME" value="ADD4" x="124.46" y="73.66" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
</moduleinsts>
<instances>
<instance part="X_SRC" gate="G$1" x="53.34" y="71.12">
<attribute name="NAME" x="35.56" y="73.914" size="1.778" layer="95"/>
<attribute name="EAGLE_DIGITAL_SOURCE_FILE" x="53.34" y="71.12" size="1.778" layer="96" display="off"/>
</instance>
<instance part="X_CIN" gate="G$1" x="55.88" y="86.36">
<attribute name="NAME" x="43.434" y="89.408" size="1.778" layer="95"/>
<attribute name="EAGLE_DIGITAL_SOURCE_FILE" x="55.88" y="86.36" size="1.778" layer="96" display="off"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="A0" class="0">
<segment>
<pinref part="X_SRC" gate="G$1" pin="OUT1"/>
<portref moduleinst="ADD4" port="A0"/>
<wire x1="71.12" y1="78.74" x2="101.6" y2="78.74" width="0.1524" layer="91"/>
<label x="88.9" y="78.74" size="2.032" layer="95"/>
<probe x="97.79" y="79.248" size="1.016" layer="89" probetype="3"/>
<wire x1="101.6" y1="78.74" x2="104.14" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A1" class="0">
<segment>
<pinref part="X_SRC" gate="G$1" pin="OUT2"/>
<portref moduleinst="ADD4" port="A1"/>
<wire x1="71.12" y1="76.2" x2="99.06" y2="76.2" width="0.1524" layer="91"/>
<label x="88.9" y="76.2" size="2.032" layer="95"/>
<probe x="98.298" y="76.962" size="1.016" layer="89" probetype="3"/>
<wire x1="99.06" y1="76.2" x2="104.14" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A2" class="0">
<segment>
<pinref part="X_SRC" gate="G$1" pin="OUT3"/>
<portref moduleinst="ADD4" port="A2"/>
<wire x1="71.12" y1="73.66" x2="96.52" y2="73.66" width="0.1524" layer="91"/>
<label x="88.9" y="73.66" size="2.032" layer="95"/>
<probe x="98.298" y="74.422" size="1.016" layer="89" probetype="3"/>
<wire x1="96.52" y1="73.66" x2="104.14" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A3" class="0">
<segment>
<pinref part="X_SRC" gate="G$1" pin="OUT4"/>
<portref moduleinst="ADD4" port="A3"/>
<wire x1="71.12" y1="71.12" x2="91.44" y2="71.12" width="0.1524" layer="91"/>
<label x="88.9" y="71.12" size="2.032" layer="95"/>
<probe x="98.552" y="71.628" size="1.016" layer="89" probetype="3"/>
<wire x1="91.44" y1="71.12" x2="104.14" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="S0" class="0">
<segment>
<portref moduleinst="ADD4" port="S0"/>
<wire x1="144.78" y1="76.2" x2="167.64" y2="76.2" width="0.1524" layer="91"/>
<label x="149.86" y="76.2" size="2.032" layer="95"/>
<probe x="159.512" y="79.756" size="1.016" layer="89" probetype="3"/>
</segment>
</net>
<net name="S1" class="0">
<segment>
<portref moduleinst="ADD4" port="S1"/>
<wire x1="144.78" y1="73.66" x2="167.64" y2="73.66" width="0.1524" layer="91"/>
<label x="149.86" y="73.66" size="2.032" layer="95"/>
<probe x="159.766" y="77.978" size="1.016" layer="89" probetype="3"/>
</segment>
</net>
<net name="S2" class="0">
<segment>
<portref moduleinst="ADD4" port="S2"/>
<wire x1="144.78" y1="71.12" x2="167.64" y2="71.12" width="0.1524" layer="91"/>
<label x="149.86" y="71.12" size="2.032" layer="95"/>
<probe x="159.512" y="65.024" size="1.016" layer="89" probetype="3"/>
</segment>
</net>
<net name="S3" class="0">
<segment>
<portref moduleinst="ADD4" port="S3"/>
<wire x1="144.78" y1="68.58" x2="167.64" y2="68.58" width="0.1524" layer="91"/>
<label x="149.86" y="68.58" size="2.032" layer="95"/>
<probe x="159.512" y="62.738" size="1.016" layer="89" probetype="3"/>
</segment>
</net>
<net name="MD" class="0">
<segment>
<wire x1="104.14" y1="81.28" x2="88.9" y2="81.28" width="0.1524" layer="91"/>
<wire x1="88.9" y1="81.28" x2="88.9" y2="86.36" width="0.1524" layer="91"/>
<wire x1="88.9" y1="86.36" x2="68.58" y2="86.36" width="0.1524" layer="91"/>
<label x="91.44" y="86.36" size="2.032" layer="95"/>
<pinref part="X_CIN" gate="G$1" pin="OUT"/>
<probe x="101.6" y="91.44" size="2.032" layer="89" probetype="3"/>
<portref moduleinst="ADD4" port="MODE"/>
</segment>
</net>
<net name="COUT" class="0">
<segment>
<wire x1="144.78" y1="81.28" x2="167.64" y2="81.28" width="0.1524" layer="91"/>
<portref moduleinst="ADD4" port="COUT"/>
<label x="147.32" y="81.28" size="2.032" layer="95"/>
<probe x="162.56" y="86.36" size="1.016" layer="89" probetype="3"/>
</segment>
</net>
<net name="C1" class="0">
<segment>
<portref moduleinst="ADD4" port="CO1"/>
<wire x1="144.78" y1="63.5" x2="152.4" y2="63.5" width="0.1524" layer="91"/>
<label x="149.86" y="63.5" size="1.778" layer="95"/>
<probe x="157.48" y="58.42" size="1.778" layer="89" probetype="3"/>
</segment>
</net>
<net name="C2" class="0">
<segment>
<portref moduleinst="ADD4" port="CO2"/>
<wire x1="144.78" y1="60.96" x2="152.4" y2="60.96" width="0.1524" layer="91"/>
<label x="149.86" y="60.96" size="1.778" layer="95"/>
<probe x="157.48" y="55.88" size="1.778" layer="89" probetype="3"/>
</segment>
</net>
<net name="C3" class="0">
<segment>
<portref moduleinst="ADD4" port="CO3"/>
<wire x1="144.78" y1="58.42" x2="152.4" y2="58.42" width="0.1524" layer="91"/>
<label x="149.86" y="58.42" size="1.778" layer="95"/>
<probe x="157.48" y="53.34" size="1.778" layer="89" probetype="3"/>
</segment>
</net>
<net name="B0" class="0">
<segment>
<pinref part="X_SRC" gate="G$1" pin="OUT5"/>
<portref moduleinst="ADD4" port="B0"/>
<wire x1="71.12" y1="68.58" x2="104.14" y2="68.58" width="0.1524" layer="91"/>
<label x="73.66" y="68.58" size="1.778" layer="95"/>
<probe x="83.312" y="69.596" size="1.016" layer="89" probetype="3"/>
</segment>
</net>
<net name="B1" class="0">
<segment>
<pinref part="X_SRC" gate="G$1" pin="OUT6"/>
<portref moduleinst="ADD4" port="B1"/>
<wire x1="71.12" y1="66.04" x2="104.14" y2="66.04" width="0.1524" layer="91"/>
<label x="73.66" y="66.04" size="1.778" layer="95"/>
<probe x="83.312" y="67.056" size="1.016" layer="89" probetype="3"/>
</segment>
</net>
<net name="B2" class="0">
<segment>
<pinref part="X_SRC" gate="G$1" pin="OUT7"/>
<portref moduleinst="ADD4" port="B2"/>
<wire x1="71.12" y1="63.5" x2="104.14" y2="63.5" width="0.1524" layer="91"/>
<label x="73.66" y="63.5" size="1.778" layer="95"/>
<probe x="83.312" y="64.77" size="1.016" layer="89" probetype="3"/>
</segment>
</net>
<net name="B3" class="0">
<segment>
<pinref part="X_SRC" gate="G$1" pin="OUT8"/>
<portref moduleinst="ADD4" port="B3"/>
<wire x1="71.12" y1="60.96" x2="104.14" y2="60.96" width="0.1524" layer="91"/>
<label x="73.66" y="60.96" size="1.778" layer="95"/>
<probe x="83.312" y="61.722" size="1.016" layer="89" probetype="3"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
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
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>
