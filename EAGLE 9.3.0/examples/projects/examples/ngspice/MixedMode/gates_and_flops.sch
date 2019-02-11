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
<packages>
</packages>
<symbols>
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
<symbol name="JKFF" urn="urn:adsk.eagle:symbol:5271981/1" library_version="1">
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
<symbol name="ATODB" urn="urn:adsk.eagle:symbol:5271994/1" library_version="1">
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
<symbol name="NOR" urn="urn:adsk.eagle:symbol:5271987/1" library_version="1">
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
<pin name="Y" x="12.7" y="0" visible="pad" length="middle" direction="out" function="dot" rot="R180"/>
</symbol>
<symbol name="NAND" urn="urn:adsk.eagle:symbol:5271982/1" library_version="1">
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="-5.08" width="0.4064" layer="94" curve="-180"/>
<wire x1="2.54" y1="5.08" x2="-7.62" y2="5.08" width="0.4064" layer="94"/>
<text x="-7.62" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-12.7" y="2.54" visible="pad" length="middle" swaplevel="1"/>
<pin name="B" x="-12.7" y="-2.54" visible="pad" length="middle" swaplevel="1"/>
<pin name="Y" x="12.7" y="0" visible="pad" length="middle" direction="out" function="dot" rot="R180"/>
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
<symbol name="INVERTER" urn="urn:adsk.eagle:symbol:5271988/1" library_version="1">
<wire x1="-5.08" y1="5.08" x2="5.08" y2="0" width="0.4064" layer="94"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<text x="2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I" x="-10.16" y="0" visible="pad" length="middle"/>
<pin name="O" x="10.16" y="0" visible="pad" length="middle" direction="out" function="dot" rot="R180"/>
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
</symbols>
<devicesets>
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
<deviceset name="JKFF" urn="urn:adsk.eagle:component:5272005/1" prefix="X" library_version="1">
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
<deviceset name="ATODB" urn="urn:adsk.eagle:component:5272016/1" prefix="X" library_version="1">
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
<deviceset name="NOR" urn="urn:adsk.eagle:component:5272008/1" prefix="X" library_version="1">
<description>2 input NOR Gate</description>
<gates>
<gate name="G$1" symbol="NOR" x="0" y="0"/>
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
<model name="NOR">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.SUBCKT NOR A B OUT
a1 [A B] OUT nor
.model nor d_nor(rise_delay = 1n fall_delay = 1n)
.ENDS NOR</model>
</spice>
</deviceset>
<deviceset name="NAND" urn="urn:adsk.eagle:component:5272006/1" prefix="X" library_version="1">
<description>2 input NAND gate</description>
<gates>
<gate name="G$1" symbol="NAND" x="0" y="0"/>
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
<model name="NAND">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.SUBCKT NAND A B OUT
a1 [A B] OUT nand
.model nand d_nand(rise_delay = 1n fall_delay = 1n)
.ENDS NAND</model>
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
<deviceset name="INVERTER" urn="urn:adsk.eagle:component:5272011/1" prefix="X" library_version="1">
<description>logic inverter (NOT gate)</description>
<gates>
<gate name="G$1" symbol="INVERTER" x="0" y="0"/>
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
<model name="INV">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.SUBCKT INV IN OUT
a1 IN OUT inv1
.model inv1 d_inverter(rise_delay = 1n fall_delay = 1n)
.ENDS INV</model>
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
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="FRAME_A_L" urn="urn:adsk.eagle:symbol:13882/1" library_version="1">
<frame x1="0" y1="0" x2="279.4" y2="215.9" columns="6" rows="5" layer="94" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD" urn="urn:adsk.eagle:symbol:13864/1" library_version="1">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="FRAME_A_L" urn="urn:adsk.eagle:component:13939/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt; A Size , 8 1/2 x 11 INCH, Landscape&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="FRAME_A_L" x="0" y="0" addlevel="always"/>
<gate name="G$2" symbol="DOCFIELD" x="172.72" y="0" addlevel="always"/>
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
<parts>
<part name="X_3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="V3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 0V AC 0 PULSE(0 3 0 1n 1n 1m 2m)"/>
<part name="X_1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="V1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 3V AC 0"/>
<part name="X_2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="V2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 0V AC 0"/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_A_L" device=""/>
<part name="FRAME2" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_A_L" device=""/>
<part name="FRAME3" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_A_L" device=""/>
<part name="X2" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="JKFF" device=""/>
<part name="X3" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="JKFF" device=""/>
<part name="X4" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="JKFF" device=""/>
<part name="X5" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="JKFF" device=""/>
<part name="X14" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="ATODB" device=""/>
<part name="X15" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="ATODB" device=""/>
<part name="X16" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="ATODB" device=""/>
<part name="X6" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="NOR" device=""/>
<part name="X9" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="OR" device=""/>
<part name="X10" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="AND" device=""/>
<part name="X11" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="XOR" device=""/>
<part name="X12" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="INVERTER" device=""/>
<part name="X13" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="INVERTER" device=""/>
<part name="X1" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="DIGSRC8" device="">
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
<attribute name="EAGLE_DIGITAL_SOURCE_FILE" value="driverd81.dsource.txt"/>
<attribute name="SPICEMODEL" value="DRIVERD81"/>
<attribute name="SPICEPREFIX" value="X"/>
</part>
<part name="X17" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="NAND" device=""/>
<part name="X7" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="NOR" device=""/>
<part name="X8" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="NOR" device=""/>
<part name="X18" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="AND" device=""/>
<part name="X19" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="AND" device=""/>
<part name="U2" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="DFF" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="83.82" y="185.42" size="5.08" layer="94">Analog to Digital Sources</text>
<text x="198.12" y="76.2" size="2.54" layer="94">.PARAM
rd=1n
fd=1n</text>
<text x="27.94" y="101.6" size="5.08" layer="94">Digital Source from Stimulus File</text>
<wire x1="187.96" y1="93.98" x2="223.52" y2="93.98" width="0.1524" layer="94"/>
<wire x1="223.52" y1="93.98" x2="223.52" y2="68.58" width="0.1524" layer="94"/>
<wire x1="223.52" y1="68.58" x2="190.5" y2="68.58" width="0.1524" layer="94"/>
<wire x1="190.5" y1="68.58" x2="187.96" y2="68.58" width="0.1524" layer="94"/>
<wire x1="187.96" y1="68.58" x2="187.96" y2="93.98" width="0.1524" layer="94"/>
<text x="167.64" y="101.6" size="5.08" layer="94">PARAM to set rise/fall time</text>
</plain>
<instances>
<instance part="X_3" gate="G$1" x="165.1" y="142.24"/>
<instance part="V3" gate="G$1" x="165.1" y="160.02">
<attribute name="NAME" x="172.72" y="162.56" size="1.778" layer="95"/>
<attribute name="VALUE" x="172.72" y="160.02" size="1.778" layer="96"/>
</instance>
<instance part="X_1" gate="G$1" x="58.42" y="142.24"/>
<instance part="V1" gate="G$1" x="58.42" y="160.02">
<attribute name="NAME" x="66.04" y="162.56" size="1.778" layer="95"/>
<attribute name="VALUE" x="66.04" y="160.02" size="1.778" layer="96"/>
</instance>
<instance part="X_2" gate="G$1" x="111.76" y="142.24"/>
<instance part="V2" gate="G$1" x="111.76" y="160.02">
<attribute name="NAME" x="119.38" y="162.56" size="1.778" layer="95"/>
<attribute name="VALUE" x="119.38" y="160.02" size="1.778" layer="96"/>
</instance>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="172.72" y="0">
<attribute name="LAST_DATE_TIME" x="185.42" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="259.08" y="1.27" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="190.5" y="19.05" size="2.54" layer="94"/>
</instance>
<instance part="X14" gate="G$1" x="71.12" y="170.18"/>
<instance part="X15" gate="G$1" x="124.46" y="170.18"/>
<instance part="X16" gate="G$1" x="177.8" y="170.18"/>
<instance part="X1" gate="G$1" x="63.5" y="73.66">
<attribute name="NAME" x="53.34" y="85.09" size="1.778" layer="95"/>
<attribute name="EAGLE_DIGITAL_SOURCE_FILE" x="63.5" y="73.66" size="1.778" layer="96" display="off"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="0" class="0">
<segment>
<pinref part="X_3" gate="G$1" pin="0"/>
<wire x1="165.1" y1="142.24" x2="165.1" y2="152.4" width="0.1524" layer="91"/>
<pinref part="V3" gate="G$1" pin="-"/>
</segment>
<segment>
<pinref part="X_1" gate="G$1" pin="0"/>
<wire x1="58.42" y1="142.24" x2="58.42" y2="152.4" width="0.1524" layer="91"/>
<pinref part="V1" gate="G$1" pin="-"/>
</segment>
<segment>
<pinref part="X_2" gate="G$1" pin="0"/>
<wire x1="111.76" y1="142.24" x2="111.76" y2="152.4" width="0.1524" layer="91"/>
<pinref part="V2" gate="G$1" pin="-"/>
</segment>
</net>
<net name="L1" class="0">
<segment>
<wire x1="58.42" y1="170.18" x2="58.42" y2="167.64" width="0.1524" layer="91"/>
<wire x1="66.04" y1="170.18" x2="58.42" y2="170.18" width="0.1524" layer="91"/>
<pinref part="V1" gate="G$1" pin="+"/>
<label x="60.96" y="170.18" size="1.778" layer="95"/>
<pinref part="X14" gate="G$1" pin="AN"/>
</segment>
</net>
<net name="LOGIC1" class="0">
<segment>
<wire x1="73.66" y1="170.18" x2="81.28" y2="170.18" width="0.1524" layer="91"/>
<label x="81.28" y="170.18" size="1.778" layer="95" xref="yes"/>
<pinref part="X14" gate="G$1" pin="DIG"/>
</segment>
</net>
<net name="LOGIC0" class="0">
<segment>
<wire x1="127" y1="170.18" x2="134.62" y2="170.18" width="0.1524" layer="91"/>
<label x="134.62" y="170.18" size="1.778" layer="95" xref="yes"/>
<pinref part="X15" gate="G$1" pin="DIG"/>
</segment>
</net>
<net name="L0" class="0">
<segment>
<wire x1="111.76" y1="170.18" x2="111.76" y2="167.64" width="0.1524" layer="91"/>
<wire x1="119.38" y1="170.18" x2="111.76" y2="170.18" width="0.1524" layer="91"/>
<pinref part="V2" gate="G$1" pin="+"/>
<label x="114.3" y="170.18" size="1.778" layer="95"/>
<pinref part="X15" gate="G$1" pin="AN"/>
</segment>
</net>
<net name="CLKIN" class="0">
<segment>
<wire x1="172.72" y1="170.18" x2="165.1" y2="170.18" width="0.1524" layer="91"/>
<pinref part="V3" gate="G$1" pin="+"/>
<wire x1="165.1" y1="170.18" x2="165.1" y2="167.64" width="0.1524" layer="91"/>
<label x="162.56" y="170.18" size="1.778" layer="95"/>
<pinref part="X16" gate="G$1" pin="AN"/>
</segment>
</net>
<net name="CLK" class="0">
<segment>
<wire x1="180.34" y1="170.18" x2="187.96" y2="170.18" width="0.1524" layer="91"/>
<label x="187.96" y="170.18" size="1.778" layer="95" xref="yes"/>
<probe x="185.42" y="165.1" size="1.778" layer="89" probetype="3"/>
<pinref part="X16" gate="G$1" pin="DIG"/>
</segment>
</net>
<net name="A" class="0">
<segment>
<wire x1="81.28" y1="81.28" x2="93.98" y2="81.28" width="0.1524" layer="91"/>
<label x="81.28" y="81.28" size="1.778" layer="95"/>
<probe x="99.06" y="83.82" size="1.778" layer="89" probetype="3"/>
<pinref part="X1" gate="G$1" pin="OUT1"/>
</segment>
</net>
<net name="B" class="0">
<segment>
<wire x1="81.28" y1="78.74" x2="93.98" y2="78.74" width="0.1524" layer="91"/>
<label x="81.28" y="78.74" size="1.778" layer="95"/>
<probe x="99.06" y="81.28" size="1.778" layer="89" probetype="3"/>
<pinref part="X1" gate="G$1" pin="OUT2"/>
</segment>
</net>
<net name="RST_SIG" class="0">
<segment>
<wire x1="81.28" y1="76.2" x2="93.98" y2="76.2" width="0.1524" layer="91"/>
<label x="81.28" y="76.2" size="1.778" layer="95"/>
<probe x="99.06" y="78.74" size="1.778" layer="89" probetype="3"/>
<pinref part="X1" gate="G$1" pin="OUT3"/>
</segment>
</net>
<net name="SET_SIG" class="0">
<segment>
<wire x1="81.28" y1="73.66" x2="93.98" y2="73.66" width="0.1524" layer="91"/>
<label x="81.28" y="73.66" size="1.778" layer="95"/>
<probe x="99.06" y="76.2" size="1.778" layer="89" probetype="3"/>
<pinref part="X1" gate="G$1" pin="OUT4"/>
</segment>
</net>
<net name="DSRC" class="0">
<segment>
<wire x1="81.28" y1="71.12" x2="93.98" y2="71.12" width="0.1524" layer="91"/>
<label x="81.28" y="71.12" size="1.778" layer="95"/>
<probe x="99.06" y="73.66" size="1.778" layer="89" probetype="3"/>
<pinref part="X1" gate="G$1" pin="OUT5"/>
</segment>
</net>
<net name="JSRC" class="0">
<segment>
<wire x1="81.28" y1="68.58" x2="93.98" y2="68.58" width="0.1524" layer="91"/>
<label x="81.28" y="68.58" size="1.778" layer="95"/>
<probe x="99.06" y="71.12" size="1.778" layer="89" probetype="3"/>
<pinref part="X1" gate="G$1" pin="OUT6"/>
</segment>
</net>
<net name="KSRC" class="0">
<segment>
<wire x1="81.28" y1="66.04" x2="93.98" y2="66.04" width="0.1524" layer="91"/>
<label x="81.28" y="66.04" size="1.778" layer="95"/>
<probe x="99.06" y="68.58" size="1.778" layer="89" probetype="3"/>
<pinref part="X1" gate="G$1" pin="OUT7"/>
</segment>
</net>
<net name="SIG" class="0">
<segment>
<wire x1="81.28" y1="63.5" x2="93.98" y2="63.5" width="0.1524" layer="91"/>
<label x="81.28" y="63.5" size="1.778" layer="95"/>
<pinref part="X1" gate="G$1" pin="OUT8"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<plain>
<text x="20.32" y="187.96" size="5.08" layer="94">Basic Logic Gates</text>
</plain>
<instances>
<instance part="FRAME3" gate="G$1" x="0" y="0"/>
<instance part="FRAME3" gate="G$2" x="172.72" y="0">
<attribute name="LAST_DATE_TIME" x="185.42" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="259.08" y="1.27" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="190.5" y="19.05" size="2.54" layer="94"/>
</instance>
<instance part="X6" gate="G$1" x="132.08" y="152.4">
<attribute name="NAME" x="124.46" y="158.75" size="1.778" layer="95"/>
<attribute name="VALUE" x="124.46" y="144.78" size="1.778" layer="96"/>
</instance>
<instance part="X9" gate="G$1" x="132.08" y="137.16">
<attribute name="NAME" x="124.46" y="143.51" size="1.778" layer="95"/>
<attribute name="VALUE" x="124.46" y="129.54" size="1.778" layer="96"/>
</instance>
<instance part="X10" gate="G$1" x="132.08" y="121.92">
<attribute name="NAME" x="124.46" y="128.27" size="1.778" layer="95"/>
<attribute name="VALUE" x="124.46" y="114.3" size="1.778" layer="96"/>
</instance>
<instance part="X11" gate="G$1" x="132.08" y="104.14">
<attribute name="NAME" x="124.46" y="110.49" size="1.778" layer="95"/>
<attribute name="VALUE" x="124.46" y="96.52" size="1.778" layer="96"/>
</instance>
<instance part="X12" gate="G$1" x="129.54" y="88.9">
<attribute name="NAME" x="132.08" y="91.44" size="1.778" layer="95"/>
<attribute name="VALUE" x="132.08" y="83.82" size="1.778" layer="96"/>
</instance>
<instance part="X13" gate="G$1" x="129.54" y="76.2">
<attribute name="NAME" x="132.08" y="78.74" size="1.778" layer="95"/>
<attribute name="VALUE" x="132.08" y="71.12" size="1.778" layer="96"/>
</instance>
<instance part="X17" gate="G$1" x="132.08" y="58.42">
<attribute name="NAME" x="124.46" y="64.77" size="1.778" layer="95"/>
<attribute name="VALUE" x="124.46" y="50.8" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="A" class="0">
<segment>
<wire x1="111.76" y1="154.94" x2="119.38" y2="154.94" width="0.1524" layer="91"/>
<wire x1="119.38" y1="139.7" x2="111.76" y2="139.7" width="0.1524" layer="91"/>
<wire x1="111.76" y1="139.7" x2="111.76" y2="154.94" width="0.1524" layer="91"/>
<wire x1="119.38" y1="124.46" x2="111.76" y2="124.46" width="0.1524" layer="91"/>
<wire x1="111.76" y1="124.46" x2="111.76" y2="139.7" width="0.1524" layer="91"/>
<junction x="111.76" y="139.7"/>
<wire x1="119.38" y1="106.68" x2="111.76" y2="106.68" width="0.1524" layer="91"/>
<wire x1="111.76" y1="106.68" x2="111.76" y2="124.46" width="0.1524" layer="91"/>
<junction x="111.76" y="124.46"/>
<wire x1="119.38" y1="88.9" x2="111.76" y2="88.9" width="0.1524" layer="91"/>
<wire x1="111.76" y1="88.9" x2="111.76" y2="106.68" width="0.1524" layer="91"/>
<junction x="111.76" y="106.68"/>
<junction x="111.76" y="154.94"/>
<label x="106.68" y="154.94" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="106.68" y1="154.94" x2="111.76" y2="154.94" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="A"/>
<pinref part="X9" gate="G$1" pin="A"/>
<pinref part="X10" gate="G$1" pin="A"/>
<pinref part="X11" gate="G$1" pin="A"/>
<pinref part="X12" gate="G$1" pin="I"/>
<wire x1="111.76" y1="88.9" x2="111.76" y2="60.96" width="0.1524" layer="91"/>
<junction x="111.76" y="88.9"/>
<pinref part="X17" gate="G$1" pin="A"/>
<wire x1="111.76" y1="60.96" x2="119.38" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B" class="0">
<segment>
<wire x1="106.68" y1="127" x2="106.68" y2="134.62" width="0.1524" layer="91"/>
<wire x1="106.68" y1="134.62" x2="106.68" y2="149.86" width="0.1524" layer="91"/>
<wire x1="106.68" y1="149.86" x2="119.38" y2="149.86" width="0.1524" layer="91"/>
<wire x1="119.38" y1="134.62" x2="106.68" y2="134.62" width="0.1524" layer="91"/>
<junction x="106.68" y="134.62"/>
<wire x1="119.38" y1="119.38" x2="106.68" y2="119.38" width="0.1524" layer="91"/>
<wire x1="106.68" y1="119.38" x2="106.68" y2="127" width="0.1524" layer="91"/>
<wire x1="119.38" y1="101.6" x2="106.68" y2="101.6" width="0.1524" layer="91"/>
<wire x1="106.68" y1="101.6" x2="106.68" y2="119.38" width="0.1524" layer="91"/>
<junction x="106.68" y="119.38"/>
<wire x1="119.38" y1="76.2" x2="106.68" y2="76.2" width="0.1524" layer="91"/>
<wire x1="106.68" y1="76.2" x2="106.68" y2="101.6" width="0.1524" layer="91"/>
<junction x="106.68" y="101.6"/>
<wire x1="104.14" y1="127" x2="106.68" y2="127" width="0.1524" layer="91"/>
<junction x="106.68" y="127"/>
<label x="101.6" y="127" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="101.6" y1="127" x2="104.14" y2="127" width="0.1524" layer="91"/>
<pinref part="X6" gate="G$1" pin="B"/>
<pinref part="X9" gate="G$1" pin="B"/>
<pinref part="X10" gate="G$1" pin="B"/>
<pinref part="X11" gate="G$1" pin="B"/>
<pinref part="X13" gate="G$1" pin="I"/>
<pinref part="X17" gate="G$1" pin="B"/>
<wire x1="119.38" y1="55.88" x2="106.68" y2="55.88" width="0.1524" layer="91"/>
<wire x1="106.68" y1="55.88" x2="106.68" y2="76.2" width="0.1524" layer="91"/>
<junction x="106.68" y="76.2"/>
</segment>
</net>
<net name="!B" class="0">
<segment>
<wire x1="154.94" y1="76.2" x2="139.7" y2="76.2" width="0.1524" layer="91"/>
<label x="147.32" y="76.2" size="1.778" layer="95"/>
<wire x1="157.48" y1="76.2" x2="154.94" y2="76.2" width="0.1524" layer="91"/>
<probe x="157.48" y="81.28" size="1.778" layer="89" probetype="3"/>
<pinref part="X13" gate="G$1" pin="O"/>
</segment>
</net>
<net name="!A" class="0">
<segment>
<wire x1="139.7" y1="88.9" x2="152.4" y2="88.9" width="0.1524" layer="91"/>
<label x="144.78" y="88.9" size="1.778" layer="95"/>
<wire x1="157.48" y1="88.9" x2="152.4" y2="88.9" width="0.1524" layer="91"/>
<probe x="154.94" y="93.98" size="1.778" layer="89" probetype="3"/>
<pinref part="X12" gate="G$1" pin="O"/>
</segment>
</net>
<net name="XOR" class="0">
<segment>
<wire x1="157.48" y1="104.14" x2="149.86" y2="104.14" width="0.1524" layer="91"/>
<wire x1="149.86" y1="104.14" x2="144.78" y2="104.14" width="0.1524" layer="91"/>
<label x="147.32" y="104.14" size="1.778" layer="95"/>
<probe x="160.02" y="111.76" size="1.778" layer="89" probetype="3"/>
<pinref part="X11" gate="G$1" pin="Y"/>
</segment>
</net>
<net name="AND" class="0">
<segment>
<wire x1="157.48" y1="121.92" x2="149.86" y2="121.92" width="0.1524" layer="91"/>
<wire x1="144.78" y1="121.92" x2="149.86" y2="121.92" width="0.1524" layer="91"/>
<label x="147.32" y="121.92" size="1.778" layer="95"/>
<probe x="157.48" y="129.54" size="1.778" layer="89" probetype="3"/>
<pinref part="X10" gate="G$1" pin="Y"/>
</segment>
</net>
<net name="NOR" class="0">
<segment>
<wire x1="144.78" y1="152.4" x2="157.48" y2="152.4" width="0.1524" layer="91"/>
<label x="149.86" y="152.4" size="1.778" layer="95"/>
<probe x="160.02" y="160.02" size="1.778" layer="89" probetype="3"/>
<pinref part="X6" gate="G$1" pin="Y"/>
</segment>
</net>
<net name="OR" class="0">
<segment>
<wire x1="157.48" y1="137.16" x2="144.78" y2="137.16" width="0.1524" layer="91"/>
<label x="149.86" y="137.16" size="1.778" layer="95"/>
<probe x="157.48" y="142.24" size="1.778" layer="89" probetype="3"/>
<pinref part="X9" gate="G$1" pin="Y"/>
</segment>
</net>
<net name="NAND" class="0">
<segment>
<pinref part="X17" gate="G$1" pin="Y"/>
<wire x1="144.78" y1="58.42" x2="157.48" y2="58.42" width="0.1524" layer="91"/>
<probe x="157.48" y="66.04" size="1.778" layer="89" probetype="3"/>
<label x="147.32" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<plain>
<text x="12.7" y="200.66" size="5.08" layer="94">FlipFlops and Binary Counter</text>
<text x="210.82" y="190.5" size="2.54" layer="94">Binary counter: value is DCBA 
MSD is D, LSD is A</text>
<text x="63.5" y="96.52" size="2.54" layer="94">Gated SR Latch</text>
<text x="198.12" y="96.52" size="2.54" layer="94">D FLIP FLOP</text>
</plain>
<instances>
<instance part="FRAME2" gate="G$1" x="0" y="0"/>
<instance part="FRAME2" gate="G$2" x="172.72" y="0">
<attribute name="LAST_DATE_TIME" x="185.42" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="259.08" y="1.27" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="190.5" y="19.05" size="2.54" layer="94"/>
</instance>
<instance part="X2" gate="G$1" x="63.5" y="142.24">
<attribute name="NAME" x="66.04" y="153.67" size="1.778" layer="95"/>
</instance>
<instance part="X3" gate="G$1" x="119.38" y="149.86">
<attribute name="NAME" x="121.92" y="161.29" size="1.778" layer="95"/>
</instance>
<instance part="X4" gate="G$1" x="160.02" y="149.86">
<attribute name="NAME" x="162.56" y="161.29" size="1.778" layer="95"/>
</instance>
<instance part="X5" gate="G$1" x="200.66" y="149.86">
<attribute name="NAME" x="203.2" y="161.29" size="1.778" layer="95"/>
</instance>
<instance part="X7" gate="G$1" x="99.06" y="78.74">
<attribute name="NAME" x="91.44" y="85.09" size="1.778" layer="95"/>
<attribute name="VALUE" x="91.44" y="71.12" size="1.778" layer="96"/>
</instance>
<instance part="X8" gate="G$1" x="99.06" y="53.34">
<attribute name="NAME" x="91.44" y="59.69" size="1.778" layer="95"/>
<attribute name="VALUE" x="91.44" y="45.72" size="1.778" layer="96"/>
</instance>
<instance part="X18" gate="G$1" x="68.58" y="81.28">
<attribute name="NAME" x="60.96" y="87.63" size="1.778" layer="95"/>
<attribute name="VALUE" x="60.96" y="73.66" size="1.778" layer="96"/>
</instance>
<instance part="X19" gate="G$1" x="68.58" y="50.8">
<attribute name="NAME" x="60.96" y="57.15" size="1.778" layer="95"/>
<attribute name="VALUE" x="60.96" y="43.18" size="1.778" layer="96"/>
</instance>
<instance part="U2" gate="G$1" x="208.28" y="73.66">
<attribute name="NAME" x="200.66" y="81.28" size="1.778" layer="95"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="!Q1A" class="0">
<segment>
<wire x1="76.2" y1="134.62" x2="81.28" y2="134.62" width="0.1524" layer="91"/>
<label x="78.74" y="134.62" size="1.778" layer="95"/>
<pinref part="X2" gate="G$1" pin="!Q"/>
</segment>
</net>
<net name="JSRC" class="0">
<segment>
<label x="45.72" y="149.86" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="50.8" y1="149.86" x2="45.72" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="J"/>
</segment>
</net>
<net name="KSRC" class="0">
<segment>
<label x="48.26" y="134.62" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="50.8" y1="134.62" x2="48.26" y2="134.62" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="K"/>
</segment>
</net>
<net name="DOUT" class="0">
<segment>
<wire x1="220.98" y1="78.74" x2="231.14" y2="78.74" width="0.1524" layer="91"/>
<label x="226.06" y="78.74" size="1.778" layer="95"/>
<probe x="236.22" y="86.36" size="1.778" layer="89" probetype="3"/>
<pinref part="U2" gate="G$1" pin="Q"/>
</segment>
</net>
<net name="DSRC" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="D"/>
<wire x1="195.58" y1="78.74" x2="193.04" y2="78.74" width="0.1524" layer="91"/>
<label x="193.04" y="78.74" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SET_SIG" class="0">
<segment>
<wire x1="63.5" y1="160.02" x2="63.5" y2="157.48" width="0.1524" layer="91"/>
<wire x1="63.5" y1="160.02" x2="55.88" y2="160.02" width="0.1524" layer="91"/>
<label x="55.88" y="160.02" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="X2" gate="G$1" pin="SET"/>
</segment>
<segment>
<wire x1="160.02" y1="165.1" x2="160.02" y2="167.64" width="0.1524" layer="91"/>
<wire x1="160.02" y1="167.64" x2="119.38" y2="167.64" width="0.1524" layer="91"/>
<wire x1="119.38" y1="167.64" x2="119.38" y2="165.1" width="0.1524" layer="91"/>
<wire x1="119.38" y1="167.64" x2="111.76" y2="167.64" width="0.1524" layer="91"/>
<junction x="119.38" y="167.64"/>
<label x="111.76" y="167.64" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="200.66" y1="165.1" x2="200.66" y2="167.64" width="0.1524" layer="91"/>
<wire x1="200.66" y1="167.64" x2="160.02" y2="167.64" width="0.1524" layer="91"/>
<junction x="160.02" y="167.64"/>
<pinref part="X3" gate="G$1" pin="SET"/>
<pinref part="X4" gate="G$1" pin="SET"/>
<pinref part="X5" gate="G$1" pin="SET"/>
</segment>
<segment>
<label x="43.18" y="83.82" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="X18" gate="G$1" pin="A"/>
<wire x1="43.18" y1="83.82" x2="55.88" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="S"/>
<wire x1="208.28" y1="86.36" x2="208.28" y2="88.9" width="0.1524" layer="91"/>
<label x="208.28" y="88.9" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="RST_SIG" class="0">
<segment>
<wire x1="63.5" y1="124.46" x2="63.5" y2="127" width="0.1524" layer="91"/>
<wire x1="63.5" y1="124.46" x2="55.88" y2="124.46" width="0.1524" layer="91"/>
<label x="55.88" y="124.46" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="X2" gate="G$1" pin="RST"/>
</segment>
<segment>
<wire x1="160.02" y1="134.62" x2="160.02" y2="124.46" width="0.1524" layer="91"/>
<wire x1="160.02" y1="124.46" x2="119.38" y2="124.46" width="0.1524" layer="91"/>
<wire x1="119.38" y1="124.46" x2="119.38" y2="134.62" width="0.1524" layer="91"/>
<wire x1="119.38" y1="124.46" x2="111.76" y2="124.46" width="0.1524" layer="91"/>
<junction x="119.38" y="124.46"/>
<label x="111.76" y="124.46" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="200.66" y1="134.62" x2="200.66" y2="124.46" width="0.1524" layer="91"/>
<wire x1="200.66" y1="124.46" x2="160.02" y2="124.46" width="0.1524" layer="91"/>
<junction x="160.02" y="124.46"/>
<pinref part="X3" gate="G$1" pin="RST"/>
<pinref part="X4" gate="G$1" pin="RST"/>
<pinref part="X5" gate="G$1" pin="RST"/>
</segment>
<segment>
<pinref part="X19" gate="G$1" pin="B"/>
<wire x1="55.88" y1="48.26" x2="43.18" y2="48.26" width="0.1524" layer="91"/>
<label x="43.18" y="48.26" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="R"/>
<wire x1="208.28" y1="60.96" x2="208.28" y2="58.42" width="0.1524" layer="91"/>
<label x="208.28" y="58.42" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="CLK" class="0">
<segment>
<wire x1="45.72" y1="142.24" x2="50.8" y2="142.24" width="0.1524" layer="91"/>
<label x="45.72" y="142.24" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="X2" gate="G$1" pin="CLK"/>
</segment>
<segment>
<pinref part="X18" gate="G$1" pin="B"/>
<wire x1="55.88" y1="78.74" x2="53.34" y2="78.74" width="0.1524" layer="91"/>
<pinref part="X19" gate="G$1" pin="A"/>
<wire x1="53.34" y1="53.34" x2="55.88" y2="53.34" width="0.1524" layer="91"/>
<wire x1="53.34" y1="78.74" x2="53.34" y2="66.04" width="0.1524" layer="91"/>
<wire x1="53.34" y1="66.04" x2="53.34" y2="53.34" width="0.1524" layer="91"/>
<wire x1="53.34" y1="53.34" x2="53.34" y2="66.04" width="0.1524" layer="91"/>
<junction x="53.34" y="66.04"/>
<wire x1="53.34" y1="66.04" x2="45.72" y2="66.04" width="0.1524" layer="91"/>
<label x="45.72" y="66.04" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="CLK"/>
<wire x1="195.58" y1="73.66" x2="190.5" y2="73.66" width="0.1524" layer="91"/>
<label x="190.5" y="73.66" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="LOGIC1" class="0">
<segment>
<wire x1="106.68" y1="142.24" x2="101.6" y2="142.24" width="0.1524" layer="91"/>
<wire x1="101.6" y1="142.24" x2="101.6" y2="157.48" width="0.1524" layer="91"/>
<wire x1="101.6" y1="157.48" x2="106.68" y2="157.48" width="0.1524" layer="91"/>
<wire x1="101.6" y1="157.48" x2="99.06" y2="157.48" width="0.1524" layer="91"/>
<junction x="101.6" y="157.48"/>
<label x="99.06" y="157.48" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="147.32" y1="129.54" x2="144.78" y2="129.54" width="0.1524" layer="91"/>
<wire x1="144.78" y1="129.54" x2="101.6" y2="129.54" width="0.1524" layer="91"/>
<wire x1="101.6" y1="129.54" x2="101.6" y2="142.24" width="0.1524" layer="91"/>
<junction x="101.6" y="142.24"/>
<wire x1="187.96" y1="157.48" x2="185.42" y2="157.48" width="0.1524" layer="91"/>
<wire x1="185.42" y1="157.48" x2="185.42" y2="142.24" width="0.1524" layer="91"/>
<wire x1="185.42" y1="142.24" x2="187.96" y2="142.24" width="0.1524" layer="91"/>
<wire x1="185.42" y1="142.24" x2="185.42" y2="129.54" width="0.1524" layer="91"/>
<junction x="185.42" y="142.24"/>
<wire x1="185.42" y1="129.54" x2="147.32" y2="129.54" width="0.1524" layer="91"/>
<wire x1="147.32" y1="157.48" x2="144.78" y2="157.48" width="0.1524" layer="91"/>
<wire x1="144.78" y1="157.48" x2="144.78" y2="142.24" width="0.1524" layer="91"/>
<wire x1="144.78" y1="142.24" x2="147.32" y2="142.24" width="0.1524" layer="91"/>
<wire x1="144.78" y1="142.24" x2="144.78" y2="129.54" width="0.1524" layer="91"/>
<junction x="144.78" y="142.24"/>
<junction x="144.78" y="129.54"/>
<pinref part="X3" gate="G$1" pin="J"/>
<pinref part="X3" gate="G$1" pin="K"/>
<pinref part="X4" gate="G$1" pin="J"/>
<pinref part="X4" gate="G$1" pin="K"/>
<pinref part="X5" gate="G$1" pin="J"/>
<pinref part="X5" gate="G$1" pin="K"/>
</segment>
</net>
<net name="!Q1B" class="0">
<segment>
<wire x1="132.08" y1="142.24" x2="137.16" y2="142.24" width="0.1524" layer="91"/>
<label x="134.62" y="142.24" size="1.778" layer="95"/>
<pinref part="X3" gate="G$1" pin="!Q"/>
</segment>
</net>
<net name="Q1A" class="0">
<segment>
<wire x1="106.68" y1="149.86" x2="104.14" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="CLK"/>
<wire x1="104.14" y1="149.86" x2="104.14" y2="175.26" width="0.1524" layer="91"/>
<junction x="104.14" y="149.86"/>
<wire x1="104.14" y1="175.26" x2="218.44" y2="175.26" width="0.1524" layer="91"/>
<wire x1="218.44" y1="175.26" x2="231.14" y2="175.26" width="0.1524" layer="91"/>
<probe x="236.22" y="182.88" size="1.778" layer="89" probetype="3"/>
<label x="223.52" y="175.26" size="1.778" layer="95"/>
<wire x1="76.2" y1="149.86" x2="83.82" y2="149.86" width="0.1524" layer="91"/>
<probe x="83.82" y="142.24" size="1.778" layer="89" probetype="3"/>
<pinref part="X2" gate="G$1" pin="Q"/>
<wire x1="104.14" y1="149.86" x2="86.36" y2="149.86" width="0.1524" layer="91"/>
<wire x1="86.36" y1="149.86" x2="83.82" y2="149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Q1B" class="0">
<segment>
<wire x1="132.08" y1="157.48" x2="134.62" y2="157.48" width="0.1524" layer="91"/>
<wire x1="134.62" y1="157.48" x2="134.62" y2="149.86" width="0.1524" layer="91"/>
<wire x1="134.62" y1="149.86" x2="147.32" y2="149.86" width="0.1524" layer="91"/>
<label x="134.62" y="154.94" size="1.778" layer="95"/>
<probe x="236.22" y="180.34" size="1.778" layer="89" probetype="3"/>
<pinref part="X3" gate="G$1" pin="Q"/>
<pinref part="X4" gate="G$1" pin="CLK"/>
<wire x1="134.62" y1="157.48" x2="134.62" y2="172.72" width="0.1524" layer="91"/>
<junction x="134.62" y="157.48"/>
<wire x1="134.62" y1="172.72" x2="220.98" y2="172.72" width="0.1524" layer="91"/>
<wire x1="220.98" y1="172.72" x2="231.14" y2="172.72" width="0.1524" layer="91"/>
<label x="223.52" y="172.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="Q1C" class="0">
<segment>
<wire x1="172.72" y1="157.48" x2="175.26" y2="157.48" width="0.1524" layer="91"/>
<wire x1="175.26" y1="157.48" x2="177.8" y2="157.48" width="0.1524" layer="91"/>
<wire x1="177.8" y1="157.48" x2="177.8" y2="149.86" width="0.1524" layer="91"/>
<wire x1="177.8" y1="149.86" x2="187.96" y2="149.86" width="0.1524" layer="91"/>
<label x="177.8" y="152.4" size="1.778" layer="95"/>
<probe x="236.22" y="177.8" size="1.778" layer="89" probetype="3"/>
<pinref part="X4" gate="G$1" pin="Q"/>
<pinref part="X5" gate="G$1" pin="CLK"/>
<wire x1="177.8" y1="157.48" x2="177.8" y2="170.18" width="0.1524" layer="91"/>
<junction x="177.8" y="157.48"/>
<wire x1="177.8" y1="170.18" x2="215.9" y2="170.18" width="0.1524" layer="91"/>
<wire x1="215.9" y1="170.18" x2="218.44" y2="170.18" width="0.1524" layer="91"/>
<wire x1="218.44" y1="170.18" x2="231.14" y2="170.18" width="0.1524" layer="91"/>
<label x="223.52" y="170.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="!Q1C" class="0">
<segment>
<wire x1="172.72" y1="142.24" x2="177.8" y2="142.24" width="0.1524" layer="91"/>
<label x="175.26" y="142.24" size="1.778" layer="95"/>
<pinref part="X4" gate="G$1" pin="!Q"/>
</segment>
</net>
<net name="Q1D" class="0">
<segment>
<wire x1="213.36" y1="157.48" x2="220.98" y2="157.48" width="0.1524" layer="91"/>
<label x="215.9" y="157.48" size="1.778" layer="95"/>
<probe x="236.22" y="175.26" size="1.778" layer="89" probetype="3"/>
<pinref part="X5" gate="G$1" pin="Q"/>
<wire x1="220.98" y1="157.48" x2="220.98" y2="167.64" width="0.1524" layer="91"/>
<wire x1="220.98" y1="167.64" x2="231.14" y2="167.64" width="0.1524" layer="91"/>
<label x="223.52" y="167.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="!Q1D" class="0">
<segment>
<wire x1="213.36" y1="142.24" x2="223.52" y2="142.24" width="0.1524" layer="91"/>
<label x="215.9" y="142.24" size="1.778" layer="95"/>
<pinref part="X5" gate="G$1" pin="!Q"/>
</segment>
</net>
<net name="!DOUT" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="!Q"/>
<wire x1="220.98" y1="68.58" x2="231.14" y2="68.58" width="0.1524" layer="91"/>
<label x="226.06" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="Q" class="0">
<segment>
<wire x1="114.3" y1="78.74" x2="111.76" y2="78.74" width="0.1524" layer="91"/>
<wire x1="114.3" y1="78.74" x2="116.84" y2="78.74" width="0.1524" layer="91"/>
<label x="134.62" y="78.74" size="1.778" layer="95" xref="yes"/>
<wire x1="116.84" y1="78.74" x2="134.62" y2="78.74" width="0.1524" layer="91"/>
<wire x1="86.36" y1="55.88" x2="83.82" y2="55.88" width="0.1524" layer="91"/>
<wire x1="83.82" y1="55.88" x2="81.28" y2="55.88" width="0.1524" layer="91"/>
<wire x1="81.28" y1="55.88" x2="81.28" y2="60.96" width="0.1524" layer="91"/>
<wire x1="81.28" y1="60.96" x2="116.84" y2="73.66" width="0.1524" layer="91"/>
<wire x1="116.84" y1="73.66" x2="116.84" y2="78.74" width="0.1524" layer="91"/>
<junction x="116.84" y="78.74"/>
<label x="109.22" y="71.12" size="1.778" layer="95"/>
<probe x="127" y="88.9" size="1.778" layer="89" probetype="3"/>
<pinref part="X7" gate="G$1" pin="Y"/>
<pinref part="X8" gate="G$1" pin="A"/>
</segment>
</net>
<net name="!Q" class="0">
<segment>
<wire x1="111.76" y1="53.34" x2="116.84" y2="53.34" width="0.1524" layer="91"/>
<label x="134.62" y="53.34" size="1.778" layer="95" xref="yes"/>
<wire x1="116.84" y1="53.34" x2="134.62" y2="53.34" width="0.1524" layer="91"/>
<wire x1="81.28" y1="76.2" x2="86.36" y2="76.2" width="0.1524" layer="91"/>
<wire x1="81.28" y1="76.2" x2="81.28" y2="71.12" width="0.1524" layer="91"/>
<wire x1="81.28" y1="71.12" x2="116.84" y2="58.42" width="0.1524" layer="91"/>
<wire x1="116.84" y1="58.42" x2="116.84" y2="53.34" width="0.1524" layer="91"/>
<junction x="116.84" y="53.34"/>
<label x="104.14" y="63.5" size="1.778" layer="95"/>
<pinref part="X7" gate="G$1" pin="B"/>
<pinref part="X8" gate="G$1" pin="Y"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X18" gate="G$1" pin="Y"/>
<pinref part="X7" gate="G$1" pin="A"/>
<wire x1="81.28" y1="81.28" x2="86.36" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="X8" gate="G$1" pin="B"/>
<pinref part="X19" gate="G$1" pin="Y"/>
<wire x1="86.36" y1="50.8" x2="81.28" y2="50.8" width="0.1524" layer="91"/>
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
