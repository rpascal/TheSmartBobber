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
<symbol name="XOR" urn="urn:adsk.eagle:symbol:5271985/1" library_version="2">
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
<symbol name="OR" urn="urn:adsk.eagle:symbol:5271986/1" library_version="2">
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
<symbol name="AND" urn="urn:adsk.eagle:symbol:5271984/1" library_version="2">
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
<symbol name="DIGSRC" urn="urn:adsk.eagle:symbol:5271993/1" library_version="2">
<description>digital source</description>
<pin name="OUT" x="12.7" y="0" length="middle" rot="R180"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="-12.7" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-2.54" x2="-12.7" y2="2.54" width="0.254" layer="94"/>
<wire x1="-12.7" y1="2.54" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<text x="-9.906" y="-0.508" size="1.27" layer="94">001100..</text>
<text x="-12.7" y="3.81" size="1.778" layer="95">&gt;NAME</text>
</symbol>
<symbol name="ATODB" urn="urn:adsk.eagle:symbol:5271994/1" library_version="2">
<description>Analog to Digital Bridge</description>
<pin name="DIG" x="2.54" y="0" visible="off" length="short" rot="R180"/>
<pin name="AN" x="-5.08" y="0" visible="off" length="short"/>
<text x="0.762" y="1.27" size="1.016" layer="94" rot="MR0">D</text>
<text x="-2.032" y="1.27" size="1.016" layer="94" rot="MR0">A</text>
<wire x1="-2.54" y1="0" x2="-3.048" y2="0.508" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-3.048" y2="-0.508" width="0.254" layer="94"/>
<wire x1="1.524" y1="0" x2="1.016" y2="0.508" width="0.254" layer="94"/>
<wire x1="1.524" y1="0" x2="1.016" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-1.778" y1="1.778" x2="-0.508" y2="1.778" width="0.254" layer="94"/>
<wire x1="-0.508" y1="1.778" x2="-0.762" y2="2.032" width="0.254" layer="94"/>
<wire x1="-0.508" y1="1.778" x2="-0.762" y2="1.524" width="0.254" layer="94"/>
<circle x="-1.27" y="0" radius="1.04726875" width="0.254" layer="94"/>
</symbol>
<symbol name="JKFF" urn="urn:adsk.eagle:symbol:5271981/1" library_version="2">
<description>JK Flip flop</description>
<pin name="J" x="-12.7" y="7.62" length="middle"/>
<pin name="K" x="-12.7" y="-7.62" length="middle"/>
<pin name="CLK" x="-12.7" y="0" length="middle" function="clk"/>
<pin name="Q" x="12.7" y="7.62" length="middle" rot="R180"/>
<pin name="!Q" x="12.7" y="-7.62" length="middle" rot="R180"/>
<pin name="SET" x="0" y="15.24" length="middle" rot="R270"/>
<pin name="RST" x="0" y="-15.24" length="middle" rot="R90"/>
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<text x="2.54" y="11.43" size="1.778" layer="95">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="XOR" urn="urn:adsk.eagle:component:5272007/1" prefix="X" library_version="2">
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
<deviceset name="OR" urn="urn:adsk.eagle:component:5272009/1" prefix="X" library_version="2">
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
<deviceset name="AND" urn="urn:adsk.eagle:component:5272012/1" prefix="X" library_version="2">
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
<deviceset name="DIGSRC" urn="urn:adsk.eagle:component:5272015/1" prefix="X" library_version="2">
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
<deviceset name="ATODB" urn="urn:adsk.eagle:component:5272016/1" prefix="X" library_version="2">
<description>Analog to digital bridge</description>
<gates>
<gate name="G$1" symbol="ATODB" x="0" y="0"/>
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
<pinmap gate="G$1" pin="AN" pinorder="1"/>
<pinmap gate="G$1" pin="DIG" pinorder="2"/>
</pinmapping>
<model name="ATODB">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.SUBCKT ATODB A D
abridge [A] [D] adc_buff
.model adc_buff adc_bridge(in_low = 0.3 in_high = 2.5)
.ENDS ATODB</model>
</spice>
</deviceset>
<deviceset name="JKFF" urn="urn:adsk.eagle:component:5272005/1" prefix="X" library_version="2">
<description>JK TYPE FLIP FLOP</description>
<gates>
<gate name="G$1" symbol="JKFF" x="0" y="0"/>
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
<pinmap gate="G$1" pin="!Q" pinorder="7"/>
<pinmap gate="G$1" pin="CLK" pinorder="3"/>
<pinmap gate="G$1" pin="J" pinorder="1"/>
<pinmap gate="G$1" pin="K" pinorder="2"/>
<pinmap gate="G$1" pin="Q" pinorder="6"/>
<pinmap gate="G$1" pin="RST" pinorder="5"/>
<pinmap gate="G$1" pin="SET" pinorder="4"/>
</pinmapping>
<model name="JKFF">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.SUBCKT JKFF J K CLK S R Q NQ
a1 J K CLK S R Q NQ jkff
.model jkff d_jkff(clk_delay = 13.0e-9 set_delay = 25.0e-9
+ reset_delay = 27.0e-9 ic = 2 rise_delay = 10.0e-9
+ fall_delay = 3e-9)
.ENDS JKFF</model>
</spice>
</deviceset>
</devicesets>
</library>
<library name="ngspice-simulation" urn="urn:adsk.eagle:library:527439">
<description>SPICE compatible library parts</description>
<packages>
</packages>
<symbols>
<symbol name="0" urn="urn:adsk.eagle:symbol:527455/1" library_version="16">
<description>Simulation ground symbol (spice node 0)</description>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<pin name="0" x="0" y="0" visible="off" length="point" direction="sup"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:527478/1" prefix="X_" library_version="16">
<description>Simulation ground symbol (spice node 0)</description>
<gates>
<gate name="G$1" symbol="0" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="SPICEGROUND" value=""/>
<attribute name="_EXTERNAL_" value=""/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ngspice-simulation" urn="urn:adsk.eagle:library:5272020">
<description>SPICE compatible library parts</description>
<packages>
</packages>
<symbols>
<symbol name="VOLTAGE" urn="urn:adsk.eagle:symbol:5272021/1" library_version="1">
<description>Independent Voltage Source, either DC, AC, PULSE, SINE, PWL, EXP, or SFFM</description>
<circle x="0" y="0" radius="5.08" width="0.1524" layer="94"/>
<pin name="+" x="0" y="7.62" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="-" x="0" y="-7.62" visible="off" length="short" direction="pas" rot="R90"/>
<text x="7.62" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="7.62" y="0" size="1.778" layer="96">&gt;VALUE</text>
<text x="7.62" y="-2.54" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="7.62" y="-5.08" size="1.778" layer="97">&gt;SPICEEXTRA</text>
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VOLTAGE" urn="urn:adsk.eagle:component:5272042/1" prefix="V" uservalue="yes" library_version="1">
<description>Independent Voltage Source, either DC, AC, PULSE, SINE, PWL, EXP, or SFFM</description>
<gates>
<gate name="G$1" symbol="VOLTAGE" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="VALUE" value="0V" constant="no"/>
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="V">
<pinmap gate="G$1" pin="+" pinorder="1"/>
<pinmap gate="G$1" pin="-" pinorder="2"/>
</pinmapping>
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
<port name="A" side="top" coord="-5.08" direction="in"/>
<port name="B" side="top" coord="5.08" direction="in"/>
<port name="CIN" side="right" coord="0" direction="in"/>
<port name="COUT" side="left" coord="0" direction="out"/>
<port name="S" side="bottom" coord="0" direction="out"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
<part name="X1" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="XOR" device=""/>
<part name="X2" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="XOR" device=""/>
<part name="X3" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="OR" device=""/>
<part name="X4" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="AND" device=""/>
<part name="X5" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="AND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="53.34" y="81.28" size="5.08" layer="97">1 bit adder with carry</text>
<frame x1="0" y1="0" x2="172.72" y2="104.14" columns="8" rows="5" layer="91"/>
</plain>
<instances>
<instance part="X1" gate="G$1" x="48.26" y="66.04">
<attribute name="NAME" x="40.64" y="71.755" size="1.778" layer="95"/>
<attribute name="VALUE" x="40.64" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="X2" gate="G$1" x="96.52" y="63.5">
<attribute name="NAME" x="88.9" y="69.215" size="1.778" layer="95"/>
<attribute name="VALUE" x="88.9" y="55.88" size="1.778" layer="96"/>
</instance>
<instance part="X3" gate="G$1" x="127" y="43.18">
<attribute name="NAME" x="119.38" y="48.895" size="1.778" layer="95"/>
<attribute name="VALUE" x="119.38" y="35.56" size="1.778" layer="96"/>
</instance>
<instance part="X4" gate="G$1" x="91.44" y="45.72">
<attribute name="NAME" x="83.82" y="51.435" size="1.778" layer="95"/>
<attribute name="VALUE" x="83.82" y="38.1" size="1.778" layer="96"/>
</instance>
<instance part="X5" gate="G$1" x="81.28" y="30.48">
<attribute name="NAME" x="73.66" y="36.195" size="1.778" layer="95"/>
<attribute name="VALUE" x="73.66" y="22.86" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="A" class="0">
<segment>
<wire x1="22.86" y1="68.58" x2="33.02" y2="68.58" width="0.1524" layer="91"/>
<label x="22.86" y="68.58" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="33.02" y1="68.58" x2="35.56" y2="68.58" width="0.1524" layer="91"/>
<wire x1="68.58" y1="33.02" x2="33.02" y2="33.02" width="0.1524" layer="91"/>
<wire x1="33.02" y1="33.02" x2="33.02" y2="68.58" width="0.1524" layer="91"/>
<junction x="33.02" y="68.58"/>
<pinref part="X5" gate="G$1" pin="A"/>
<pinref part="X1" gate="G$1" pin="A"/>
</segment>
</net>
<net name="B" class="0">
<segment>
<wire x1="35.56" y1="63.5" x2="30.48" y2="63.5" width="0.1524" layer="91"/>
<label x="22.86" y="63.5" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="30.48" y1="63.5" x2="22.86" y2="63.5" width="0.1524" layer="91"/>
<wire x1="68.58" y1="27.94" x2="30.48" y2="27.94" width="0.1524" layer="91"/>
<wire x1="30.48" y1="27.94" x2="30.48" y2="63.5" width="0.1524" layer="91"/>
<junction x="30.48" y="63.5"/>
<pinref part="X5" gate="G$1" pin="B"/>
<pinref part="X1" gate="G$1" pin="B"/>
</segment>
</net>
<net name="AXORB" class="0">
<segment>
<wire x1="60.96" y1="66.04" x2="73.66" y2="66.04" width="0.1524" layer="91"/>
<wire x1="73.66" y1="66.04" x2="83.82" y2="66.04" width="0.1524" layer="91"/>
<wire x1="78.74" y1="48.26" x2="73.66" y2="48.26" width="0.1524" layer="91"/>
<wire x1="73.66" y1="48.26" x2="73.66" y2="66.04" width="0.1524" layer="91"/>
<junction x="73.66" y="66.04"/>
<pinref part="X1" gate="G$1" pin="Y"/>
<pinref part="X4" gate="G$1" pin="A"/>
<pinref part="X2" gate="G$1" pin="A"/>
<label x="73.66" y="58.42" size="1.016" layer="95"/>
</segment>
</net>
<net name="CIN" class="0">
<segment>
<label x="22.86" y="53.34" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="22.86" y1="53.34" x2="66.04" y2="53.34" width="0.1524" layer="91"/>
<wire x1="66.04" y1="53.34" x2="66.04" y2="60.96" width="0.1524" layer="91"/>
<wire x1="66.04" y1="60.96" x2="83.82" y2="60.96" width="0.1524" layer="91"/>
<wire x1="78.74" y1="43.18" x2="66.04" y2="43.18" width="0.1524" layer="91"/>
<wire x1="66.04" y1="43.18" x2="66.04" y2="53.34" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="B"/>
<pinref part="X2" gate="G$1" pin="B"/>
<junction x="66.04" y="53.34"/>
</segment>
</net>
<net name="AANDB" class="0">
<segment>
<wire x1="93.98" y1="30.48" x2="106.68" y2="30.48" width="0.1524" layer="91"/>
<wire x1="106.68" y1="30.48" x2="106.68" y2="40.64" width="0.1524" layer="91"/>
<wire x1="106.68" y1="40.64" x2="114.3" y2="40.64" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="Y"/>
<pinref part="X3" gate="G$1" pin="B"/>
<label x="109.22" y="40.64" size="1.016" layer="95"/>
</segment>
</net>
<net name="AXORBANDCIN" class="0">
<segment>
<wire x1="114.3" y1="45.72" x2="104.14" y2="45.72" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="Y"/>
<pinref part="X3" gate="G$1" pin="A"/>
<label x="109.22" y="45.72" size="1.016" layer="95"/>
</segment>
</net>
<net name="S" class="0">
<segment>
<wire x1="109.22" y1="63.5" x2="144.78" y2="63.5" width="0.1524" layer="91"/>
<label x="144.78" y="63.5" size="1.778" layer="95" xref="yes"/>
<pinref part="X2" gate="G$1" pin="Y"/>
</segment>
</net>
<net name="COUT" class="0">
<segment>
<wire x1="139.7" y1="43.18" x2="144.78" y2="43.18" width="0.1524" layer="91"/>
<label x="144.78" y="43.18" size="1.778" layer="95" xref="yes"/>
<pinref part="X3" gate="G$1" pin="Y"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</module>
<module name="ADD4" prefix="" dx="30.48" dy="30.48">
<ports>
<port name="A0" side="left" coord="7.62" direction="io"/>
<port name="A1" side="left" coord="5.08" direction="io"/>
<port name="A2" side="left" coord="2.54" direction="io"/>
<port name="A3" side="left" coord="0" direction="io"/>
<port name="B0" side="left" coord="-2.54" direction="io"/>
<port name="B2" side="left" coord="-7.62" direction="io"/>
<port name="B1" side="left" coord="-5.08" direction="io"/>
<port name="B3" side="left" coord="-10.16" direction="io"/>
<port name="S0" side="right" coord="5.08" direction="io"/>
<port name="S1" side="right" coord="2.54" direction="io"/>
<port name="S2" side="right" coord="0" direction="io"/>
<port name="S3" side="right" coord="-2.54" direction="io"/>
<port name="M" side="left" coord="10.16" direction="io"/>
<port name="CO4" side="right" coord="10.16" direction="io"/>
<port name="CO1" side="right" coord="-7.62" direction="io"/>
<port name="CO2" side="right" coord="-10.16" direction="io"/>
<port name="CO3" side="right" coord="-12.7" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
<part name="X1" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="XOR" device=""/>
<part name="X2" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="XOR" device=""/>
<part name="X3" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="XOR" device=""/>
<part name="X4" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="XOR" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="124.46" y="137.16" size="5.08" layer="97" align="bottom-center">4 bit adder/subtractor with carry out
M=0: A3:A0 + B3:B0 = S3:S0 + COUT
M=1: A3:A0 - B3:B0 = S3:S0 + COUT
</text>
<frame x1="0" y1="0" x2="251.46" y2="185.42" columns="8" rows="5" layer="91"/>
</plain>
<moduleinsts>
<moduleinst name="ADDER1BIT1" module="ADDER1BIT" x="48.26" y="60.96">
<attribute name="NAME" x="48.26" y="60.96" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="ADDER1BIT2" module="ADDER1BIT" x="99.06" y="60.96">
<attribute name="NAME" x="99.06" y="60.96" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="ADDER1BIT3" module="ADDER1BIT" x="149.86" y="60.96">
<attribute name="NAME" x="149.86" y="60.96" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="ADDER1BIT4" module="ADDER1BIT" x="198.12" y="60.96">
<attribute name="NAME" x="198.12" y="60.96" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
</moduleinsts>
<instances>
<instance part="X1" gate="G$1" x="53.34" y="93.98" rot="R270">
<attribute name="NAME" x="59.055" y="101.6" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="45.72" y="101.6" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X2" gate="G$1" x="104.14" y="93.98" rot="R270">
<attribute name="NAME" x="109.855" y="101.6" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="96.52" y="101.6" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X3" gate="G$1" x="154.94" y="93.98" rot="R270">
<attribute name="NAME" x="160.655" y="101.6" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="147.32" y="101.6" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="X4" gate="G$1" x="203.2" y="93.98" rot="R270">
<attribute name="NAME" x="208.915" y="101.6" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="195.58" y="101.6" size="1.778" layer="96" rot="R270"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="CO3" class="0">
<segment>
<wire x1="68.58" y1="60.96" x2="78.74" y2="60.96" width="0.1524" layer="91"/>
<label x="73.66" y="60.96" size="1.016" layer="95"/>
<portref moduleinst="ADDER1BIT1" port="CIN"/>
<portref moduleinst="ADDER1BIT2" port="COUT"/>
</segment>
</net>
<net name="CO2" class="0">
<segment>
<wire x1="119.38" y1="60.96" x2="129.54" y2="60.96" width="0.1524" layer="91"/>
<label x="124.46" y="60.96" size="1.016" layer="95"/>
<portref moduleinst="ADDER1BIT2" port="CIN"/>
<portref moduleinst="ADDER1BIT3" port="COUT"/>
</segment>
</net>
<net name="CO1" class="0">
<segment>
<wire x1="170.18" y1="60.96" x2="177.8" y2="60.96" width="0.1524" layer="91"/>
<label x="172.72" y="60.96" size="1.016" layer="95"/>
<portref moduleinst="ADDER1BIT3" port="CIN"/>
<portref moduleinst="ADDER1BIT4" port="COUT"/>
</segment>
</net>
<net name="S0" class="0">
<segment>
<wire x1="198.12" y1="45.72" x2="198.12" y2="35.56" width="0.1524" layer="91"/>
<label x="198.12" y="35.56" size="1.778" layer="95" rot="R270" xref="yes"/>
<portref moduleinst="ADDER1BIT4" port="S"/>
</segment>
</net>
<net name="S1" class="0">
<segment>
<wire x1="149.86" y1="45.72" x2="149.86" y2="35.56" width="0.1524" layer="91"/>
<label x="149.86" y="35.56" size="1.778" layer="95" rot="R270" xref="yes"/>
<portref moduleinst="ADDER1BIT3" port="S"/>
</segment>
</net>
<net name="S2" class="0">
<segment>
<wire x1="99.06" y1="45.72" x2="99.06" y2="35.56" width="0.1524" layer="91"/>
<label x="99.06" y="35.56" size="1.778" layer="95" rot="R270" xref="yes"/>
<portref moduleinst="ADDER1BIT2" port="S"/>
</segment>
</net>
<net name="S3" class="0">
<segment>
<wire x1="48.26" y1="45.72" x2="48.26" y2="35.56" width="0.1524" layer="91"/>
<label x="48.26" y="35.56" size="1.778" layer="95" rot="R270" xref="yes"/>
<portref moduleinst="ADDER1BIT1" port="S"/>
</segment>
</net>
<net name="A0" class="0">
<segment>
<wire x1="193.04" y1="76.2" x2="193.04" y2="116.84" width="0.1524" layer="91"/>
<label x="193.04" y="116.84" size="1.778" layer="95" rot="R90" xref="yes"/>
<portref moduleinst="ADDER1BIT4" port="A"/>
</segment>
</net>
<net name="A1" class="0">
<segment>
<wire x1="144.78" y1="76.2" x2="144.78" y2="116.84" width="0.1524" layer="91"/>
<label x="144.78" y="116.84" size="1.778" layer="95" rot="R90" xref="yes"/>
<portref moduleinst="ADDER1BIT3" port="A"/>
</segment>
</net>
<net name="A2" class="0">
<segment>
<wire x1="93.98" y1="76.2" x2="93.98" y2="116.84" width="0.1524" layer="91"/>
<label x="93.98" y="116.84" size="1.778" layer="95" rot="R90" xref="yes"/>
<portref moduleinst="ADDER1BIT2" port="A"/>
</segment>
</net>
<net name="A3" class="0">
<segment>
<wire x1="43.18" y1="76.2" x2="43.18" y2="116.84" width="0.1524" layer="91"/>
<label x="43.18" y="116.84" size="1.778" layer="95" rot="R90" xref="yes"/>
<portref moduleinst="ADDER1BIT1" port="A"/>
</segment>
</net>
<net name="CO4" class="0">
<segment>
<wire x1="27.94" y1="60.96" x2="20.32" y2="60.96" width="0.1524" layer="91"/>
<label x="20.32" y="60.96" size="1.778" layer="95" rot="R180" xref="yes"/>
<portref moduleinst="ADDER1BIT1" port="COUT"/>
</segment>
</net>
<net name="M" class="0">
<segment>
<wire x1="218.44" y1="60.96" x2="226.06" y2="60.96" width="0.1524" layer="91"/>
<wire x1="226.06" y1="60.96" x2="233.68" y2="60.96" width="0.1524" layer="91"/>
<wire x1="226.06" y1="60.96" x2="226.06" y2="114.3" width="0.1524" layer="91"/>
<wire x1="226.06" y1="114.3" x2="205.74" y2="114.3" width="0.1524" layer="91"/>
<junction x="226.06" y="60.96"/>
<pinref part="X1" gate="G$1" pin="A"/>
<wire x1="205.74" y1="114.3" x2="157.48" y2="114.3" width="0.1524" layer="91"/>
<wire x1="157.48" y1="114.3" x2="106.68" y2="114.3" width="0.1524" layer="91"/>
<wire x1="106.68" y1="114.3" x2="55.88" y2="114.3" width="0.1524" layer="91"/>
<wire x1="55.88" y1="106.68" x2="55.88" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="A"/>
<wire x1="106.68" y1="106.68" x2="106.68" y2="114.3" width="0.1524" layer="91"/>
<junction x="106.68" y="114.3"/>
<pinref part="X3" gate="G$1" pin="A"/>
<wire x1="157.48" y1="106.68" x2="157.48" y2="114.3" width="0.1524" layer="91"/>
<junction x="157.48" y="114.3"/>
<pinref part="X4" gate="G$1" pin="A"/>
<wire x1="205.74" y1="106.68" x2="205.74" y2="114.3" width="0.1524" layer="91"/>
<junction x="205.74" y="114.3"/>
<label x="233.68" y="60.96" size="1.778" layer="95" xref="yes"/>
<portref moduleinst="ADDER1BIT4" port="CIN"/>
</segment>
</net>
<net name="B3_XOR" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="Y"/>
<wire x1="53.34" y1="81.28" x2="53.34" y2="76.2" width="0.1524" layer="91"/>
<label x="53.34" y="78.74" size="1.016" layer="95"/>
<portref moduleinst="ADDER1BIT1" port="B"/>
</segment>
</net>
<net name="B3" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="B"/>
<wire x1="50.8" y1="106.68" x2="50.8" y2="116.84" width="0.1524" layer="91"/>
<label x="50.8" y="116.84" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="B2_XOR" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="Y"/>
<wire x1="104.14" y1="76.2" x2="104.14" y2="81.28" width="0.1524" layer="91"/>
<label x="104.14" y="78.74" size="1.016" layer="95"/>
<portref moduleinst="ADDER1BIT2" port="B"/>
</segment>
</net>
<net name="B0_XOR" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="Y"/>
<wire x1="203.2" y1="81.28" x2="203.2" y2="76.2" width="0.1524" layer="91"/>
<label x="203.2" y="78.74" size="1.016" layer="95"/>
<portref moduleinst="ADDER1BIT4" port="B"/>
</segment>
</net>
<net name="B1_XOR" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="Y"/>
<wire x1="154.94" y1="81.28" x2="154.94" y2="76.2" width="0.1524" layer="91"/>
<label x="154.94" y="78.74" size="1.016" layer="95"/>
<portref moduleinst="ADDER1BIT3" port="B"/>
</segment>
</net>
<net name="B2" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="B"/>
<wire x1="101.6" y1="106.68" x2="101.6" y2="116.84" width="0.1524" layer="91"/>
<label x="101.6" y="116.84" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="B1" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="B"/>
<wire x1="152.4" y1="106.68" x2="152.4" y2="116.84" width="0.1524" layer="91"/>
<label x="152.4" y="116.84" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="B0" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="B"/>
<wire x1="200.66" y1="106.68" x2="200.66" y2="116.84" width="0.1524" layer="91"/>
<label x="200.66" y="116.84" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</module>
<module name="CTR4BIT" prefix="" dx="30.48" dy="15.24">
<ports>
<port name="Q0" side="right" coord="5.08" direction="out"/>
<port name="Q1" side="right" coord="2.54" direction="out"/>
<port name="Q2" side="right" coord="0" direction="out"/>
<port name="Q3" side="right" coord="-2.54" direction="out"/>
<port name="RST" side="left" coord="-5.08" direction="in"/>
<port name="CLKIN" side="left" coord="-2.54" direction="in"/>
<port name="SET" side="left" coord="5.08" direction="in"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
<part name="X1" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="JKFF" device=""/>
<part name="X2" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="JKFF" device=""/>
<part name="X3" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="JKFF" device=""/>
<part name="X4" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="JKFF" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="15.24" y="71.12" size="5.08" layer="97">4-bit Ring Counter</text>
<frame x1="0" y1="0" x2="193.04" y2="93.98" columns="8" rows="5" layer="91"/>
</plain>
<instances>
<instance part="X1" gate="G$1" x="58.42" y="38.1">
<attribute name="NAME" x="60.96" y="48.26" size="1.778" layer="95"/>
</instance>
<instance part="X2" gate="G$1" x="93.98" y="38.1">
<attribute name="NAME" x="96.52" y="48.26" size="1.778" layer="95"/>
</instance>
<instance part="X3" gate="G$1" x="132.08" y="38.1">
<attribute name="NAME" x="134.62" y="48.26" size="1.778" layer="95"/>
</instance>
<instance part="X4" gate="G$1" x="167.64" y="38.1">
<attribute name="NAME" x="170.18" y="48.26" size="1.778" layer="95"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="CLKIN" class="0">
<segment>
<wire x1="35.56" y1="40.64" x2="30.48" y2="40.64" width="0.1524" layer="91"/>
<label x="22.86" y="40.64" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="30.48" y1="40.64" x2="27.94" y2="40.64" width="0.1524" layer="91"/>
<wire x1="27.94" y1="40.64" x2="22.86" y2="40.64" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="CLK"/>
<wire x1="45.72" y1="38.1" x2="35.56" y2="38.1" width="0.1524" layer="91"/>
<wire x1="35.56" y1="38.1" x2="35.56" y2="40.64" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="CLK"/>
<wire x1="81.28" y1="38.1" x2="81.28" y2="15.24" width="0.1524" layer="91"/>
<wire x1="81.28" y1="15.24" x2="30.48" y2="15.24" width="0.1524" layer="91"/>
<wire x1="30.48" y1="15.24" x2="30.48" y2="40.64" width="0.1524" layer="91"/>
<junction x="30.48" y="40.64"/>
<pinref part="X3" gate="G$1" pin="CLK"/>
<wire x1="81.28" y1="15.24" x2="119.38" y2="15.24" width="0.1524" layer="91"/>
<wire x1="119.38" y1="15.24" x2="119.38" y2="38.1" width="0.1524" layer="91"/>
<junction x="81.28" y="15.24"/>
<pinref part="X4" gate="G$1" pin="CLK"/>
<wire x1="154.94" y1="38.1" x2="154.94" y2="15.24" width="0.1524" layer="91"/>
<wire x1="154.94" y1="15.24" x2="119.38" y2="15.24" width="0.1524" layer="91"/>
<junction x="119.38" y="15.24"/>
</segment>
</net>
<net name="RST" class="0">
<segment>
<wire x1="20.32" y1="12.7" x2="30.48" y2="12.7" width="0.1524" layer="91"/>
<label x="20.32" y="12.7" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="30.48" y1="12.7" x2="38.1" y2="12.7" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="RST"/>
<wire x1="38.1" y1="12.7" x2="93.98" y2="12.7" width="0.1524" layer="91"/>
<wire x1="93.98" y1="12.7" x2="93.98" y2="22.86" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="RST"/>
<wire x1="93.98" y1="12.7" x2="132.08" y2="12.7" width="0.1524" layer="91"/>
<wire x1="132.08" y1="12.7" x2="132.08" y2="22.86" width="0.1524" layer="91"/>
<junction x="93.98" y="12.7"/>
<pinref part="X4" gate="G$1" pin="RST"/>
<wire x1="132.08" y1="12.7" x2="167.64" y2="12.7" width="0.1524" layer="91"/>
<wire x1="167.64" y1="12.7" x2="167.64" y2="22.86" width="0.1524" layer="91"/>
<junction x="132.08" y="12.7"/>
<pinref part="X1" gate="G$1" pin="SET"/>
<wire x1="58.42" y1="53.34" x2="38.1" y2="53.34" width="0.1524" layer="91"/>
<wire x1="38.1" y1="53.34" x2="38.1" y2="12.7" width="0.1524" layer="91"/>
<junction x="38.1" y="12.7"/>
</segment>
</net>
<net name="SET" class="0">
<segment>
<label x="20.32" y="58.42" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="38.1" y1="58.42" x2="20.32" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="SET"/>
<wire x1="38.1" y1="58.42" x2="73.66" y2="58.42" width="0.1524" layer="91"/>
<wire x1="73.66" y1="58.42" x2="93.98" y2="58.42" width="0.1524" layer="91"/>
<wire x1="93.98" y1="58.42" x2="93.98" y2="53.34" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="SET"/>
<wire x1="93.98" y1="58.42" x2="132.08" y2="58.42" width="0.1524" layer="91"/>
<wire x1="132.08" y1="58.42" x2="132.08" y2="53.34" width="0.1524" layer="91"/>
<junction x="93.98" y="58.42"/>
<pinref part="X4" gate="G$1" pin="SET"/>
<wire x1="132.08" y1="58.42" x2="167.64" y2="58.42" width="0.1524" layer="91"/>
<wire x1="167.64" y1="58.42" x2="167.64" y2="53.34" width="0.1524" layer="91"/>
<junction x="132.08" y="58.42"/>
<pinref part="X1" gate="G$1" pin="RST"/>
<wire x1="58.42" y1="22.86" x2="73.66" y2="22.86" width="0.1524" layer="91"/>
<wire x1="73.66" y1="22.86" x2="73.66" y2="58.42" width="0.1524" layer="91"/>
<junction x="73.66" y="58.42"/>
</segment>
</net>
<net name="!Q0" class="0">
<segment>
<wire x1="60.96" y1="35.56" x2="63.5" y2="35.56" width="0.1524" layer="91"/>
<label x="60.96" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<wire x1="68.58" y1="40.64" x2="66.04" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Q2" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="Q"/>
<pinref part="X4" gate="G$1" pin="J"/>
<wire x1="144.78" y1="45.72" x2="149.86" y2="45.72" width="0.1524" layer="91"/>
<wire x1="149.86" y1="45.72" x2="154.94" y2="45.72" width="0.1524" layer="91"/>
<wire x1="149.86" y1="45.72" x2="149.86" y2="66.04" width="0.1524" layer="91"/>
<junction x="149.86" y="45.72"/>
<label x="149.86" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="Q1" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="J"/>
<pinref part="X2" gate="G$1" pin="Q"/>
<wire x1="119.38" y1="45.72" x2="114.3" y2="45.72" width="0.1524" layer="91"/>
<wire x1="114.3" y1="45.72" x2="106.68" y2="45.72" width="0.1524" layer="91"/>
<wire x1="114.3" y1="45.72" x2="114.3" y2="66.04" width="0.1524" layer="91"/>
<junction x="114.3" y="45.72"/>
<label x="114.3" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="Q0" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="J"/>
<pinref part="X1" gate="G$1" pin="Q"/>
<wire x1="81.28" y1="45.72" x2="78.74" y2="45.72" width="0.1524" layer="91"/>
<wire x1="78.74" y1="45.72" x2="71.12" y2="45.72" width="0.1524" layer="91"/>
<wire x1="78.74" y1="45.72" x2="78.74" y2="66.04" width="0.1524" layer="91"/>
<junction x="78.74" y="45.72"/>
<label x="78.74" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="!Q"/>
<pinref part="X2" gate="G$1" pin="K"/>
<wire x1="71.12" y1="30.48" x2="81.28" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="!Q"/>
<pinref part="X3" gate="G$1" pin="K"/>
<wire x1="106.68" y1="30.48" x2="119.38" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="!Q"/>
<pinref part="X4" gate="G$1" pin="K"/>
<wire x1="144.78" y1="30.48" x2="154.94" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Q3" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="Q"/>
<wire x1="180.34" y1="45.72" x2="185.42" y2="45.72" width="0.1524" layer="91"/>
<wire x1="185.42" y1="45.72" x2="185.42" y2="60.96" width="0.1524" layer="91"/>
<wire x1="185.42" y1="60.96" x2="182.88" y2="60.96" width="0.1524" layer="91"/>
<wire x1="182.88" y1="60.96" x2="43.18" y2="60.96" width="0.1524" layer="91"/>
<wire x1="43.18" y1="60.96" x2="43.18" y2="45.72" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="J"/>
<wire x1="43.18" y1="45.72" x2="45.72" y2="45.72" width="0.1524" layer="91"/>
<label x="180.34" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="K"/>
<wire x1="45.72" y1="30.48" x2="43.18" y2="30.48" width="0.1524" layer="91"/>
<wire x1="43.18" y1="30.48" x2="43.18" y2="17.78" width="0.1524" layer="91"/>
<wire x1="43.18" y1="17.78" x2="185.42" y2="17.78" width="0.1524" layer="91"/>
<wire x1="185.42" y1="17.78" x2="185.42" y2="30.48" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="!Q"/>
<wire x1="185.42" y1="30.48" x2="180.34" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</module>
</modules>
<parts>
<part name="X_MODE" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="DIGSRC" device="">
<spice>
<pinmapping isusermap="yes" isdevicewide="no" spiceprefix="X">
<pinmap gate="G$1" pin="OUT" pinorder="1"/>
</pinmapping>
</spice>
<attribute name="EAGLE_DIGITAL_SOURCE_FILE" value="driverd1_1.dsource.txt"/>
<attribute name="SPICEMODEL" value="DRIVERD1_1"/>
<attribute name="SPICEPREFIX" value="X"/>
</part>
<part name="X_SET" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="DIGSRC" device="">
<spice>
<pinmapping isusermap="yes" isdevicewide="no" spiceprefix="X">
<pinmap gate="G$1" pin="OUT" pinorder="1"/>
</pinmapping>
</spice>
<attribute name="EAGLE_DIGITAL_SOURCE_FILE" value="driverd1_5.dsource.txt"/>
<attribute name="SPICEMODEL" value="DRIVERD1_5"/>
<attribute name="SPICEPREFIX" value="X"/>
</part>
<part name="X_RST" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="DIGSRC" device="">
<spice>
<pinmapping isusermap="yes" isdevicewide="no" spiceprefix="X">
<pinmap gate="G$1" pin="OUT" pinorder="1"/>
</pinmapping>
</spice>
<attribute name="EAGLE_DIGITAL_SOURCE_FILE" value="driverd1_4.dsource.txt"/>
<attribute name="SPICEMODEL" value="DRIVERD1_4"/>
<attribute name="SPICEPREFIX" value="X"/>
</part>
<part name="X_3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device="">
<attribute name="SPICEPREFIX" value="G"/>
</part>
<part name="V3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 0V AC 0 PULSE(0 3 0 1n 1n 3m 6m)">
<spice>
<pinmapping isusermap="yes" isdevicewide="yes">
<pinmap gate="G$1" pin="+" pinorder="1"/>
<pinmap gate="G$1" pin="-" pinorder="2"/>
</pinmapping>
</spice>
<attribute name="SPICEPREFIX" value="V"/>
</part>
<part name="X3" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="ATODB" device="">
<spice>
<pinmapping spiceprefix="X">
<pinmap gate="G$1" pin="AN" pinorder="1"/>
<pinmap gate="G$1" pin="DIG" pinorder="2"/>
</pinmapping>
<model name="ATODB">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.SUBCKT ATODB A D
abridge [A] [D] adc_buff
.model adc_buff adc_bridge(in_low = 0.3 in_high = 2.5)
.ENDS ATODB</model>
</spice>
<attribute name="SPICEPREFIX" value="X"/>
</part>
</parts>
<sheets>
<sheet>
<plain>
<text x="53.34" y="76.2" size="5.08" layer="97">4 bit binary adder/subtractor
test circuit with input stimulus
from ring counters</text>
<frame x1="0" y1="0" x2="243.84" y2="114.3" columns="8" rows="5" layer="91"/>
</plain>
<moduleinsts>
<moduleinst name="ADD4" module="ADD4" x="182.88" y="43.18">
<attribute name="NAME" value="ADD4" x="182.88" y="45.72" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="CTR4BIT1" module="CTR4BIT" x="104.14" y="50.8">
<attribute name="NAME" x="104.14" y="53.34" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="CTR4BIT2" module="CTR4BIT" x="99.06" y="33.02">
<attribute name="NAME" x="99.06" y="35.56" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
</moduleinsts>
<instances>
<instance part="X_MODE" gate="G$1" x="134.62" y="63.5">
<attribute name="NAME" x="122.174" y="66.548" size="1.778" layer="95"/>
<attribute name="EAGLE_DIGITAL_SOURCE_FILE" x="134.62" y="63.5" size="1.778" layer="96" display="off"/>
</instance>
<instance part="X_SET" gate="G$1" x="55.88" y="55.88">
<attribute name="NAME" x="43.434" y="58.928" size="1.778" layer="95"/>
<attribute name="EAGLE_DIGITAL_SOURCE_FILE" x="55.88" y="55.88" size="1.778" layer="96" display="off"/>
</instance>
<instance part="X_RST" gate="G$1" x="50.8" y="27.94">
<attribute name="NAME" x="38.354" y="30.988" size="1.778" layer="95"/>
<attribute name="EAGLE_DIGITAL_SOURCE_FILE" x="50.8" y="27.94" size="1.778" layer="96" display="off"/>
</instance>
<instance part="X_3" gate="G$1" x="22.86" y="20.32"/>
<instance part="V3" gate="G$1" x="22.86" y="38.1">
<attribute name="NAME" x="30.48" y="40.64" size="1.778" layer="95"/>
<attribute name="VALUE" x="30.48" y="38.1" size="1.778" layer="96"/>
</instance>
<instance part="X3" gate="G$1" x="35.56" y="48.26"/>
</instances>
<busses>
</busses>
<nets>
<net name="MODE" class="0">
<segment>
<wire x1="162.56" y1="53.34" x2="154.94" y2="53.34" width="0.1524" layer="91"/>
<wire x1="154.94" y1="53.34" x2="154.94" y2="63.5" width="0.1524" layer="91"/>
<wire x1="154.94" y1="63.5" x2="147.32" y2="63.5" width="0.1524" layer="91"/>
<label x="149.86" y="63.5" size="2.032" layer="95"/>
<pinref part="X_MODE" gate="G$1" pin="OUT"/>
<portref moduleinst="ADD4" port="M"/>
<probe x="162.56" y="71.12" size="1.016" layer="89" probetype="3"/>
</segment>
</net>
<net name="CO4" class="0">
<segment>
<wire x1="203.2" y1="53.34" x2="215.9" y2="53.34" width="0.1524" layer="91"/>
<label x="205.74" y="53.34" size="2.032" layer="95"/>
<probe x="218.694" y="57.912" size="1.016" layer="89" probetype="3"/>
<portref moduleinst="ADD4" port="CO4"/>
</segment>
</net>
<net name="A0" class="0">
<segment>
<probe x="145.288" y="51.816" size="1.016" layer="89" probetype="3"/>
<wire x1="129.54" y1="50.8" x2="162.56" y2="50.8" width="0.1524" layer="91"/>
<portref moduleinst="ADD4" port="A0"/>
<label x="154.94" y="50.8" size="1.778" layer="95"/>
<wire x1="124.46" y1="55.88" x2="129.54" y2="50.8" width="0.1524" layer="91"/>
<portref moduleinst="CTR4BIT1" port="Q0"/>
</segment>
</net>
<net name="A1" class="0">
<segment>
<probe x="145.542" y="49.53" size="1.016" layer="89" probetype="3"/>
<wire x1="129.54" y1="48.26" x2="162.56" y2="48.26" width="0.1524" layer="91"/>
<portref moduleinst="ADD4" port="A1"/>
<label x="154.94" y="48.26" size="1.778" layer="95"/>
<wire x1="124.46" y1="53.34" x2="129.54" y2="48.26" width="0.1524" layer="91"/>
<portref moduleinst="CTR4BIT1" port="Q1"/>
</segment>
</net>
<net name="A2" class="0">
<segment>
<probe x="145.542" y="46.736" size="1.016" layer="89" probetype="3"/>
<wire x1="129.54" y1="45.72" x2="162.56" y2="45.72" width="0.1524" layer="91"/>
<portref moduleinst="ADD4" port="A2"/>
<label x="154.94" y="45.72" size="1.778" layer="95"/>
<wire x1="124.46" y1="50.8" x2="129.54" y2="45.72" width="0.1524" layer="91"/>
<portref moduleinst="CTR4BIT1" port="Q2"/>
</segment>
</net>
<net name="A3" class="0">
<segment>
<probe x="145.542" y="44.196" size="1.016" layer="89" probetype="3"/>
<wire x1="129.54" y1="43.18" x2="162.56" y2="43.18" width="0.1524" layer="91"/>
<portref moduleinst="ADD4" port="A3"/>
<label x="154.94" y="43.18" size="1.778" layer="95"/>
<wire x1="129.54" y1="43.18" x2="124.46" y2="48.26" width="0.1524" layer="91"/>
<portref moduleinst="CTR4BIT1" port="Q3"/>
</segment>
</net>
<net name="CO1" class="0">
<segment>
<portref moduleinst="ADD4" port="CO1"/>
<wire x1="203.2" y1="35.56" x2="210.82" y2="35.56" width="0.1524" layer="91"/>
<label x="205.74" y="35.56" size="1.778" layer="95"/>
<probe x="215.9" y="38.1" size="1.016" layer="89" probetype="3"/>
</segment>
</net>
<net name="CO2" class="0">
<segment>
<portref moduleinst="ADD4" port="CO2"/>
<wire x1="203.2" y1="33.02" x2="210.82" y2="33.02" width="0.1524" layer="91"/>
<label x="205.74" y="33.02" size="1.778" layer="95"/>
<probe x="215.9" y="35.56" size="1.016" layer="89" probetype="3"/>
</segment>
</net>
<net name="CO3" class="0">
<segment>
<portref moduleinst="ADD4" port="CO3"/>
<wire x1="203.2" y1="30.48" x2="210.82" y2="30.48" width="0.1524" layer="91"/>
<label x="205.74" y="30.48" size="1.778" layer="95"/>
<probe x="215.9" y="33.02" size="1.016" layer="89" probetype="3"/>
</segment>
</net>
<net name="RST" class="0">
<segment>
<wire x1="63.5" y1="27.94" x2="68.58" y2="27.94" width="0.1524" layer="91"/>
<label x="71.12" y="27.94" size="1.778" layer="95"/>
<wire x1="68.58" y1="27.94" x2="78.74" y2="27.94" width="0.1524" layer="91"/>
<wire x1="83.82" y1="45.72" x2="68.58" y2="45.72" width="0.1524" layer="91"/>
<wire x1="68.58" y1="45.72" x2="68.58" y2="27.94" width="0.1524" layer="91"/>
<junction x="68.58" y="27.94"/>
<pinref part="X_RST" gate="G$1" pin="OUT"/>
<probe x="71.12" y="20.32" size="1.778" layer="89" probetype="3"/>
<portref moduleinst="CTR4BIT1" port="RST"/>
<portref moduleinst="CTR4BIT2" port="RST"/>
</segment>
</net>
<net name="CLK" class="0">
<segment>
<wire x1="71.12" y1="48.26" x2="83.82" y2="48.26" width="0.1524" layer="91"/>
<wire x1="78.74" y1="30.48" x2="71.12" y2="30.48" width="0.1524" layer="91"/>
<wire x1="71.12" y1="30.48" x2="71.12" y2="48.26" width="0.1524" layer="91"/>
<wire x1="71.12" y1="48.26" x2="38.1" y2="48.26" width="0.1524" layer="91"/>
<junction x="71.12" y="48.26"/>
<label x="65.532" y="48.26" size="1.778" layer="95" rot="R180"/>
<pinref part="X3" gate="G$1" pin="DIG"/>
<probe x="35.56" y="66.04" size="1.778" layer="89" probetype="3"/>
<portref moduleinst="CTR4BIT1" port="CLKIN"/>
<portref moduleinst="CTR4BIT2" port="CLKIN"/>
</segment>
</net>
<net name="SET" class="0">
<segment>
<wire x1="68.58" y1="55.88" x2="76.2" y2="55.88" width="0.1524" layer="91"/>
<label x="71.12" y="55.88" size="1.778" layer="95"/>
<wire x1="76.2" y1="55.88" x2="83.82" y2="55.88" width="0.1524" layer="91"/>
<wire x1="78.74" y1="38.1" x2="76.2" y2="38.1" width="0.1524" layer="91"/>
<wire x1="76.2" y1="38.1" x2="76.2" y2="55.88" width="0.1524" layer="91"/>
<junction x="76.2" y="55.88"/>
<pinref part="X_SET" gate="G$1" pin="OUT"/>
<probe x="78.74" y="66.04" size="1.778" layer="89" probetype="3"/>
<portref moduleinst="CTR4BIT1" port="SET"/>
<portref moduleinst="CTR4BIT2" port="SET"/>
</segment>
</net>
<net name="CLKIN" class="0">
<segment>
<wire x1="30.48" y1="48.26" x2="22.86" y2="48.26" width="0.1524" layer="91"/>
<wire x1="22.86" y1="48.26" x2="22.86" y2="45.72" width="0.1524" layer="91"/>
<label x="20.32" y="48.26" size="1.778" layer="95"/>
<pinref part="X3" gate="G$1" pin="AN"/>
<pinref part="V3" gate="G$1" pin="+"/>
</segment>
</net>
<net name="0" class="0">
<segment>
<wire x1="22.86" y1="30.48" x2="22.86" y2="20.32" width="0.1524" layer="91"/>
<pinref part="X_3" gate="G$1" pin="0"/>
<pinref part="V3" gate="G$1" pin="-"/>
</segment>
</net>
<net name="S0" class="0">
<segment>
<portref moduleinst="ADD4" port="S0"/>
<wire x1="203.2" y1="48.26" x2="218.44" y2="48.26" width="0.1524" layer="91"/>
<label x="210.82" y="48.26" size="1.778" layer="95"/>
<probe x="223.52" y="50.8" size="1.778" layer="89" probetype="3"/>
</segment>
</net>
<net name="S1" class="0">
<segment>
<portref moduleinst="ADD4" port="S1"/>
<wire x1="203.2" y1="45.72" x2="218.44" y2="45.72" width="0.1524" layer="91"/>
<label x="210.82" y="45.72" size="1.778" layer="95"/>
<probe x="223.52" y="48.26" size="1.778" layer="89" probetype="3"/>
</segment>
</net>
<net name="S2" class="0">
<segment>
<portref moduleinst="ADD4" port="S2"/>
<wire x1="203.2" y1="43.18" x2="218.44" y2="43.18" width="0.1524" layer="91"/>
<label x="210.82" y="43.18" size="1.778" layer="95"/>
<probe x="223.52" y="45.72" size="1.778" layer="89" probetype="3"/>
</segment>
</net>
<net name="S3" class="0">
<segment>
<portref moduleinst="ADD4" port="S3"/>
<wire x1="203.2" y1="40.64" x2="218.44" y2="40.64" width="0.1524" layer="91"/>
<label x="210.82" y="40.64" size="1.778" layer="95"/>
<probe x="223.52" y="43.18" size="1.778" layer="89" probetype="3"/>
</segment>
</net>
<net name="B0" class="0">
<segment>
<portref moduleinst="CTR4BIT2" port="Q3"/>
<wire x1="119.38" y1="30.48" x2="127" y2="30.48" width="0.1524" layer="91"/>
<probe x="147.574" y="41.656" size="1.016" layer="89" probetype="3"/>
<portref moduleinst="ADD4" port="B0"/>
<wire x1="127" y1="30.48" x2="137.16" y2="40.64" width="0.1524" layer="91"/>
<wire x1="137.16" y1="40.64" x2="162.56" y2="40.64" width="0.1524" layer="91"/>
<label x="154.94" y="40.64" size="1.016" layer="95"/>
</segment>
</net>
<net name="B3" class="0">
<segment>
<portref moduleinst="CTR4BIT2" port="Q2"/>
<wire x1="119.38" y1="33.02" x2="134.62" y2="33.02" width="0.1524" layer="91"/>
<probe x="147.32" y="34.036" size="1.016" layer="89" probetype="3"/>
<portref moduleinst="ADD4" port="B3"/>
<wire x1="134.62" y1="33.02" x2="162.56" y2="33.02" width="0.1524" layer="91"/>
<label x="154.94" y="33.02" size="1.016" layer="95"/>
</segment>
</net>
<net name="B1" class="0">
<segment>
<portref moduleinst="CTR4BIT2" port="Q0"/>
<wire x1="119.38" y1="38.1" x2="137.16" y2="38.1" width="0.1524" layer="91"/>
<probe x="147.574" y="39.116" size="1.016" layer="89" probetype="3"/>
<portref moduleinst="ADD4" port="B1"/>
<wire x1="137.16" y1="38.1" x2="162.56" y2="38.1" width="0.1524" layer="91"/>
<label x="154.94" y="38.1" size="1.016" layer="95"/>
</segment>
</net>
<net name="B2" class="0">
<segment>
<portref moduleinst="CTR4BIT2" port="Q1"/>
<portref moduleinst="ADD4" port="B2"/>
<wire x1="119.38" y1="35.56" x2="162.56" y2="35.56" width="0.1524" layer="91"/>
<label x="154.94" y="35.56" size="1.016" layer="95"/>
<probe x="147.574" y="36.576" size="1.016" layer="89" probetype="3"/>
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
