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
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ngspice-simulation" urn="urn:adsk.eagle:library:5272020">
<packages>
</packages>
<symbols>
<symbol name="0" urn="urn:adsk.eagle:symbol:527455/1" library_version="1">
<description>Simulation ground symbol (spice node 0)</description>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<pin name="0" x="0" y="0" visible="off" length="point" direction="sup"/>
</symbol>
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
<symbol name="R" urn="urn:adsk.eagle:symbol:5272030/1" library_version="1">
<description>RESISTOR</description>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-6.35" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="-2.54" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="-8.89" size="1.778" layer="97">&gt;SPICEEXTRA</text>
</symbol>
<symbol name="LED" urn="urn:adsk.eagle:symbol:5272034/1" library_version="1">
<description>Light-Emitting Diode (LED)</description>
<pin name="A" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="C" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="-5.08" y="-5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.778" layer="97">&gt;SPICEMODEL</text>
<text x="-5.08" y="-10.16" size="1.778" layer="97">&gt;SPICEEXTRA</text>
<text x="-5.08" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="3.556" x2="-1.27" y2="6.35" width="0.254" layer="94"/>
<wire x1="-1.27" y1="6.35" x2="-0.508" y2="4.826" width="0.254" layer="94"/>
<wire x1="-0.508" y1="4.826" x2="0.762" y2="7.874" width="0.254" layer="94"/>
<wire x1="0.762" y1="7.874" x2="1.016" y2="6.604" width="0.254" layer="94"/>
<wire x1="1.016" y1="6.604" x2="-0.254" y2="7.366" width="0.254" layer="94"/>
<wire x1="-0.254" y1="7.366" x2="0.762" y2="7.874" width="0.254" layer="94"/>
<wire x1="-0.254" y1="2.286" x2="1.016" y2="5.08" width="0.254" layer="94"/>
<wire x1="1.016" y1="5.08" x2="1.778" y2="3.556" width="0.254" layer="94"/>
<wire x1="1.778" y1="3.556" x2="3.048" y2="6.604" width="0.254" layer="94"/>
<wire x1="3.048" y1="6.604" x2="3.302" y2="5.334" width="0.254" layer="94"/>
<wire x1="3.302" y1="5.334" x2="2.032" y2="6.096" width="0.254" layer="94"/>
<wire x1="2.032" y1="6.096" x2="3.048" y2="6.604" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:527478/1" prefix="X_" library_version="1">
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
<deviceset name="R" urn="urn:adsk.eagle:component:5272053/1" prefix="R" uservalue="yes" library_version="1">
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
<deviceset name="LED" urn="urn:adsk.eagle:component:5272049/1" prefix="D" library_version="1">
<description>Diode</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
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
<pinmapping spiceprefix="D">
<pinmap gate="G$1" pin="A" pinorder="1"/>
<pinmap gate="G$1" pin="C" pinorder="2"/>
</pinmapping>
<model name="DMOD">
**********************
* Autodesk EAGLE - Spice Model File
* Date: 9/17/17
* basic diode intrinsic model
**********************
.MODEL DMOD D</model>
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
<part name="X_1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="GND" device=""/>
<part name="X_2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="GND" device=""/>
<part name="V1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="VOLTAGE" device="" value="DC 0V AC 0 SIN(0 3 1khz 0 0)"/>
<part name="R1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="R" device="" value="1k"/>
<part name="D2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:5272020" deviceset="LED" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="6.35" y="57.404" size="2.54" layer="91">Basic diode circuit with params
Simulate transient from 1ms to 5ms</text>
<text x="7.62" y="45.72" size="1.778" layer="91">.PARAM
rval=10k</text>
<wire x1="0" y1="68.58" x2="81.28" y2="68.58" width="0.1524" layer="94"/>
<wire x1="81.28" y1="68.58" x2="81.28" y2="0" width="0.1524" layer="94"/>
<wire x1="81.28" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="68.58" width="0.1524" layer="94"/>
</plain>
<instances>
<instance part="X_1" gate="G$1" x="10.16" y="7.62"/>
<instance part="X_2" gate="G$1" x="68.58" y="7.62"/>
<instance part="V1" gate="G$1" x="10.16" y="25.4">
<attribute name="NAME" x="17.78" y="27.94" size="1.778" layer="95"/>
<attribute name="VALUE" x="17.78" y="25.4" size="1.778" layer="96"/>
</instance>
<instance part="R1" gate="G$1" x="38.1" y="38.1">
<attribute name="NAME" x="35.56" y="40.64" size="1.778" layer="95"/>
<attribute name="VALUE" x="35.56" y="34.29" size="1.778" layer="96"/>
</instance>
<instance part="D2" gate="G$1" x="68.58" y="27.94" rot="R270">
<attribute name="NAME" x="63.5" y="33.02" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="60.96" y="33.02" size="1.778" layer="96" rot="R270"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="0" class="0">
<segment>
<pinref part="X_1" gate="G$1" pin="0"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="17.78" width="0.1524" layer="91"/>
<pinref part="V1" gate="G$1" pin="-"/>
</segment>
<segment>
<pinref part="X_2" gate="G$1" pin="0"/>
<wire x1="68.58" y1="22.86" x2="68.58" y2="7.62" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="C"/>
</segment>
</net>
<net name="VIN" class="0">
<segment>
<wire x1="10.16" y1="33.02" x2="10.16" y2="38.1" width="0.1524" layer="91"/>
<wire x1="10.16" y1="38.1" x2="33.02" y2="38.1" width="0.1524" layer="91"/>
<label x="10.16" y="38.1" size="1.778" layer="95"/>
<pinref part="V1" gate="G$1" pin="+"/>
<pinref part="R1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="VOUT" class="0">
<segment>
<wire x1="43.18" y1="38.1" x2="68.58" y2="38.1" width="0.1524" layer="91"/>
<wire x1="68.58" y1="38.1" x2="68.58" y2="33.02" width="0.1524" layer="91"/>
<label x="63.5" y="38.1" size="1.778" layer="95"/>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="D2" gate="G$1" pin="A"/>
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
