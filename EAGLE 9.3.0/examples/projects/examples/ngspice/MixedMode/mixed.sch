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
<library name="ngspice-simulation" urn="urn:adsk.eagle:library:527439">
<description>SPICE compatible library parts</description>
<packages>
</packages>
<symbols>
<symbol name="R" urn="urn:adsk.eagle:symbol:527454/1" library_version="16">
<description>RESISTOR</description>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="-2.54" y="2.54" size="1.778" layer="94">&gt;NAME</text>
<text x="-2.54" y="-5.842" size="1.778" layer="94">&gt;SPICEMODEL</text>
<text x="-2.54" y="-3.302" size="1.778" layer="94">&gt;VALUE</text>
<text x="-2.54" y="-8.382" size="1.778" layer="94">&gt;SPICEEXTRA</text>
</symbol>
<symbol name="0" urn="urn:adsk.eagle:symbol:527455/1" library_version="16">
<description>Simulation ground symbol (spice node 0)</description>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<pin name="0" x="0" y="0" visible="off" length="point" direction="sup"/>
</symbol>
<symbol name="C" urn="urn:adsk.eagle:symbol:527449/1" library_version="16">
<description>Capacitor</description>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<text x="2.54" y="2.54" size="1.778" layer="94">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.778" layer="94">&gt;SPICEMODEL</text>
<text x="2.54" y="0" size="1.778" layer="94">&gt;VALUE</text>
<text x="2.54" y="-5.08" size="1.778" layer="94">&gt;SPICEEXTRA</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" urn="urn:adsk.eagle:component:527474/3" prefix="R" uservalue="yes" library_version="16">
<description>RESISTOR</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
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
<pinmapping spiceprefix="R">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
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
<deviceset name="C" urn="urn:adsk.eagle:component:527468/3" prefix="C" uservalue="yes" library_version="16">
<description>CAPACITOR</description>
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
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
<pinmapping spiceprefix="C">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
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
<symbol name="OPAMP" urn="urn:adsk.eagle:symbol:5272028/1" library_version="1">
<description>Operational amplifier with power pins</description>
<pin name="P" x="-12.7" y="5.08" visible="off" length="middle"/>
<pin name="N" x="-12.7" y="-5.08" visible="off" length="middle"/>
<pin name="VDD" x="2.54" y="10.16" visible="off" length="middle" direction="pwr" rot="R270"/>
<pin name="VSS" x="2.54" y="-10.16" visible="off" length="middle" direction="pwr" rot="R90"/>
<pin name="VOUT" x="17.78" y="0" visible="off" length="middle" rot="R180"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="12.7" y2="0" width="0.254" layer="94"/>
<wire x1="12.7" y1="0" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-3.81" y2="5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="6.096" x2="-5.08" y2="3.81" width="0.254" layer="94"/>
<wire x1="-6.35" y1="-5.08" x2="-3.81" y2="-5.08" width="0.254" layer="94"/>
<text x="-1.27" y="2.54" size="1.778" layer="94">VDD</text>
<text x="-1.27" y="-3.81" size="1.778" layer="94">VSS</text>
<text x="7.62" y="-5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="7.62" y="-7.62" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="7.62" y="-10.16" size="1.778" layer="97">&gt;SPICEEXTRA</text>
<text x="7.62" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
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
<deviceset name="OPAMP" urn="urn:adsk.eagle:component:5272056/1" prefix="X" library_version="1">
<description>Operational amplifier with power pins</description>
<gates>
<gate name="G$1" symbol="OPAMP" x="0" y="0"/>
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
<pinmap gate="G$1" pin="N" pinorder="2"/>
<pinmap gate="G$1" pin="P" pinorder="1"/>
<pinmap gate="G$1" pin="VDD" pinorder="3"/>
<pinmap gate="G$1" pin="VOUT" pinorder="5"/>
<pinmap gate="G$1" pin="VSS" pinorder="4"/>
</pinmapping>
<model name="OPAMP">
* Autodesk EAGLE
* BASIC OP AMP MODEL
* Device Pins In+ In- vdd vss Vout
* vdd vss unused in this model!!
.SUBCKT opamp 1 2 vdd vss vout
*
* INPUT
RIN   1   2   1e9
*
*  AMPLIFIER STAGE: GAIN, POLE, SLEW
*   Aol=10000, fu=1000000 Hz
G1   0    10  VALUE = { 1e-2 * V(1,2)  }
R1   10   0   1e6
C1   10   0   1.59e-9
*
* 2ND POLE 
G2   0 20   10 0  1e-6
R2   20       0     1e6
C2   20       0     3.3e-14
*
* 3RD POLE 
G3   0 30   20 0 1e-6
R3   30       0     1e6
C3   30       0     3.3e-14
*
* OUTPUT STAGE
EBUFFER 80 0  30  0    1
ROUT 80 vout 100
.ENDS opamp</model>
</spice>
</deviceset>
</devicesets>
</library>
<library name="ngspice-digital" urn="urn:adsk.eagle:library:5271971">
<description>SPICE compatible library parts</description>
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
<symbol name="DTOAB" urn="urn:adsk.eagle:symbol:5271992/1" library_version="1">
<description>Digital to Analog Bridge</description>
<pin name="DIG" x="-5.08" y="0" visible="off" length="short"/>
<pin name="AN" x="2.54" y="0" visible="off" length="short" rot="R180"/>
<text x="-3.048" y="1.27" size="1.016" layer="94">D</text>
<text x="-0.254" y="1.27" size="1.016" layer="94">A</text>
<wire x1="-2.54" y1="0" x2="-3.048" y2="0.508" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-3.048" y2="-0.508" width="0.254" layer="94"/>
<wire x1="1.524" y1="0" x2="1.016" y2="0.508" width="0.254" layer="94"/>
<wire x1="1.524" y1="0" x2="1.016" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-1.778" y1="1.778" x2="-0.508" y2="1.778" width="0.254" layer="94"/>
<wire x1="-0.508" y1="1.778" x2="-0.762" y2="2.032" width="0.254" layer="94"/>
<wire x1="-0.508" y1="1.778" x2="-0.762" y2="1.524" width="0.254" layer="94"/>
<circle x="-1.27" y="0" radius="1.04726875" width="0.254" layer="94"/>
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
<deviceset name="DTOAB" urn="urn:adsk.eagle:component:5272014/1" prefix="X" library_version="1">
<description>Digital to Analog Bridge</description>
<gates>
<gate name="G$1" symbol="DTOAB" x="-5.08" y="-2.54"/>
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
<pinmap gate="G$1" pin="AN" pinorder="2"/>
<pinmap gate="G$1" pin="DIG" pinorder="1"/>
</pinmapping>
<model name="DTOAB">
**********************
* Autodesk EAGLE - SPICE Model File
**********************
.SUBCKT DTOAB D A
abridge [D] [A] dac_buff
.model dac_buff dac_bridge(out_low = 0.3 out_high = 2.5)
.ENDS DTOAB</model>
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
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_A_L" device=""/>
<part name="X1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="OPAMP" device=""/>
<part name="R1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="R" device="" value="10k"/>
<part name="R2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="R" device="" value="1k"/>
<part name="V1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 1.5V AC 0 PULSE(0 300m 0 1n 1n 3.3m 7m)"/>
<part name="X_1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="X_2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="X_3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="V2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 3V AC 0"/>
<part name="X_4" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="X2" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="ATODB" device=""/>
<part name="X_5" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="V3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 0V AC 0 PULSE(0 3 0 1n 1n 1m 2m)"/>
<part name="X_6" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="V4" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 3V AC 0"/>
<part name="X_7" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="V5" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 0V AC 0"/>
<part name="X14" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="ATODB" device=""/>
<part name="X15" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="ATODB" device=""/>
<part name="X16" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="ATODB" device=""/>
<part name="X3" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="AND" device=""/>
<part name="X4" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="OR" device=""/>
<part name="X6" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="DFF" device=""/>
<part name="X_8" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="V6" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 0V AC 0 PULSE(0 3 5m 1n 1n 2m 1000)"/>
<part name="X5" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="ATODB" device=""/>
<part name="X_9" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="V7" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 0V AC 0 PULSE(0 3 0 1n 1n 2m 1000)"/>
<part name="X7" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="ATODB" device=""/>
<part name="C1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="C" device="" value="1u"/>
<part name="R3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="R" device="" value="1k"/>
<part name="X_10" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="X8" library="ngspice-digital" library_urn="urn:adsk.eagle:library:5271971" deviceset="DTOAB" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="10.16" y="7.62" size="2.54" layer="94">.PARAM
rd=1n
fd=1n</text>
<text x="101.6" y="182.88" size="2.54" layer="94">CLK with 2ms period</text>
<text x="220.98" y="182.88" size="2.54" layer="94">RST @ 5ms</text>
<text x="165.1" y="182.88" size="2.54" layer="94">SET @ 0s</text>
<text x="76.2" y="119.38" size="5.08" layer="94">Analog amplifier into digital logic circuit</text>
<text x="30.48" y="182.88" size="2.54" layer="94">Fixed LOGIC level sources</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="172.72" y="0">
<attribute name="LAST_DATE_TIME" x="185.42" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="259.08" y="1.27" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="190.5" y="19.05" size="2.54" layer="94"/>
</instance>
<instance part="X1" gate="G$1" x="76.2" y="81.28" rot="MR180">
<attribute name="NAME" x="83.82" y="86.36" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="83.82" y="93.98" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="R1" gate="G$1" x="76.2" y="104.14">
<attribute name="NAME" x="73.66" y="106.68" size="1.778" layer="94"/>
<attribute name="VALUE" x="73.66" y="100.838" size="1.778" layer="94"/>
</instance>
<instance part="R2" gate="G$1" x="40.64" y="86.36">
<attribute name="NAME" x="38.1" y="88.9" size="1.778" layer="94"/>
<attribute name="VALUE" x="38.1" y="83.058" size="1.778" layer="94"/>
</instance>
<instance part="V1" gate="G$1" x="17.78" y="66.04">
<attribute name="NAME" x="25.4" y="68.58" size="1.778" layer="95"/>
<attribute name="VALUE" x="25.4" y="66.04" size="1.778" layer="96"/>
</instance>
<instance part="X_1" gate="G$1" x="17.78" y="55.88"/>
<instance part="X_2" gate="G$1" x="17.78" y="83.82"/>
<instance part="X_3" gate="G$1" x="83.82" y="93.98"/>
<instance part="V2" gate="G$1" x="78.74" y="53.34">
<attribute name="NAME" x="86.36" y="55.88" size="1.778" layer="95"/>
<attribute name="VALUE" x="86.36" y="53.34" size="1.778" layer="96"/>
</instance>
<instance part="X_4" gate="G$1" x="78.74" y="43.18"/>
<instance part="X2" gate="G$1" x="124.46" y="81.28"/>
<instance part="X_5" gate="G$1" x="101.6" y="144.78"/>
<instance part="V3" gate="G$1" x="101.6" y="157.48">
<attribute name="NAME" x="109.22" y="160.02" size="1.778" layer="95"/>
<attribute name="VALUE" x="109.22" y="157.48" size="1.778" layer="96"/>
</instance>
<instance part="X_6" gate="G$1" x="12.7" y="144.78"/>
<instance part="V4" gate="G$1" x="12.7" y="157.48">
<attribute name="NAME" x="20.32" y="160.02" size="1.778" layer="95"/>
<attribute name="VALUE" x="20.32" y="157.48" size="1.778" layer="96"/>
</instance>
<instance part="X_7" gate="G$1" x="53.34" y="144.78"/>
<instance part="V5" gate="G$1" x="53.34" y="157.48">
<attribute name="NAME" x="60.96" y="160.02" size="1.778" layer="95"/>
<attribute name="VALUE" x="60.96" y="157.48" size="1.778" layer="96"/>
</instance>
<instance part="X14" gate="G$1" x="25.4" y="172.72"/>
<instance part="X15" gate="G$1" x="66.04" y="172.72"/>
<instance part="X16" gate="G$1" x="114.3" y="172.72"/>
<instance part="X3" gate="G$1" x="215.9" y="78.74">
<attribute name="NAME" x="208.28" y="85.09" size="1.778" layer="95"/>
<attribute name="VALUE" x="208.28" y="71.12" size="1.778" layer="96"/>
</instance>
<instance part="X4" gate="G$1" x="215.9" y="58.42">
<attribute name="NAME" x="208.28" y="64.77" size="1.778" layer="95"/>
<attribute name="VALUE" x="208.28" y="50.8" size="1.778" layer="96"/>
</instance>
<instance part="X6" gate="G$1" x="160.02" y="76.2">
<attribute name="NAME" x="152.4" y="83.82" size="1.778" layer="95"/>
</instance>
<instance part="X_8" gate="G$1" x="220.98" y="144.78"/>
<instance part="V6" gate="G$1" x="220.98" y="157.48">
<attribute name="NAME" x="228.6" y="160.02" size="1.778" layer="95"/>
<attribute name="VALUE" x="228.6" y="157.48" size="1.778" layer="96"/>
</instance>
<instance part="X5" gate="G$1" x="228.6" y="172.72"/>
<instance part="X_9" gate="G$1" x="160.02" y="144.78"/>
<instance part="V7" gate="G$1" x="160.02" y="157.48">
<attribute name="NAME" x="167.64" y="160.02" size="1.778" layer="95"/>
<attribute name="VALUE" x="167.64" y="157.48" size="1.778" layer="96"/>
</instance>
<instance part="X7" gate="G$1" x="167.64" y="172.72"/>
<instance part="C1" gate="G$1" x="129.54" y="38.1" rot="R90">
<attribute name="NAME" x="127" y="40.64" size="1.778" layer="94" rot="R90"/>
<attribute name="VALUE" x="129.54" y="40.64" size="1.778" layer="94" rot="R90"/>
</instance>
<instance part="R3" gate="G$1" x="119.38" y="22.86" rot="R90">
<attribute name="NAME" x="116.84" y="20.32" size="1.778" layer="94" rot="R90"/>
<attribute name="VALUE" x="122.682" y="20.32" size="1.778" layer="94" rot="R90"/>
</instance>
<instance part="X_10" gate="G$1" x="119.38" y="12.7"/>
<instance part="X8" gate="G$1" x="142.24" y="38.1" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="0" class="0">
<segment>
<pinref part="V1" gate="G$1" pin="-"/>
<pinref part="X_1" gate="G$1" pin="0"/>
<wire x1="17.78" y1="55.88" x2="17.78" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X_2" gate="G$1" pin="0"/>
<wire x1="17.78" y1="83.82" x2="17.78" y2="86.36" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="17.78" y1="86.36" x2="35.56" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X_3" gate="G$1" pin="0"/>
<wire x1="83.82" y1="93.98" x2="83.82" y2="96.52" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="VSS"/>
<wire x1="83.82" y1="96.52" x2="78.74" y2="96.52" width="0.1524" layer="91"/>
<wire x1="78.74" y1="96.52" x2="78.74" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X_4" gate="G$1" pin="0"/>
<pinref part="V2" gate="G$1" pin="-"/>
<wire x1="78.74" y1="43.18" x2="78.74" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X_5" gate="G$1" pin="0"/>
<wire x1="101.6" y1="144.78" x2="101.6" y2="149.86" width="0.1524" layer="91"/>
<pinref part="V3" gate="G$1" pin="-"/>
</segment>
<segment>
<pinref part="X_6" gate="G$1" pin="0"/>
<wire x1="12.7" y1="144.78" x2="12.7" y2="149.86" width="0.1524" layer="91"/>
<pinref part="V4" gate="G$1" pin="-"/>
</segment>
<segment>
<pinref part="X_7" gate="G$1" pin="0"/>
<wire x1="53.34" y1="144.78" x2="53.34" y2="149.86" width="0.1524" layer="91"/>
<pinref part="V5" gate="G$1" pin="-"/>
</segment>
<segment>
<pinref part="X_8" gate="G$1" pin="0"/>
<wire x1="220.98" y1="144.78" x2="220.98" y2="149.86" width="0.1524" layer="91"/>
<pinref part="V6" gate="G$1" pin="-"/>
</segment>
<segment>
<pinref part="X_9" gate="G$1" pin="0"/>
<wire x1="160.02" y1="144.78" x2="160.02" y2="149.86" width="0.1524" layer="91"/>
<pinref part="V7" gate="G$1" pin="-"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="X_10" gate="G$1" pin="0"/>
<wire x1="119.38" y1="12.7" x2="119.38" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="X1" gate="G$1" pin="N"/>
<wire x1="45.72" y1="86.36" x2="53.34" y2="86.36" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="53.34" y1="86.36" x2="63.5" y2="86.36" width="0.1524" layer="91"/>
<wire x1="71.12" y1="104.14" x2="53.34" y2="104.14" width="0.1524" layer="91"/>
<wire x1="53.34" y1="104.14" x2="53.34" y2="86.36" width="0.1524" layer="91"/>
<junction x="53.34" y="86.36"/>
</segment>
</net>
<net name="A_OUT" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="81.28" y1="104.14" x2="99.06" y2="104.14" width="0.1524" layer="91"/>
<wire x1="99.06" y1="104.14" x2="99.06" y2="81.28" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="VOUT"/>
<wire x1="99.06" y1="81.28" x2="93.98" y2="81.28" width="0.1524" layer="91"/>
<wire x1="99.06" y1="81.28" x2="119.38" y2="81.28" width="0.1524" layer="91"/>
<junction x="99.06" y="81.28"/>
<label x="104.14" y="81.28" size="1.778" layer="95"/>
<probe x="109.22" y="93.98" size="1.778" layer="89" probetype="0"/>
<pinref part="X2" gate="G$1" pin="AN"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="V2" gate="G$1" pin="+"/>
<pinref part="X1" gate="G$1" pin="VDD"/>
<wire x1="78.74" y1="60.96" x2="78.74" y2="71.12" width="0.1524" layer="91"/>
<label x="78.74" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="VIN" class="0">
<segment>
<pinref part="V1" gate="G$1" pin="+"/>
<pinref part="X1" gate="G$1" pin="P"/>
<wire x1="17.78" y1="73.66" x2="17.78" y2="76.2" width="0.1524" layer="91"/>
<wire x1="17.78" y1="76.2" x2="63.5" y2="76.2" width="0.1524" layer="91"/>
<label x="35.56" y="76.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="L1" class="0">
<segment>
<wire x1="12.7" y1="172.72" x2="12.7" y2="165.1" width="0.1524" layer="91"/>
<wire x1="20.32" y1="172.72" x2="12.7" y2="172.72" width="0.1524" layer="91"/>
<pinref part="V4" gate="G$1" pin="+"/>
<label x="15.24" y="172.72" size="1.778" layer="95"/>
<pinref part="X14" gate="G$1" pin="AN"/>
</segment>
</net>
<net name="LOGIC1" class="0">
<segment>
<wire x1="27.94" y1="172.72" x2="33.02" y2="172.72" width="0.1524" layer="91"/>
<label x="33.02" y="172.72" size="1.778" layer="95" xref="yes"/>
<pinref part="X14" gate="G$1" pin="DIG"/>
</segment>
</net>
<net name="LOGIC0" class="0">
<segment>
<wire x1="68.58" y1="172.72" x2="73.66" y2="172.72" width="0.1524" layer="91"/>
<label x="73.66" y="172.72" size="1.778" layer="95" xref="yes"/>
<pinref part="X15" gate="G$1" pin="DIG"/>
</segment>
</net>
<net name="L0" class="0">
<segment>
<wire x1="53.34" y1="172.72" x2="53.34" y2="165.1" width="0.1524" layer="91"/>
<wire x1="60.96" y1="172.72" x2="53.34" y2="172.72" width="0.1524" layer="91"/>
<pinref part="V5" gate="G$1" pin="+"/>
<label x="55.88" y="172.72" size="1.778" layer="95"/>
<pinref part="X15" gate="G$1" pin="AN"/>
</segment>
</net>
<net name="CLKIN" class="0">
<segment>
<wire x1="109.22" y1="172.72" x2="101.6" y2="172.72" width="0.1524" layer="91"/>
<pinref part="V3" gate="G$1" pin="+"/>
<wire x1="101.6" y1="172.72" x2="101.6" y2="165.1" width="0.1524" layer="91"/>
<label x="99.06" y="172.72" size="1.778" layer="95"/>
<pinref part="X16" gate="G$1" pin="AN"/>
</segment>
</net>
<net name="CLK" class="0">
<segment>
<wire x1="116.84" y1="172.72" x2="124.46" y2="172.72" width="0.1524" layer="91"/>
<label x="124.46" y="172.72" size="1.778" layer="95" xref="yes"/>
<probe x="124.46" y="167.64" size="1.778" layer="89" probetype="3"/>
<pinref part="X16" gate="G$1" pin="DIG"/>
</segment>
<segment>
<wire x1="147.32" y1="76.2" x2="144.78" y2="76.2" width="0.1524" layer="91"/>
<label x="142.24" y="76.2" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="X6" gate="G$1" pin="CLK"/>
<wire x1="144.78" y1="76.2" x2="142.24" y2="76.2" width="0.1524" layer="91"/>
<wire x1="144.78" y1="76.2" x2="144.78" y2="60.96" width="0.1524" layer="91"/>
<junction x="144.78" y="76.2"/>
<pinref part="X4" gate="G$1" pin="B"/>
<wire x1="144.78" y1="60.96" x2="144.78" y2="55.88" width="0.1524" layer="91"/>
<wire x1="144.78" y1="55.88" x2="198.12" y2="55.88" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="B"/>
<wire x1="198.12" y1="55.88" x2="203.2" y2="55.88" width="0.1524" layer="91"/>
<wire x1="203.2" y1="76.2" x2="198.12" y2="76.2" width="0.1524" layer="91"/>
<wire x1="198.12" y1="76.2" x2="198.12" y2="55.88" width="0.1524" layer="91"/>
<junction x="198.12" y="55.88"/>
</segment>
</net>
<net name="AND" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="Y"/>
<wire x1="228.6" y1="78.74" x2="248.92" y2="78.74" width="0.1524" layer="91"/>
<label x="238.76" y="78.74" size="1.778" layer="95"/>
<probe x="236.22" y="88.9" size="1.778" layer="89" probetype="3"/>
</segment>
<segment>
<pinref part="X8" gate="G$1" pin="DIG"/>
<wire x1="147.32" y1="38.1" x2="152.4" y2="38.1" width="0.1524" layer="91"/>
<label x="152.4" y="38.1" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="OR" class="0">
<segment>
<pinref part="X4" gate="G$1" pin="Y"/>
<wire x1="228.6" y1="58.42" x2="248.92" y2="58.42" width="0.1524" layer="91"/>
<label x="238.76" y="58.42" size="1.778" layer="95"/>
<probe x="236.22" y="68.58" size="1.778" layer="89" probetype="3"/>
</segment>
</net>
<net name="A_OUT_DIG" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="DIG"/>
<wire x1="127" y1="81.28" x2="132.08" y2="81.28" width="0.1524" layer="91"/>
<label x="127" y="81.28" size="1.778" layer="95"/>
<wire x1="147.32" y1="81.28" x2="132.08" y2="81.28" width="0.1524" layer="91"/>
<probe x="149.86" y="96.52" size="1.778" layer="89" probetype="3"/>
<pinref part="X6" gate="G$1" pin="D"/>
</segment>
</net>
<net name="Q_OUT" class="0">
<segment>
<pinref part="X3" gate="G$1" pin="A"/>
<wire x1="172.72" y1="81.28" x2="193.04" y2="81.28" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="A"/>
<wire x1="193.04" y1="81.28" x2="203.2" y2="81.28" width="0.1524" layer="91"/>
<wire x1="203.2" y1="60.96" x2="193.04" y2="60.96" width="0.1524" layer="91"/>
<wire x1="193.04" y1="60.96" x2="193.04" y2="81.28" width="0.1524" layer="91"/>
<junction x="193.04" y="81.28"/>
<probe x="193.04" y="96.52" size="1.778" layer="89" probetype="3"/>
<label x="177.8" y="81.28" size="1.778" layer="95"/>
<pinref part="X6" gate="G$1" pin="Q"/>
</segment>
</net>
<net name="!A_BUF_DIG" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="!Q"/>
<wire x1="172.72" y1="71.12" x2="180.34" y2="71.12" width="0.1524" layer="91"/>
<label x="174.498" y="71.628" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="V6" gate="G$1" pin="+"/>
<wire x1="220.98" y1="165.1" x2="220.98" y2="172.72" width="0.1524" layer="91"/>
<pinref part="X5" gate="G$1" pin="AN"/>
<wire x1="220.98" y1="172.72" x2="223.52" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RST_SIG" class="0">
<segment>
<pinref part="X5" gate="G$1" pin="DIG"/>
<wire x1="231.14" y1="172.72" x2="241.3" y2="172.72" width="0.1524" layer="91"/>
<label x="241.3" y="172.72" size="1.778" layer="95" xref="yes"/>
<probe x="241.3" y="165.1" size="1.778" layer="89" probetype="3"/>
</segment>
<segment>
<pinref part="X6" gate="G$1" pin="R"/>
<wire x1="160.02" y1="63.5" x2="160.02" y2="60.96" width="0.1524" layer="91"/>
<wire x1="160.02" y1="60.96" x2="139.7" y2="60.96" width="0.1524" layer="91"/>
<label x="139.7" y="60.96" size="1.778" layer="95" rot="R180" xref="yes"/>
<probe x="165.1" y="58.42" size="1.778" layer="89" probetype="3"/>
</segment>
</net>
<net name="SET_SIG" class="0">
<segment>
<pinref part="X6" gate="G$1" pin="S"/>
<wire x1="160.02" y1="88.9" x2="160.02" y2="86.36" width="0.1524" layer="91"/>
<wire x1="160.02" y1="86.36" x2="160.02" y2="91.44" width="0.1524" layer="91"/>
<wire x1="160.02" y1="91.44" x2="144.78" y2="91.44" width="0.1524" layer="91"/>
<label x="144.78" y="91.44" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="X7" gate="G$1" pin="DIG"/>
<wire x1="170.18" y1="172.72" x2="175.26" y2="172.72" width="0.1524" layer="91"/>
<label x="175.26" y="172.72" size="1.778" layer="95" xref="yes"/>
<probe x="175.26" y="165.1" size="1.778" layer="89" probetype="3"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="V7" gate="G$1" pin="+"/>
<wire x1="160.02" y1="165.1" x2="160.02" y2="172.72" width="0.1524" layer="91"/>
<pinref part="X7" gate="G$1" pin="AN"/>
<wire x1="160.02" y1="172.72" x2="162.56" y2="172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="AND_FILTER" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="119.38" y1="27.94" x2="119.38" y2="38.1" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="119.38" y1="38.1" x2="127" y2="38.1" width="0.1524" layer="91"/>
<label x="119.38" y="38.1" size="1.778" layer="95" rot="R180" xref="yes"/>
<probe x="127" y="45.72" size="1.778" layer="89" rot="R180" probetype="0"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X8" gate="G$1" pin="AN"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="139.7" y1="38.1" x2="134.62" y2="38.1" width="0.1524" layer="91"/>
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
