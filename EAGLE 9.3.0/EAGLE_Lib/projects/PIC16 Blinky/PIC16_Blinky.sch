<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.1.3">
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
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
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
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="microchip" urn="urn:adsk.eagle:library:294">
<description>&lt;b&gt;Microchip PIC Microcontrollers and other Devices&lt;/b&gt;&lt;p&gt;
Based on the following sources :
&lt;ul&gt;
&lt;li&gt;Microchip Data Book, 1993
&lt;li&gt;THE EMERGING WORLD STANDARD, 1995/1996
&lt;li&gt;Microchip, Technical Library CD-ROM, June 1998
&lt;li&gt;www.microchip.com
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="PLCC-44" urn="urn:adsk.eagle:footprint:20607/1" library_version="2">
<description>&lt;b&gt;PLASTIC LEADED CHIP CARRIER&lt;/b&gt;&lt;p&gt;
square, package type L</description>
<wire x1="-8.29" y1="7.79" x2="-7.79" y2="8.29" width="0.1524" layer="51"/>
<wire x1="-7.79" y1="8.29" x2="7.79" y2="8.29" width="0.1524" layer="51"/>
<wire x1="7.79" y1="8.29" x2="8.29" y2="7.79" width="0.1524" layer="51"/>
<wire x1="8.29" y1="7.79" x2="8.29" y2="-7.79" width="0.1524" layer="51"/>
<wire x1="8.29" y1="-7.79" x2="7.79" y2="-8.29" width="0.1524" layer="51"/>
<wire x1="7.79" y1="-8.29" x2="-7.04" y2="-8.29" width="0.1524" layer="51"/>
<wire x1="-7.04" y1="-8.29" x2="-8.2901" y2="-6.73" width="0.1524" layer="51"/>
<wire x1="-8.2901" y1="-6.73" x2="-8.29" y2="7.79" width="0.1524" layer="51"/>
<wire x1="7.54" y1="7.79" x2="7.79" y2="7.54" width="0.0508" layer="51"/>
<wire x1="7.79" y1="7.54" x2="7.79" y2="-7.54" width="0.0508" layer="51"/>
<wire x1="7.79" y1="-7.54" x2="7.54" y2="-7.79" width="0.0508" layer="51"/>
<wire x1="7.54" y1="-7.79" x2="-7.04" y2="-7.79" width="0.0508" layer="51"/>
<wire x1="-7.04" y1="-7.79" x2="-8.2901" y2="-6.73" width="0.0508" layer="51"/>
<wire x1="-7.04" y1="-8.29" x2="-7.04" y2="-7.79" width="0.0508" layer="51"/>
<wire x1="-7.04" y1="-7.79" x2="-7.04" y2="7.79" width="0.0508" layer="51"/>
<wire x1="-7.04" y1="7.79" x2="7.54" y2="7.79" width="0.0508" layer="51"/>
<wire x1="-7.79" y1="8.29" x2="-7.04" y2="7.79" width="0.0508" layer="51"/>
<wire x1="7.54" y1="7.79" x2="7.79" y2="8.29" width="0.0508" layer="51"/>
<wire x1="7.79" y1="7.54" x2="8.29" y2="7.79" width="0.0508" layer="51"/>
<wire x1="7.79" y1="-8.29" x2="7.54" y2="-7.79" width="0.0508" layer="51"/>
<wire x1="8.29" y1="-7.79" x2="7.79" y2="-7.54" width="0.0508" layer="51"/>
<wire x1="-5.91" y1="8.29" x2="-5.52" y2="8.29" width="0.1524" layer="21"/>
<wire x1="-4.64" y1="8.29" x2="-4.25" y2="8.29" width="0.1524" layer="21"/>
<wire x1="-3.37" y1="8.29" x2="-2.98" y2="8.29" width="0.1524" layer="21"/>
<wire x1="-2.1" y1="8.29" x2="-1.71" y2="8.29" width="0.1524" layer="21"/>
<wire x1="-0.83" y1="8.29" x2="-0.44" y2="8.29" width="0.1524" layer="21"/>
<wire x1="0.44" y1="8.29" x2="0.83" y2="8.29" width="0.1524" layer="21"/>
<wire x1="6.79" y1="8.29" x2="7.79" y2="8.29" width="0.1524" layer="21"/>
<wire x1="7.79" y1="8.29" x2="8.29" y2="7.79" width="0.1524" layer="21"/>
<wire x1="8.29" y1="7.79" x2="8.29" y2="6.79" width="0.1524" layer="21"/>
<wire x1="8.29" y1="3.37" x2="8.29" y2="2.98" width="0.1524" layer="21"/>
<wire x1="8.29" y1="2.1" x2="8.29" y2="1.71" width="0.1524" layer="21"/>
<wire x1="8.29" y1="0.83" x2="8.29" y2="0.44" width="0.1524" layer="21"/>
<wire x1="8.29" y1="-0.44" x2="8.29" y2="-0.83" width="0.1524" layer="21"/>
<wire x1="8.29" y1="-1.71" x2="8.29" y2="-2.1" width="0.1524" layer="21"/>
<wire x1="8.29" y1="-2.98" x2="8.29" y2="-3.37" width="0.1524" layer="21"/>
<wire x1="8.29" y1="-6.79" x2="8.29" y2="-7.79" width="0.1524" layer="21"/>
<wire x1="8.29" y1="-7.79" x2="7.79" y2="-8.29" width="0.1524" layer="21"/>
<wire x1="7.79" y1="-8.29" x2="6.79" y2="-8.29" width="0.1524" layer="21"/>
<wire x1="0.83" y1="-8.29" x2="0.44" y2="-8.29" width="0.1524" layer="21"/>
<wire x1="-0.44" y1="-8.29" x2="-0.83" y2="-8.29" width="0.1524" layer="21"/>
<wire x1="-1.71" y1="-8.29" x2="-2.1" y2="-8.29" width="0.1524" layer="21"/>
<wire x1="-2.98" y1="-8.29" x2="-3.37" y2="-8.29" width="0.1524" layer="21"/>
<wire x1="-4.25" y1="-8.29" x2="-4.64" y2="-8.29" width="0.1524" layer="21"/>
<wire x1="-5.52" y1="-8.29" x2="-5.91" y2="-8.29" width="0.1524" layer="21"/>
<wire x1="-6.79" y1="-8.29" x2="-7.04" y2="-8.29" width="0.1524" layer="21"/>
<wire x1="-7.04" y1="-8.29" x2="-8.24" y2="-6.79" width="0.1524" layer="21"/>
<wire x1="-8.29" y1="-3.37" x2="-8.29" y2="-2.98" width="0.1524" layer="21"/>
<wire x1="-8.29" y1="-2.1" x2="-8.29" y2="-1.71" width="0.1524" layer="21"/>
<wire x1="-8.29" y1="-0.83" x2="-8.29" y2="-0.44" width="0.1524" layer="21"/>
<wire x1="-8.29" y1="0.44" x2="-8.29" y2="0.83" width="0.1524" layer="21"/>
<wire x1="-8.29" y1="1.71" x2="-8.29" y2="2.1" width="0.1524" layer="21"/>
<wire x1="-8.29" y1="2.98" x2="-8.29" y2="3.37" width="0.1524" layer="21"/>
<wire x1="-8.29" y1="6.79" x2="-8.29" y2="7.79" width="0.1524" layer="21"/>
<wire x1="-8.29" y1="7.79" x2="-7.79" y2="8.29" width="0.1524" layer="21"/>
<wire x1="-7.79" y1="8.29" x2="-6.79" y2="8.29" width="0.1524" layer="21"/>
<wire x1="-7.04" y1="7.79" x2="-6.75" y2="7.79" width="0.0508" layer="21"/>
<wire x1="-5.95" y1="7.79" x2="-5.48" y2="7.79" width="0.0508" layer="21"/>
<wire x1="-4.68" y1="7.79" x2="-4.21" y2="7.79" width="0.0508" layer="21"/>
<wire x1="-3.41" y1="7.79" x2="-2.94" y2="7.79" width="0.0508" layer="21"/>
<wire x1="-2.14" y1="7.79" x2="-1.67" y2="7.79" width="0.0508" layer="21"/>
<wire x1="-0.87" y1="7.79" x2="-0.4" y2="7.79" width="0.0508" layer="21"/>
<wire x1="0.4" y1="7.79" x2="0.87" y2="7.79" width="0.0508" layer="21"/>
<wire x1="6.75" y1="7.79" x2="7.54" y2="7.79" width="0.0508" layer="21"/>
<wire x1="7.54" y1="7.79" x2="7.79" y2="7.54" width="0.0508" layer="21"/>
<wire x1="7.79" y1="7.54" x2="7.79" y2="6.75" width="0.0508" layer="21"/>
<wire x1="7.79" y1="3.41" x2="7.79" y2="2.94" width="0.0508" layer="21"/>
<wire x1="7.79" y1="2.14" x2="7.79" y2="1.67" width="0.0508" layer="21"/>
<wire x1="7.79" y1="0.87" x2="7.79" y2="0.4" width="0.0508" layer="21"/>
<wire x1="7.79" y1="-0.4" x2="7.79" y2="-0.87" width="0.0508" layer="21"/>
<wire x1="7.79" y1="-1.67" x2="7.79" y2="-2.14" width="0.0508" layer="21"/>
<wire x1="7.79" y1="-2.94" x2="7.79" y2="-3.41" width="0.0508" layer="21"/>
<wire x1="7.79" y1="-6.75" x2="7.79" y2="-7.54" width="0.0508" layer="21"/>
<wire x1="7.79" y1="-7.54" x2="7.54" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="7.54" y1="-7.79" x2="6.75" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="0.87" y1="-7.79" x2="0.4" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="-0.4" y1="-7.79" x2="-0.87" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="-1.67" y1="-7.79" x2="-2.14" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="-2.94" y1="-7.79" x2="-3.41" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="-4.21" y1="-7.79" x2="-4.68" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="-5.48" y1="-7.79" x2="-5.95" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="-6.75" y1="-7.79" x2="-7.04" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="-7.04" y1="-7.79" x2="-8.27" y2="-6.75" width="0.0508" layer="21"/>
<wire x1="-7.04" y1="-7.79" x2="-7.04" y2="-6.75" width="0.0508" layer="21"/>
<wire x1="-7.04" y1="-3.41" x2="-7.04" y2="-2.94" width="0.0508" layer="21"/>
<wire x1="-7.04" y1="-2.14" x2="-7.04" y2="-1.67" width="0.0508" layer="21"/>
<wire x1="-7.04" y1="-0.87" x2="-7.04" y2="-0.4" width="0.0508" layer="21"/>
<wire x1="-7.04" y1="0.4" x2="-7.04" y2="0.87" width="0.0508" layer="21"/>
<wire x1="-7.04" y1="1.67" x2="-7.04" y2="2.14" width="0.0508" layer="21"/>
<wire x1="-7.04" y1="2.94" x2="-7.04" y2="3.41" width="0.0508" layer="21"/>
<wire x1="-7.04" y1="6.75" x2="-7.04" y2="7.79" width="0.0508" layer="21"/>
<wire x1="-7.79" y1="8.29" x2="-7.04" y2="7.79" width="0.0508" layer="21"/>
<wire x1="7.79" y1="7.54" x2="8.29" y2="7.79" width="0.0508" layer="21"/>
<wire x1="7.54" y1="7.79" x2="7.79" y2="8.29" width="0.1524" layer="21"/>
<wire x1="8.29" y1="-7.79" x2="7.79" y2="-7.54" width="0.0508" layer="21"/>
<wire x1="7.79" y1="-8.29" x2="7.54" y2="-7.79" width="0.1524" layer="21"/>
<wire x1="-7.04" y1="-8.29" x2="-7.04" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="2.14" y1="-7.79" x2="1.67" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="3.41" y1="-7.79" x2="2.94" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="2.1" y1="-8.29" x2="1.71" y2="-8.29" width="0.1524" layer="21"/>
<wire x1="3.37" y1="-8.29" x2="2.98" y2="-8.29" width="0.1524" layer="21"/>
<wire x1="1.71" y1="8.29" x2="2.1" y2="8.29" width="0.1524" layer="21"/>
<wire x1="2.98" y1="8.29" x2="3.37" y2="8.29" width="0.1524" layer="21"/>
<wire x1="1.67" y1="7.79" x2="2.14" y2="7.79" width="0.0508" layer="21"/>
<wire x1="2.94" y1="7.79" x2="3.41" y2="7.79" width="0.0508" layer="21"/>
<wire x1="4.25" y1="8.29" x2="4.64" y2="8.29" width="0.1524" layer="21"/>
<wire x1="5.52" y1="8.29" x2="5.91" y2="8.29" width="0.1524" layer="21"/>
<wire x1="4.21" y1="7.79" x2="4.68" y2="7.79" width="0.0508" layer="21"/>
<wire x1="5.48" y1="7.79" x2="5.95" y2="7.79" width="0.0508" layer="21"/>
<wire x1="8.29" y1="4.64" x2="8.29" y2="4.25" width="0.1524" layer="21"/>
<wire x1="8.29" y1="5.91" x2="8.29" y2="5.52" width="0.1524" layer="21"/>
<wire x1="7.79" y1="4.68" x2="7.79" y2="4.21" width="0.0508" layer="21"/>
<wire x1="7.79" y1="5.95" x2="7.79" y2="5.48" width="0.0508" layer="21"/>
<wire x1="-8.29" y1="4.25" x2="-8.29" y2="4.64" width="0.1524" layer="21"/>
<wire x1="-8.29" y1="5.52" x2="-8.29" y2="5.91" width="0.1524" layer="21"/>
<wire x1="-7.04" y1="4.21" x2="-7.04" y2="4.68" width="0.0508" layer="21"/>
<wire x1="-7.04" y1="5.48" x2="-7.04" y2="5.95" width="0.0508" layer="21"/>
<wire x1="-8.29" y1="-4.64" x2="-8.29" y2="-4.25" width="0.1524" layer="21"/>
<wire x1="-8.29" y1="-5.91" x2="-8.29" y2="-5.52" width="0.1524" layer="21"/>
<wire x1="-7.04" y1="-4.68" x2="-7.04" y2="-4.21" width="0.0508" layer="21"/>
<wire x1="-7.04" y1="-5.95" x2="-7.04" y2="-5.48" width="0.0508" layer="21"/>
<wire x1="8.29" y1="-4.25" x2="8.29" y2="-4.64" width="0.1524" layer="21"/>
<wire x1="8.29" y1="-5.52" x2="8.29" y2="-5.91" width="0.1524" layer="21"/>
<wire x1="7.79" y1="-4.21" x2="7.79" y2="-4.68" width="0.0508" layer="21"/>
<wire x1="7.79" y1="-5.48" x2="7.79" y2="-5.95" width="0.0508" layer="21"/>
<wire x1="4.68" y1="-7.79" x2="4.21" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="5.95" y1="-7.79" x2="5.48" y2="-7.79" width="0.0508" layer="21"/>
<wire x1="4.64" y1="-8.29" x2="4.25" y2="-8.29" width="0.1524" layer="21"/>
<wire x1="5.91" y1="-8.29" x2="5.52" y2="-8.29" width="0.1524" layer="21"/>
<circle x="-5.9601" y="0" radius="0.5001" width="0.0508" layer="51"/>
<circle x="-5.9601" y="0" radius="0.5001" width="0.0508" layer="21"/>
<smd name="8" x="-5.08" y="-7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="9" x="-3.81" y="-7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="10" x="-2.54" y="-7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="11" x="-1.27" y="-7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="12" x="0" y="-7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="13" x="1.27" y="-7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="14" x="2.54" y="-7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="36" x="-2.54" y="7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="35" x="-1.27" y="7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="34" x="0" y="7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="33" x="1.27" y="7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="32" x="2.54" y="7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="31" x="3.81" y="7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="30" x="5.08" y="7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="6" x="-7.86" y="-6.35" dx="1.8" dy="0.76" layer="1"/>
<smd name="3" x="-7.86" y="-2.54" dx="1.8" dy="0.76" layer="1"/>
<smd name="2" x="-7.86" y="-1.27" dx="1.8" dy="0.76" layer="1"/>
<smd name="1" x="-7.86" y="0" dx="1.8" dy="0.76" layer="1"/>
<smd name="44" x="-7.86" y="1.27" dx="1.8" dy="0.76" layer="1"/>
<smd name="43" x="-7.86" y="2.54" dx="1.8" dy="0.76" layer="1"/>
<smd name="42" x="-7.86" y="3.81" dx="1.8" dy="0.76" layer="1"/>
<smd name="18" x="7.86" y="-6.35" dx="1.8" dy="0.76" layer="1"/>
<smd name="21" x="7.86" y="-2.54" dx="1.8" dy="0.76" layer="1"/>
<smd name="22" x="7.86" y="-1.27" dx="1.8" dy="0.76" layer="1"/>
<smd name="23" x="7.86" y="0" dx="1.8" dy="0.76" layer="1"/>
<smd name="24" x="7.86" y="1.27" dx="1.8" dy="0.76" layer="1"/>
<smd name="25" x="7.86" y="2.54" dx="1.8" dy="0.76" layer="1"/>
<smd name="26" x="7.86" y="3.81" dx="1.8" dy="0.76" layer="1"/>
<smd name="15" x="3.81" y="-7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="16" x="5.08" y="-7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="37" x="-3.81" y="7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="38" x="-5.08" y="7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="29" x="6.35" y="7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="27" x="7.86" y="5.08" dx="1.8" dy="0.76" layer="1"/>
<smd name="28" x="7.86" y="6.35" dx="1.8" dy="0.76" layer="1"/>
<smd name="20" x="7.86" y="-3.81" dx="1.8" dy="0.76" layer="1"/>
<smd name="19" x="7.86" y="-5.08" dx="1.8" dy="0.76" layer="1"/>
<smd name="17" x="6.35" y="-7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="4" x="-7.86" y="-3.81" dx="1.8" dy="0.76" layer="1"/>
<smd name="5" x="-7.86" y="-5.08" dx="1.8" dy="0.76" layer="1"/>
<smd name="41" x="-7.86" y="5.08" dx="1.8" dy="0.76" layer="1"/>
<smd name="40" x="-7.86" y="6.35" dx="1.8" dy="0.76" layer="1"/>
<smd name="39" x="-6.35" y="7.86" dx="0.76" dy="1.8" layer="1"/>
<smd name="7" x="-6.35" y="-7.86" dx="0.76" dy="1.8" layer="1"/>
<text x="-6.604" y="9.144" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.604" y="-10.922" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.92" y1="8.2901" x2="-2.16" y2="8.76" layer="51"/>
<rectangle x1="-1.65" y1="8.2901" x2="-0.89" y2="8.76" layer="51"/>
<rectangle x1="-0.38" y1="8.2901" x2="0.38" y2="8.76" layer="51"/>
<rectangle x1="0.89" y1="8.2901" x2="1.65" y2="8.76" layer="51"/>
<rectangle x1="2.16" y1="8.2901" x2="2.92" y2="8.76" layer="51"/>
<rectangle x1="3.43" y1="8.2901" x2="4.19" y2="8.76" layer="51"/>
<rectangle x1="4.7" y1="8.2901" x2="5.46" y2="8.76" layer="51"/>
<rectangle x1="8.2901" y1="3.43" x2="8.76" y2="4.19" layer="51"/>
<rectangle x1="8.2901" y1="2.16" x2="8.76" y2="2.92" layer="51"/>
<rectangle x1="8.2901" y1="0.89" x2="8.76" y2="1.65" layer="51"/>
<rectangle x1="8.2901" y1="-0.38" x2="8.76" y2="0.38" layer="51"/>
<rectangle x1="8.2901" y1="-1.65" x2="8.76" y2="-0.89" layer="51"/>
<rectangle x1="8.2901" y1="-2.92" x2="8.76" y2="-2.16" layer="51"/>
<rectangle x1="8.2901" y1="-6.73" x2="8.76" y2="-5.97" layer="51"/>
<rectangle x1="-5.46" y1="-8.76" x2="-4.7" y2="-8.2901" layer="51"/>
<rectangle x1="-4.19" y1="-8.76" x2="-3.43" y2="-8.2901" layer="51"/>
<rectangle x1="-2.92" y1="-8.76" x2="-2.16" y2="-8.2901" layer="51"/>
<rectangle x1="-1.65" y1="-8.76" x2="-0.89" y2="-8.2901" layer="51"/>
<rectangle x1="-0.38" y1="-8.76" x2="0.38" y2="-8.2901" layer="51"/>
<rectangle x1="0.89" y1="-8.76" x2="1.65" y2="-8.2901" layer="51"/>
<rectangle x1="2.16" y1="-8.76" x2="2.92" y2="-8.2901" layer="51"/>
<rectangle x1="-8.76" y1="3.43" x2="-8.2901" y2="4.19" layer="51"/>
<rectangle x1="-8.76" y1="2.16" x2="-8.2901" y2="2.92" layer="51"/>
<rectangle x1="-8.76" y1="0.89" x2="-8.2901" y2="1.65" layer="51"/>
<rectangle x1="-8.76" y1="-0.38" x2="-8.2901" y2="0.38" layer="51"/>
<rectangle x1="-8.76" y1="-1.65" x2="-8.2901" y2="-0.89" layer="51"/>
<rectangle x1="-8.76" y1="-2.92" x2="-8.2901" y2="-2.16" layer="51"/>
<rectangle x1="-8.7599" y1="-6.73" x2="-8.29" y2="-5.97" layer="51"/>
<rectangle x1="-4.19" y1="8.2901" x2="-3.43" y2="8.76" layer="51"/>
<rectangle x1="-5.46" y1="8.2901" x2="-4.7" y2="8.76" layer="51"/>
<rectangle x1="3.43" y1="-8.76" x2="4.19" y2="-8.2901" layer="51"/>
<rectangle x1="4.7" y1="-8.76" x2="5.46" y2="-8.2901" layer="51"/>
<rectangle x1="-8.76" y1="4.7" x2="-8.2901" y2="5.46" layer="51"/>
<rectangle x1="-8.76" y1="5.97" x2="-8.2901" y2="6.73" layer="51"/>
<rectangle x1="-8.76" y1="-4.19" x2="-8.2901" y2="-3.43" layer="51"/>
<rectangle x1="-8.76" y1="-5.46" x2="-8.2901" y2="-4.7" layer="51"/>
<rectangle x1="5.97" y1="-8.76" x2="6.73" y2="-8.2901" layer="51"/>
<rectangle x1="8.2901" y1="-5.46" x2="8.76" y2="-4.7" layer="51"/>
<rectangle x1="8.2901" y1="-4.19" x2="8.76" y2="-3.43" layer="51"/>
<rectangle x1="8.2901" y1="4.7" x2="8.76" y2="5.46" layer="51"/>
<rectangle x1="8.2901" y1="5.97" x2="8.76" y2="6.73" layer="51"/>
<rectangle x1="5.97" y1="8.2901" x2="6.73" y2="8.76" layer="51"/>
<rectangle x1="-6.73" y1="8.2901" x2="-5.97" y2="8.76" layer="51"/>
<rectangle x1="-6.73" y1="-8.76" x2="-5.97" y2="-8.2901" layer="51"/>
</package>
<package name="MQFP44-2" urn="urn:adsk.eagle:footprint:20608/1" library_version="2">
<description>&lt;b&gt;Plastic Metric Quad Flat Pack&lt;/b&gt;&lt;p&gt;
package type PQ</description>
<wire x1="-5" y1="-4.5" x2="-4.5" y2="-5" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="-5" x2="4.5" y2="-5" width="0.1524" layer="21"/>
<wire x1="4.5" y1="-5" x2="5" y2="-4.5" width="0.1524" layer="21"/>
<wire x1="5" y1="-4.5" x2="5" y2="4.5" width="0.1524" layer="21"/>
<wire x1="5" y1="4.5" x2="4.5" y2="5" width="0.1524" layer="21"/>
<wire x1="4.5" y1="5" x2="-4.5" y2="5" width="0.1524" layer="21"/>
<wire x1="-4.5" y1="5" x2="-5" y2="4.5" width="0.1524" layer="21"/>
<wire x1="-5" y1="4.5" x2="-5" y2="-4.5" width="0.1524" layer="21"/>
<circle x="-3.5001" y="-3.5001" radius="0.5001" width="0.1524" layer="21"/>
<smd name="1" x="-4" y="-6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="2" x="-3.2" y="-6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="3" x="-2.4" y="-6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="4" x="-1.6" y="-6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="5" x="-0.8" y="-6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="6" x="0" y="-6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="7" x="0.8" y="-6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="8" x="1.6" y="-6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="9" x="2.4" y="-6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="10" x="3.2" y="-6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="11" x="4" y="-6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="12" x="6.1" y="-4" dx="2.2" dy="0.35" layer="1"/>
<smd name="13" x="6.1" y="-3.2" dx="2.2" dy="0.35" layer="1"/>
<smd name="14" x="6.1" y="-2.4" dx="2.2" dy="0.35" layer="1"/>
<smd name="15" x="6.1" y="-1.6" dx="2.2" dy="0.35" layer="1"/>
<smd name="16" x="6.1" y="-0.8" dx="2.2" dy="0.35" layer="1"/>
<smd name="17" x="6.1" y="0" dx="2.2" dy="0.35" layer="1"/>
<smd name="18" x="6.1" y="0.8" dx="2.2" dy="0.35" layer="1"/>
<smd name="19" x="6.1" y="1.6" dx="2.2" dy="0.35" layer="1"/>
<smd name="20" x="6.1" y="2.4" dx="2.2" dy="0.35" layer="1"/>
<smd name="21" x="6.1" y="3.2" dx="2.2" dy="0.35" layer="1"/>
<smd name="22" x="6.1" y="4" dx="2.2" dy="0.35" layer="1"/>
<smd name="23" x="4" y="6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="24" x="3.2" y="6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="25" x="2.4" y="6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="26" x="1.6" y="6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="27" x="0.8" y="6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="28" x="0" y="6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="29" x="-0.8" y="6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="30" x="-1.6" y="6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="31" x="-2.4" y="6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="32" x="-3.2" y="6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="33" x="-4" y="6.1" dx="0.35" dy="2.2" layer="1"/>
<smd name="34" x="-6.1" y="4" dx="2.2" dy="0.35" layer="1"/>
<smd name="35" x="-6.1" y="3.2" dx="2.2" dy="0.35" layer="1"/>
<smd name="36" x="-6.1" y="2.4" dx="2.2" dy="0.35" layer="1"/>
<smd name="37" x="-6.1" y="1.6" dx="2.2" dy="0.35" layer="1"/>
<smd name="38" x="-6.1" y="0.8" dx="2.2" dy="0.35" layer="1"/>
<smd name="39" x="-6.1" y="0" dx="2.2" dy="0.35" layer="1"/>
<smd name="40" x="-6.1" y="-0.8" dx="2.2" dy="0.35" layer="1"/>
<smd name="41" x="-6.1" y="-1.6" dx="2.2" dy="0.35" layer="1"/>
<smd name="42" x="-6.1" y="-2.4" dx="2.2" dy="0.35" layer="1"/>
<smd name="43" x="-6.1" y="-3.2" dx="2.2" dy="0.35" layer="1"/>
<smd name="44" x="-6.1" y="-4" dx="2.2" dy="0.35" layer="1"/>
<text x="-4.064" y="7.493" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.318" y="-1.397" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.175" y1="5" x2="-3.825" y2="6.5999" layer="51"/>
<rectangle x1="-3.3749" y1="5" x2="-3.0249" y2="6.5999" layer="51"/>
<rectangle x1="-2.5751" y1="5" x2="-2.225" y2="6.5999" layer="51"/>
<rectangle x1="-1.775" y1="5" x2="-1.4249" y2="6.5999" layer="51"/>
<rectangle x1="-0.9751" y1="5" x2="-0.6251" y2="6.5999" layer="51"/>
<rectangle x1="-0.175" y1="5" x2="0.175" y2="6.5999" layer="51"/>
<rectangle x1="0.6251" y1="5" x2="0.9751" y2="6.5999" layer="51"/>
<rectangle x1="1.4249" y1="5" x2="1.775" y2="6.5999" layer="51"/>
<rectangle x1="2.225" y1="5" x2="2.5751" y2="6.5999" layer="51"/>
<rectangle x1="3.0249" y1="5" x2="3.3749" y2="6.5999" layer="51"/>
<rectangle x1="3.825" y1="5" x2="4.175" y2="6.5999" layer="51"/>
<rectangle x1="5" y1="3.0249" x2="6.5999" y2="3.3749" layer="51"/>
<rectangle x1="5" y1="3.825" x2="6.5999" y2="4.175" layer="51"/>
<rectangle x1="5" y1="2.225" x2="6.5999" y2="2.5751" layer="51"/>
<rectangle x1="5" y1="1.4249" x2="6.5999" y2="1.775" layer="51"/>
<rectangle x1="5" y1="0.6251" x2="6.5999" y2="0.9751" layer="51"/>
<rectangle x1="5" y1="-0.175" x2="6.5999" y2="0.175" layer="51"/>
<rectangle x1="5" y1="-0.9751" x2="6.5999" y2="-0.6251" layer="51"/>
<rectangle x1="5" y1="-1.775" x2="6.5999" y2="-1.4249" layer="51"/>
<rectangle x1="5" y1="-2.5751" x2="6.5999" y2="-2.225" layer="51"/>
<rectangle x1="5" y1="-3.3749" x2="6.5999" y2="-3.0249" layer="51"/>
<rectangle x1="5" y1="-4.175" x2="6.5999" y2="-3.825" layer="51"/>
<rectangle x1="3.825" y1="-6.5999" x2="4.175" y2="-5" layer="51"/>
<rectangle x1="3.0249" y1="-6.5999" x2="3.3749" y2="-5" layer="51"/>
<rectangle x1="2.225" y1="-6.5999" x2="2.5751" y2="-5" layer="51"/>
<rectangle x1="1.4249" y1="-6.5999" x2="1.775" y2="-5" layer="51"/>
<rectangle x1="0.6251" y1="-6.5999" x2="0.9751" y2="-5" layer="51"/>
<rectangle x1="-0.175" y1="-6.5999" x2="0.175" y2="-5" layer="51"/>
<rectangle x1="-0.9751" y1="-6.5999" x2="-0.6251" y2="-5" layer="51"/>
<rectangle x1="-1.775" y1="-6.5999" x2="-1.4249" y2="-4.9751" layer="51"/>
<rectangle x1="-2.5751" y1="-6.5999" x2="-2.225" y2="-5" layer="51"/>
<rectangle x1="-3.3749" y1="-6.5999" x2="-3.0249" y2="-5" layer="51"/>
<rectangle x1="-4.175" y1="-6.5999" x2="-3.825" y2="-5" layer="51"/>
<rectangle x1="-6.5999" y1="-4.175" x2="-5" y2="-3.825" layer="51"/>
<rectangle x1="-6.5999" y1="-3.3749" x2="-5" y2="-3.0249" layer="51"/>
<rectangle x1="-6.5999" y1="-2.5751" x2="-5" y2="-2.225" layer="51"/>
<rectangle x1="-6.5999" y1="-0.9751" x2="-5" y2="-0.6251" layer="51"/>
<rectangle x1="-6.5999" y1="-1.775" x2="-5" y2="-1.4249" layer="51"/>
<rectangle x1="-6.5999" y1="0.6251" x2="-5" y2="0.9751" layer="51"/>
<rectangle x1="-6.5999" y1="-0.175" x2="-5" y2="0.175" layer="51"/>
<rectangle x1="-6.5999" y1="2.225" x2="-5" y2="2.5751" layer="51"/>
<rectangle x1="-6.5999" y1="1.4249" x2="-5" y2="1.775" layer="51"/>
<rectangle x1="-6.5999" y1="3.825" x2="-5" y2="4.175" layer="51"/>
<rectangle x1="-6.5999" y1="3.0249" x2="-5" y2="3.3749" layer="51"/>
</package>
<package name="TQFP44" urn="urn:adsk.eagle:footprint:20604/1" library_version="2">
<description>&lt;b&gt;Thin Quad Flat Pack&lt;/b&gt;&lt;p&gt;
package type TQ</description>
<wire x1="-4.8" y1="4.4" x2="-4.4" y2="4.8" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="4.8" x2="4.4" y2="4.8" width="0.2032" layer="21"/>
<wire x1="4.4" y1="4.8" x2="4.8" y2="4.4" width="0.2032" layer="21"/>
<wire x1="4.8" y1="4.4" x2="4.8" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="4.8" y1="-4.4" x2="4.4" y2="-4.8" width="0.2032" layer="21"/>
<wire x1="4.4" y1="-4.8" x2="-4.4" y2="-4.8" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="-4.8" x2="-4.8" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="-4.8" y1="-4.4" x2="-4.8" y2="4.4" width="0.2032" layer="21"/>
<circle x="-4" y="4" radius="0.2827" width="0.254" layer="21"/>
<smd name="1" x="-5.8" y="4" dx="1.5" dy="0.5" layer="1"/>
<smd name="2" x="-5.8" y="3.2" dx="1.5" dy="0.5" layer="1"/>
<smd name="3" x="-5.8" y="2.4" dx="1.5" dy="0.5" layer="1"/>
<smd name="4" x="-5.8" y="1.6" dx="1.5" dy="0.5" layer="1"/>
<smd name="5" x="-5.8" y="0.8" dx="1.5" dy="0.5" layer="1"/>
<smd name="6" x="-5.8" y="0" dx="1.5" dy="0.5" layer="1"/>
<smd name="7" x="-5.8" y="-0.8" dx="1.5" dy="0.5" layer="1"/>
<smd name="8" x="-5.8" y="-1.6" dx="1.5" dy="0.5" layer="1"/>
<smd name="9" x="-5.8" y="-2.4" dx="1.5" dy="0.5" layer="1"/>
<smd name="10" x="-5.8" y="-3.2" dx="1.5" dy="0.5" layer="1"/>
<smd name="11" x="-5.8" y="-4" dx="1.5" dy="0.5" layer="1"/>
<smd name="12" x="-4" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="13" x="-3.2" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="14" x="-2.4" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="15" x="-1.6" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="16" x="-0.8" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="17" x="0" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="18" x="0.8" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="19" x="1.6" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="20" x="2.4" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="21" x="3.2" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="22" x="4" y="-5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="23" x="5.8" y="-4" dx="1.5" dy="0.5" layer="1"/>
<smd name="24" x="5.8" y="-3.2" dx="1.5" dy="0.5" layer="1"/>
<smd name="25" x="5.8" y="-2.4" dx="1.5" dy="0.5" layer="1"/>
<smd name="26" x="5.8" y="-1.6" dx="1.5" dy="0.5" layer="1"/>
<smd name="27" x="5.8" y="-0.8" dx="1.5" dy="0.5" layer="1"/>
<smd name="28" x="5.8" y="0" dx="1.5" dy="0.5" layer="1"/>
<smd name="29" x="5.8" y="0.8" dx="1.5" dy="0.5" layer="1"/>
<smd name="30" x="5.8" y="1.6" dx="1.5" dy="0.5" layer="1"/>
<smd name="31" x="5.8" y="2.4" dx="1.5" dy="0.5" layer="1"/>
<smd name="32" x="5.8" y="3.2" dx="1.5" dy="0.5" layer="1"/>
<smd name="33" x="5.8" y="4" dx="1.5" dy="0.5" layer="1"/>
<smd name="34" x="4" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="35" x="3.2" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="36" x="2.4" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="37" x="1.6" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="38" x="0.8" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="39" x="0" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="40" x="-0.8" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="41" x="-1.6" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="42" x="-2.4" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="43" x="-3.2" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<smd name="44" x="-4" y="5.8" dx="0.5" dy="1.5" layer="1"/>
<text x="-4.064" y="6.858" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.064" y="-1.7701" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-6.1001" y1="3.8001" x2="-4.95" y2="4.1999" layer="51"/>
<rectangle x1="-6.1001" y1="3" x2="-4.95" y2="3.4" layer="51"/>
<rectangle x1="-6.1001" y1="2.1999" x2="-4.95" y2="2.5999" layer="51"/>
<rectangle x1="-6.1001" y1="1.4" x2="-4.95" y2="1.8001" layer="51"/>
<rectangle x1="-6.1001" y1="0.5999" x2="-4.95" y2="1" layer="51"/>
<rectangle x1="-6.1001" y1="-0.1999" x2="-4.95" y2="0.1999" layer="51"/>
<rectangle x1="-6.1001" y1="-1" x2="-4.95" y2="-0.5999" layer="51"/>
<rectangle x1="-6.1001" y1="-1.8001" x2="-4.95" y2="-1.4" layer="51"/>
<rectangle x1="-6.1001" y1="-2.5999" x2="-4.95" y2="-2.1999" layer="51"/>
<rectangle x1="-6.1001" y1="-3.4" x2="-4.95" y2="-3" layer="51"/>
<rectangle x1="-6.1001" y1="-4.1999" x2="-4.95" y2="-3.8001" layer="51"/>
<rectangle x1="-4.1999" y1="-6.1001" x2="-3.8001" y2="-4.95" layer="51"/>
<rectangle x1="-3.4" y1="-6.1001" x2="-3" y2="-4.95" layer="51"/>
<rectangle x1="-2.5999" y1="-6.1001" x2="-2.1999" y2="-4.95" layer="51"/>
<rectangle x1="-1.8001" y1="-6.1001" x2="-1.4" y2="-4.95" layer="51"/>
<rectangle x1="-1" y1="-6.1001" x2="-0.5999" y2="-4.95" layer="51"/>
<rectangle x1="-0.1999" y1="-6.1001" x2="0.1999" y2="-4.95" layer="51"/>
<rectangle x1="0.5999" y1="-6.1001" x2="1" y2="-4.95" layer="51"/>
<rectangle x1="1.4" y1="-6.1001" x2="1.8001" y2="-4.95" layer="51"/>
<rectangle x1="2.1999" y1="-6.1001" x2="2.5999" y2="-4.95" layer="51"/>
<rectangle x1="3" y1="-6.1001" x2="3.4" y2="-4.95" layer="51"/>
<rectangle x1="3.8001" y1="-6.1001" x2="4.1999" y2="-4.95" layer="51"/>
<rectangle x1="4.95" y1="-4.1999" x2="6.1001" y2="-3.8001" layer="51"/>
<rectangle x1="4.95" y1="-3.4" x2="6.1001" y2="-3" layer="51"/>
<rectangle x1="4.95" y1="-2.5999" x2="6.1001" y2="-2.1999" layer="51"/>
<rectangle x1="4.95" y1="-1.8001" x2="6.1001" y2="-1.4" layer="51"/>
<rectangle x1="4.95" y1="-1" x2="6.1001" y2="-0.5999" layer="51"/>
<rectangle x1="4.95" y1="-0.1999" x2="6.1001" y2="0.1999" layer="51"/>
<rectangle x1="4.95" y1="0.5999" x2="6.1001" y2="1" layer="51"/>
<rectangle x1="4.95" y1="1.4" x2="6.1001" y2="1.8001" layer="51"/>
<rectangle x1="4.95" y1="2.1999" x2="6.1001" y2="2.5999" layer="51"/>
<rectangle x1="4.95" y1="3" x2="6.1001" y2="3.4" layer="51"/>
<rectangle x1="4.95" y1="3.8001" x2="6.1001" y2="4.1999" layer="51"/>
<rectangle x1="3.8001" y1="4.95" x2="4.1999" y2="6.1001" layer="51"/>
<rectangle x1="3" y1="4.95" x2="3.4" y2="6.1001" layer="51"/>
<rectangle x1="2.1999" y1="4.95" x2="2.5999" y2="6.1001" layer="51"/>
<rectangle x1="1.4" y1="4.95" x2="1.8001" y2="6.1001" layer="51"/>
<rectangle x1="0.5999" y1="4.95" x2="1" y2="6.1001" layer="51"/>
<rectangle x1="-0.1999" y1="4.95" x2="0.1999" y2="6.1001" layer="51"/>
<rectangle x1="-1" y1="4.95" x2="-0.5999" y2="6.1001" layer="51"/>
<rectangle x1="-1.8001" y1="4.95" x2="-1.4" y2="6.1001" layer="51"/>
<rectangle x1="-2.5999" y1="4.95" x2="-2.1999" y2="6.1001" layer="51"/>
<rectangle x1="-3.4" y1="4.95" x2="-3" y2="6.1001" layer="51"/>
<rectangle x1="-4.1999" y1="4.95" x2="-3.8001" y2="6.1001" layer="51"/>
</package>
<package name="DIL40" urn="urn:adsk.eagle:footprint:20603/1" library_version="2">
<description>&lt;B&gt;Dual In Line&lt;/B&gt;&lt;p&gt;
package type P</description>
<wire x1="-25.4" y1="-1.27" x2="-25.4" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="1.27" x2="-25.4" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<wire x1="25.4" y1="-6.223" x2="25.4" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="6.223" x2="-25.4" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="6.223" x2="25.4" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-6.223" x2="25.4" y2="-6.223" width="0.1524" layer="21"/>
<pad name="1" x="-24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="-6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="-3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="-1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="21" x="24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="22" x="21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="23" x="19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="24" x="16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="25" x="13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="26" x="11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="27" x="8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="28" x="6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="29" x="3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="30" x="1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="31" x="-1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="32" x="-3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="33" x="-6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="34" x="-8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="35" x="-11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="36" x="-13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="37" x="-16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="38" x="-19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="39" x="-21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="40" x="-24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<text x="-25.781" y="-6.096" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-21.59" y="-2.2352" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="S44" urn="urn:adsk.eagle:footprint:20662/1" library_version="2">
<description>&lt;b&gt;PLCC SOCKET&lt;/b&gt;</description>
<wire x1="-10.16" y1="11.684" x2="-11.684" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-11.684" y1="10.16" x2="-11.684" y2="-11.049" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="6.985" x2="-6.985" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-10.414" x2="-7.239" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-10.414" x2="-10.414" y2="-9.398" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-9.398" x2="-8.255" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-7.239" x2="-8.255" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="-8.255" x2="-6.985" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-9.398" x2="-5.461" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-5.461" y1="-9.398" x2="-5.461" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-10.414" x2="-4.699" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-10.414" x2="-4.699" y2="-9.398" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-8.255" x2="-4.699" y2="-9.398" width="0.1524" layer="51"/>
<wire x1="-4.699" y1="-8.255" x2="-4.191" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-8.255" x2="-2.921" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="-9.525" x2="-2.921" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="-9.525" x2="-2.921" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-10.414" x2="-2.159" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="-10.414" x2="-2.159" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="-8.255" x2="-2.159" y2="-9.525" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-8.255" x2="-1.651" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-8.255" x2="-0.381" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-9.525" x2="-0.381" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-9.525" x2="-0.381" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="-10.414" x2="0.381" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="0.381" y1="-10.414" x2="0.381" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="0.381" y1="-8.255" x2="0.381" y2="-9.525" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-8.255" x2="0.889" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="10.414" y1="9.398" x2="8.255" y2="7.239" width="0.1524" layer="21"/>
<wire x1="10.414" y1="9.398" x2="9.398" y2="10.414" width="0.1524" layer="21"/>
<wire x1="9.398" y1="10.414" x2="7.239" y2="8.255" width="0.1524" layer="21"/>
<wire x1="8.255" y1="7.239" x2="8.255" y2="6.985" width="0.1524" layer="21"/>
<wire x1="8.255" y1="5.969" x2="8.255" y2="5.461" width="0.1524" layer="51"/>
<wire x1="8.255" y1="5.461" x2="9.398" y2="5.461" width="0.1524" layer="51"/>
<wire x1="10.414" y1="5.461" x2="9.398" y2="5.461" width="0.1524" layer="21"/>
<wire x1="10.414" y1="5.461" x2="10.414" y2="4.699" width="0.1524" layer="21"/>
<wire x1="9.398" y1="4.699" x2="10.414" y2="4.699" width="0.1524" layer="21"/>
<wire x1="9.398" y1="4.699" x2="8.255" y2="4.699" width="0.1524" layer="51"/>
<wire x1="8.255" y1="4.699" x2="8.255" y2="4.191" width="0.1524" layer="51"/>
<wire x1="8.255" y1="3.429" x2="8.255" y2="2.921" width="0.1524" layer="51"/>
<wire x1="8.255" y1="2.921" x2="9.398" y2="2.921" width="0.1524" layer="51"/>
<wire x1="10.414" y1="2.921" x2="9.398" y2="2.921" width="0.1524" layer="21"/>
<wire x1="10.414" y1="2.921" x2="10.414" y2="2.159" width="0.1524" layer="21"/>
<wire x1="9.398" y1="2.159" x2="10.414" y2="2.159" width="0.1524" layer="21"/>
<wire x1="9.398" y1="2.159" x2="8.255" y2="1.651" width="0.1524" layer="51"/>
<wire x1="8.255" y1="0.889" x2="8.255" y2="0.381" width="0.1524" layer="51"/>
<wire x1="8.255" y1="0.381" x2="9.398" y2="0.381" width="0.1524" layer="51"/>
<wire x1="10.414" y1="0.381" x2="9.398" y2="0.381" width="0.1524" layer="21"/>
<wire x1="10.414" y1="0.381" x2="10.414" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="9.398" y1="-0.381" x2="10.414" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="9.398" y1="-0.381" x2="8.255" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-0.381" x2="8.255" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-6.985" x2="-8.255" y2="-6.731" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-5.969" x2="-8.255" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-5.461" x2="-9.398" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-5.461" x2="-9.398" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-5.461" x2="-10.414" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-4.699" x2="-10.414" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-4.699" x2="-8.255" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-4.699" x2="-8.255" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-3.429" x2="-8.255" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-2.921" x2="-9.398" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-2.921" x2="-9.398" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-2.921" x2="-10.414" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-2.159" x2="-10.414" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-2.159" x2="-8.255" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-2.159" x2="-8.255" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-0.889" x2="-8.255" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-0.381" x2="-9.398" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-0.381" x2="-9.398" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-0.381" x2="-10.414" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="0.381" x2="-10.414" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="0.381" x2="-8.255" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="0.381" x2="-8.255" y2="0.889" width="0.1524" layer="51"/>
<wire x1="7.239" y1="8.255" x2="6.985" y2="8.255" width="0.1524" layer="21"/>
<wire x1="5.969" y1="8.255" x2="5.461" y2="8.255" width="0.1524" layer="51"/>
<wire x1="5.461" y1="8.255" x2="5.461" y2="9.398" width="0.1524" layer="51"/>
<wire x1="5.461" y1="10.414" x2="5.461" y2="9.398" width="0.1524" layer="21"/>
<wire x1="5.461" y1="10.414" x2="4.699" y2="10.414" width="0.1524" layer="21"/>
<wire x1="4.699" y1="9.398" x2="4.699" y2="10.414" width="0.1524" layer="21"/>
<wire x1="4.699" y1="9.398" x2="4.699" y2="8.255" width="0.1524" layer="51"/>
<wire x1="4.699" y1="8.255" x2="4.191" y2="8.255" width="0.1524" layer="51"/>
<wire x1="3.429" y1="8.255" x2="2.921" y2="8.255" width="0.1524" layer="51"/>
<wire x1="2.921" y1="8.255" x2="2.921" y2="9.398" width="0.1524" layer="51"/>
<wire x1="2.921" y1="10.414" x2="2.921" y2="9.398" width="0.1524" layer="21"/>
<wire x1="2.921" y1="10.414" x2="2.159" y2="10.414" width="0.1524" layer="21"/>
<wire x1="2.159" y1="9.398" x2="2.159" y2="10.414" width="0.1524" layer="21"/>
<wire x1="2.159" y1="9.398" x2="2.159" y2="8.255" width="0.1524" layer="51"/>
<wire x1="2.159" y1="8.255" x2="1.651" y2="8.255" width="0.1524" layer="51"/>
<wire x1="0.889" y1="8.255" x2="0.381" y2="8.255" width="0.1524" layer="51"/>
<wire x1="0.381" y1="8.255" x2="0.381" y2="9.398" width="0.1524" layer="51"/>
<wire x1="0.381" y1="10.414" x2="0.381" y2="9.398" width="0.1524" layer="21"/>
<wire x1="0.381" y1="10.414" x2="-0.381" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="9.398" x2="-0.381" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="9.398" x2="-0.381" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="8.255" x2="-0.889" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="8.255" x2="-2.159" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="8.255" x2="-2.159" y2="9.398" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="10.414" x2="-2.159" y2="9.398" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="10.414" x2="-2.921" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="9.398" x2="-2.921" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="9.398" x2="-2.921" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="8.255" x2="-3.429" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="8.255" x2="-4.699" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-4.699" y1="8.255" x2="-4.699" y2="9.398" width="0.1524" layer="51"/>
<wire x1="-4.699" y1="10.414" x2="-4.699" y2="9.398" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="10.414" x2="-5.461" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="9.398" x2="-5.461" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="9.398" x2="-5.461" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-5.461" y1="8.255" x2="-5.969" y2="8.255" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-8.255" x2="2.159" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="2.159" y1="-9.525" x2="2.159" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="2.159" y1="-9.525" x2="2.159" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-10.414" x2="2.921" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-10.414" x2="2.921" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-8.255" x2="2.921" y2="-9.525" width="0.1524" layer="51"/>
<wire x1="2.921" y1="-8.255" x2="3.429" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="4.191" y1="-8.255" x2="4.699" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="4.699" y1="-9.525" x2="4.699" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="4.699" y1="-9.525" x2="4.699" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-10.414" x2="5.461" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-10.414" x2="5.461" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-8.255" x2="5.461" y2="-9.525" width="0.1524" layer="51"/>
<wire x1="5.461" y1="-8.255" x2="5.969" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="5.969" x2="-8.255" y2="5.461" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="5.461" x2="-9.398" y2="5.461" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="5.461" x2="-9.398" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="5.461" x2="-10.414" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="4.699" x2="-10.414" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="4.699" x2="-8.255" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="4.699" x2="-8.255" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="3.429" x2="-8.255" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="2.921" x2="-9.398" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="2.921" x2="-9.398" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="2.921" x2="-10.414" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="2.159" x2="-10.414" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-10.414" x2="-6.731" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-6.731" y1="-8.255" x2="-6.985" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-6.731" y1="-10.414" x2="-5.969" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-5.461" y1="-8.255" x2="-5.969" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="-8.255" x2="-5.969" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="-10.414" x2="-4.191" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="-10.414" x2="-3.429" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-8.255" x2="-3.429" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-10.414" x2="-1.651" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-10.414" x2="-0.889" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-8.255" x2="-0.889" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-10.414" x2="0.889" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-10.414" x2="1.651" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-8.255" x2="1.651" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="10.414" y1="6.731" x2="8.255" y2="6.731" width="0.1524" layer="51"/>
<wire x1="8.255" y1="6.731" x2="8.255" y2="6.985" width="0.1524" layer="51"/>
<wire x1="10.414" y1="6.731" x2="10.414" y2="5.969" width="0.1524" layer="51"/>
<wire x1="8.255" y1="5.969" x2="10.414" y2="5.969" width="0.1524" layer="51"/>
<wire x1="10.414" y1="4.191" x2="8.255" y2="4.191" width="0.1524" layer="51"/>
<wire x1="10.414" y1="4.191" x2="10.414" y2="3.429" width="0.1524" layer="51"/>
<wire x1="8.255" y1="3.429" x2="10.414" y2="3.429" width="0.1524" layer="51"/>
<wire x1="10.414" y1="1.651" x2="8.255" y2="1.651" width="0.1524" layer="51"/>
<wire x1="10.414" y1="1.651" x2="10.414" y2="0.889" width="0.1524" layer="51"/>
<wire x1="8.255" y1="0.889" x2="10.414" y2="0.889" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-0.889" x2="8.255" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-0.889" x2="10.414" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-1.651" x2="10.414" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-6.731" x2="-8.255" y2="-6.731" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-6.731" x2="-10.414" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-5.969" x2="-10.414" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-4.191" x2="-8.255" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-4.191" x2="-10.414" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-3.429" x2="-10.414" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-1.651" x2="-8.255" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-1.651" x2="-10.414" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-0.889" x2="-10.414" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="0.889" x2="-8.255" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="0.889" x2="-10.414" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="1.651" x2="-10.414" y2="1.651" width="0.1524" layer="51"/>
<wire x1="6.731" y1="10.414" x2="6.731" y2="8.255" width="0.1524" layer="51"/>
<wire x1="6.731" y1="8.255" x2="6.985" y2="8.255" width="0.1524" layer="51"/>
<wire x1="6.731" y1="10.414" x2="5.969" y2="10.414" width="0.1524" layer="51"/>
<wire x1="5.969" y1="8.255" x2="5.969" y2="10.414" width="0.1524" layer="51"/>
<wire x1="4.191" y1="10.414" x2="4.191" y2="8.255" width="0.1524" layer="51"/>
<wire x1="4.191" y1="10.414" x2="3.429" y2="10.414" width="0.1524" layer="51"/>
<wire x1="3.429" y1="8.255" x2="3.429" y2="10.414" width="0.1524" layer="51"/>
<wire x1="1.651" y1="10.414" x2="1.651" y2="8.255" width="0.1524" layer="51"/>
<wire x1="1.651" y1="10.414" x2="0.889" y2="10.414" width="0.1524" layer="51"/>
<wire x1="0.889" y1="8.255" x2="0.889" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="10.414" x2="-0.889" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="10.414" x2="-1.651" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="8.255" x2="-1.651" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="10.414" x2="-3.429" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="10.414" x2="-4.191" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="8.255" x2="-4.191" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="10.414" x2="-5.969" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="10.414" x2="-6.731" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-6.731" y1="8.255" x2="-6.731" y2="10.414" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-10.414" x2="3.429" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-10.414" x2="4.191" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="4.191" y1="-8.255" x2="4.191" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="5.969" y1="-10.414" x2="5.969" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="5.969" y1="-10.414" x2="6.731" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-8.255" x2="6.731" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="6.731" y1="-8.255" x2="6.731" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="6.731" x2="-8.255" y2="6.731" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="6.731" x2="-10.414" y2="5.969" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="5.969" x2="-10.414" y2="5.969" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="4.191" x2="-8.255" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="4.191" x2="-10.414" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="3.429" x2="-10.414" y2="3.429" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-6.731" x2="8.255" y2="-6.731" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-6.731" x2="8.255" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-6.731" x2="10.414" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-5.969" x2="10.414" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-5.969" x2="8.255" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-5.461" x2="9.398" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-5.461" x2="9.398" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-5.461" x2="10.414" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="9.398" y1="-4.699" x2="10.414" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="9.398" y1="-4.699" x2="8.255" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-4.699" x2="8.255" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-3.429" x2="8.255" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-2.921" x2="9.398" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-2.921" x2="9.398" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-2.921" x2="10.414" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="9.398" y1="-2.159" x2="10.414" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="7.112" y1="-8.255" x2="8.255" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-8.255" x2="8.255" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.651" x2="8.255" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-2.159" x2="9.398" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-6.985" y1="8.255" x2="-6.731" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="6.731" x2="-8.255" y2="6.985" width="0.1524" layer="51"/>
<wire x1="-9.398" y1="2.159" x2="-8.255" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="2.159" x2="-8.255" y2="1.651" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-4.191" x2="8.255" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-4.191" x2="10.414" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-3.429" x2="10.414" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-11.684" y1="-11.049" x2="-11.049" y2="-11.684" width="0.1524" layer="21" curve="90"/>
<wire x1="11.049" y1="-11.684" x2="-11.049" y2="-11.684" width="0.1524" layer="21"/>
<wire x1="11.049" y1="-11.684" x2="11.684" y2="-11.049" width="0.1524" layer="21" curve="90"/>
<wire x1="11.049" y1="11.684" x2="-10.16" y2="11.684" width="0.1524" layer="21"/>
<wire x1="11.684" y1="11.049" x2="11.684" y2="-11.049" width="0.1524" layer="21"/>
<wire x1="11.049" y1="11.684" x2="11.684" y2="11.049" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="3.81" x2="1.27" y2="3.81" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.81" x2="0" y2="5.08" width="0.1524" layer="21"/>
<wire x1="0" y1="5.08" x2="-1.27" y2="3.81" width="0.1524" layer="21"/>
<circle x="-2.54" y="2.54" radius="1.27" width="0.1524" layer="21"/>
<circle x="2.54" y="2.54" radius="1.27" width="0.1524" layer="21"/>
<circle x="-2.54" y="-2.54" radius="1.27" width="0.1524" layer="21"/>
<circle x="2.54" y="-2.54" radius="1.27" width="0.1524" layer="21"/>
<pad name="1" x="1.27" y="6.35" drill="0.8128"/>
<pad name="2" x="-1.27" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="3" x="-1.27" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="4" x="-3.81" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="5" x="-3.81" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="6" x="-6.35" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="7" x="-8.89" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="8" x="-6.35" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="9" x="-8.89" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="10" x="-6.35" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="11" x="-8.89" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="12" x="-6.35" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="13" x="-8.89" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="14" x="-6.35" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="15" x="-8.89" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="16" x="-6.35" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="17" x="-8.89" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="18" x="-6.35" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="19" x="-6.35" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="20" x="-3.81" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="21" x="-3.81" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="22" x="-1.27" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="23" x="-1.27" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="24" x="1.27" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="25" x="1.27" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="26" x="3.81" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="27" x="3.81" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="28" x="6.35" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="29" x="8.89" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="30" x="6.35" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="31" x="8.89" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="32" x="6.35" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="33" x="8.89" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="34" x="6.35" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="35" x="8.89" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="36" x="6.35" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="37" x="8.89" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="38" x="6.35" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="39" x="8.89" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="40" x="6.35" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="41" x="6.35" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="42" x="3.81" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="43" x="3.81" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="44" x="1.27" y="8.89" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="11.938" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-10.16" y="11.938" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="8.255" y="-10.795" size="1.27" layer="21" ratio="10">44</text>
<rectangle x1="-0.508" y1="2.159" x2="0.508" y2="4.064" layer="21"/>
<rectangle x1="-0.889" y1="3.81" x2="0.889" y2="4.191" layer="21"/>
<rectangle x1="-0.635" y1="4.191" x2="0.635" y2="4.445" layer="21"/>
<rectangle x1="-0.381" y1="4.445" x2="0.381" y2="4.699" layer="21"/>
<rectangle x1="-0.127" y1="4.699" x2="0.127" y2="4.953" layer="21"/>
<rectangle x1="-1.143" y1="3.81" x2="-0.889" y2="3.937" layer="21"/>
<rectangle x1="-1.016" y1="3.937" x2="-0.889" y2="4.064" layer="21"/>
<rectangle x1="-0.762" y1="4.191" x2="-0.635" y2="4.318" layer="21"/>
<rectangle x1="-0.508" y1="4.445" x2="-0.381" y2="4.572" layer="21"/>
<rectangle x1="-0.254" y1="4.699" x2="-0.127" y2="4.826" layer="21"/>
<rectangle x1="0.127" y1="4.699" x2="0.254" y2="4.826" layer="21"/>
<rectangle x1="0.381" y1="4.445" x2="0.508" y2="4.572" layer="21"/>
<rectangle x1="0.635" y1="4.191" x2="0.762" y2="4.318" layer="21"/>
<rectangle x1="0.889" y1="3.81" x2="1.143" y2="3.937" layer="21"/>
<rectangle x1="0.889" y1="3.937" x2="1.016" y2="4.064" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="PLCC-44" urn="urn:adsk.eagle:package:20795/1" type="box" library_version="2">
<description>PLASTIC LEADED CHIP CARRIER
square, package type L</description>
<packageinstances>
<packageinstance name="PLCC-44"/>
</packageinstances>
</package3d>
<package3d name="MQFP44-2" urn="urn:adsk.eagle:package:20792/1" type="box" library_version="2">
<description>Plastic Metric Quad Flat Pack
package type PQ</description>
<packageinstances>
<packageinstance name="MQFP44-2"/>
</packageinstances>
</package3d>
<package3d name="TQFP44" urn="urn:adsk.eagle:package:20793/1" type="box" library_version="2">
<description>Thin Quad Flat Pack
package type TQ</description>
<packageinstances>
<packageinstance name="TQFP44"/>
</packageinstances>
</package3d>
<package3d name="DIL40" urn="urn:adsk.eagle:package:20801/1" type="box" library_version="2">
<description>Dual In Line
package type P</description>
<packageinstances>
<packageinstance name="DIL40"/>
</packageinstances>
</package3d>
<package3d name="S44" urn="urn:adsk.eagle:package:20817/1" type="box" library_version="2">
<description>PLCC SOCKET</description>
<packageinstances>
<packageinstance name="S44"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PIC17F874" urn="urn:adsk.eagle:symbol:20661/1" library_version="2">
<wire x1="-20.32" y1="27.94" x2="17.78" y2="27.94" width="0.254" layer="94"/>
<wire x1="17.78" y1="27.94" x2="17.78" y2="-30.48" width="0.254" layer="94"/>
<wire x1="17.78" y1="-30.48" x2="-20.32" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-30.48" x2="-20.32" y2="27.94" width="0.254" layer="94"/>
<text x="-20.32" y="29.21" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-33.02" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="25.4" size="1.524" layer="95">VDD</text>
<text x="-3.81" y="-29.21" size="1.524" layer="95">VSS</text>
<pin name="!MCLR/THV" x="-22.86" y="22.86" length="short" direction="in"/>
<pin name="RA0/AN0" x="-22.86" y="17.78" length="short"/>
<pin name="RA1/AN1" x="-22.86" y="15.24" length="short"/>
<pin name="RA2/AN2" x="-22.86" y="12.7" length="short"/>
<pin name="RA3/AN3" x="-22.86" y="10.16" length="short"/>
<pin name="RA4/T0CKI" x="-22.86" y="7.62" length="short"/>
<pin name="RA5/AN4" x="-22.86" y="5.08" length="short"/>
<pin name="RE0/!RD/AN5" x="-22.86" y="2.54" length="short"/>
<pin name="RE1/!WR/AN6" x="-22.86" y="0" length="short"/>
<pin name="RE2/!CS/AN7" x="-22.86" y="-2.54" length="short"/>
<pin name="OSC1/CLKIN" x="-22.86" y="-7.62" length="short" direction="in"/>
<pin name="OSC2/CLKOUT" x="-22.86" y="-10.16" length="short" direction="out"/>
<pin name="RC0/T1OSO" x="-22.86" y="-12.7" length="short"/>
<pin name="RC1/T1OSI" x="-22.86" y="-15.24" length="short"/>
<pin name="RC2/CCP1" x="-22.86" y="-17.78" length="short"/>
<pin name="RC3/SCK" x="-22.86" y="-20.32" length="short"/>
<pin name="RD0/PSP0" x="-22.86" y="-22.86" length="short"/>
<pin name="RD1/PSP1" x="-22.86" y="-25.4" length="short"/>
<pin name="RD2/PSP2" x="20.32" y="-25.4" length="short" rot="R180"/>
<pin name="RD3/PSP3" x="20.32" y="-22.86" length="short" rot="R180"/>
<pin name="SDI/RC4" x="20.32" y="-20.32" length="short" rot="R180"/>
<pin name="SDO/RC5" x="20.32" y="-17.78" length="short" rot="R180"/>
<pin name="TX/RC6" x="20.32" y="-15.24" length="short" rot="R180"/>
<pin name="RX/RC7" x="20.32" y="-12.7" length="short" rot="R180"/>
<pin name="PSP4/RD4" x="20.32" y="-10.16" length="short" rot="R180"/>
<pin name="PSP5/RD5" x="20.32" y="-7.62" length="short" rot="R180"/>
<pin name="PSP6/RD6" x="20.32" y="-5.08" length="short" rot="R180"/>
<pin name="PSP7/RD7" x="20.32" y="-2.54" length="short" rot="R180"/>
<pin name="VSS" x="0" y="-33.02" visible="pad" length="short" direction="pwr" rot="R90"/>
<pin name="VDD" x="0" y="30.48" visible="pad" length="short" direction="pwr" rot="R270"/>
<pin name="INT/RB0" x="20.32" y="2.54" length="short" rot="R180"/>
<pin name="RB1" x="20.32" y="5.08" length="short" rot="R180"/>
<pin name="RB2" x="20.32" y="7.62" length="short" rot="R180"/>
<pin name="PGM/RB3" x="20.32" y="10.16" length="short" rot="R180"/>
<pin name="RB4" x="20.32" y="12.7" length="short" rot="R180"/>
<pin name="RB5" x="20.32" y="15.24" length="short" rot="R180"/>
<pin name="PGC/RB6" x="20.32" y="17.78" length="short" rot="R180"/>
<pin name="PGD/RB7" x="20.32" y="20.32" length="short" rot="R180"/>
<pin name="VDD@1" x="-2.54" y="30.48" visible="pad" length="short" direction="pwr" rot="R270"/>
<pin name="VSS@1" x="-2.54" y="-33.02" visible="pad" length="short" direction="pwr" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PIC16F87*" urn="urn:adsk.eagle:component:20912/1" prefix="IC" library_version="2">
<description>&lt;B&gt;MICROCONTROLLER&lt;/B&gt;</description>
<gates>
<gate name="G$1" symbol="PIC17F874" x="0" y="0"/>
</gates>
<devices>
<device name="L" package="PLCC-44">
<connects>
<connect gate="G$1" pin="!MCLR/THV" pad="2"/>
<connect gate="G$1" pin="INT/RB0" pad="36"/>
<connect gate="G$1" pin="OSC1/CLKIN" pad="14"/>
<connect gate="G$1" pin="OSC2/CLKOUT" pad="15"/>
<connect gate="G$1" pin="PGC/RB6" pad="43"/>
<connect gate="G$1" pin="PGD/RB7" pad="44"/>
<connect gate="G$1" pin="PGM/RB3" pad="39"/>
<connect gate="G$1" pin="PSP4/RD4" pad="30"/>
<connect gate="G$1" pin="PSP5/RD5" pad="31"/>
<connect gate="G$1" pin="PSP6/RD6" pad="32"/>
<connect gate="G$1" pin="PSP7/RD7" pad="33"/>
<connect gate="G$1" pin="RA0/AN0" pad="3"/>
<connect gate="G$1" pin="RA1/AN1" pad="4"/>
<connect gate="G$1" pin="RA2/AN2" pad="5"/>
<connect gate="G$1" pin="RA3/AN3" pad="6"/>
<connect gate="G$1" pin="RA4/T0CKI" pad="7"/>
<connect gate="G$1" pin="RA5/AN4" pad="8"/>
<connect gate="G$1" pin="RB1" pad="37"/>
<connect gate="G$1" pin="RB2" pad="38"/>
<connect gate="G$1" pin="RB4" pad="41"/>
<connect gate="G$1" pin="RB5" pad="42"/>
<connect gate="G$1" pin="RC0/T1OSO" pad="16"/>
<connect gate="G$1" pin="RC1/T1OSI" pad="18"/>
<connect gate="G$1" pin="RC2/CCP1" pad="19"/>
<connect gate="G$1" pin="RC3/SCK" pad="20"/>
<connect gate="G$1" pin="RD0/PSP0" pad="21"/>
<connect gate="G$1" pin="RD1/PSP1" pad="22"/>
<connect gate="G$1" pin="RD2/PSP2" pad="23"/>
<connect gate="G$1" pin="RD3/PSP3" pad="24"/>
<connect gate="G$1" pin="RE0/!RD/AN5" pad="9"/>
<connect gate="G$1" pin="RE1/!WR/AN6" pad="10"/>
<connect gate="G$1" pin="RE2/!CS/AN7" pad="11"/>
<connect gate="G$1" pin="RX/RC7" pad="29"/>
<connect gate="G$1" pin="SDI/RC4" pad="25"/>
<connect gate="G$1" pin="SDO/RC5" pad="26"/>
<connect gate="G$1" pin="TX/RC6" pad="27"/>
<connect gate="G$1" pin="VDD" pad="12"/>
<connect gate="G$1" pin="VDD@1" pad="35"/>
<connect gate="G$1" pin="VSS" pad="13"/>
<connect gate="G$1" pin="VSS@1" pad="34"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:20795/1"/>
</package3dinstances>
<technologies>
<technology name="4">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="PIC16F874-04/L" constant="no"/>
<attribute name="OC_FARNELL" value="9761160" constant="no"/>
<attribute name="OC_NEWARK" value="23C5056" constant="no"/>
</technology>
<technology name="7">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="PIC16F877-20/L" constant="no"/>
<attribute name="OC_FARNELL" value="1660042" constant="no"/>
<attribute name="OC_NEWARK" value="12C1952" constant="no"/>
</technology>
</technologies>
</device>
<device name="PQ" package="MQFP44-2">
<connects>
<connect gate="G$1" pin="!MCLR/THV" pad="18"/>
<connect gate="G$1" pin="INT/RB0" pad="8"/>
<connect gate="G$1" pin="OSC1/CLKIN" pad="30"/>
<connect gate="G$1" pin="OSC2/CLKOUT" pad="31"/>
<connect gate="G$1" pin="PGC/RB6" pad="16"/>
<connect gate="G$1" pin="PGD/RB7" pad="17"/>
<connect gate="G$1" pin="PGM/RB3" pad="11"/>
<connect gate="G$1" pin="PSP4/RD4" pad="2"/>
<connect gate="G$1" pin="PSP5/RD5" pad="3"/>
<connect gate="G$1" pin="PSP6/RD6" pad="4"/>
<connect gate="G$1" pin="PSP7/RD7" pad="5"/>
<connect gate="G$1" pin="RA0/AN0" pad="19"/>
<connect gate="G$1" pin="RA1/AN1" pad="20"/>
<connect gate="G$1" pin="RA2/AN2" pad="21"/>
<connect gate="G$1" pin="RA3/AN3" pad="22"/>
<connect gate="G$1" pin="RA4/T0CKI" pad="23"/>
<connect gate="G$1" pin="RA5/AN4" pad="24"/>
<connect gate="G$1" pin="RB1" pad="9"/>
<connect gate="G$1" pin="RB2" pad="10"/>
<connect gate="G$1" pin="RB4" pad="14"/>
<connect gate="G$1" pin="RB5" pad="15"/>
<connect gate="G$1" pin="RC0/T1OSO" pad="32"/>
<connect gate="G$1" pin="RC1/T1OSI" pad="35"/>
<connect gate="G$1" pin="RC2/CCP1" pad="36"/>
<connect gate="G$1" pin="RC3/SCK" pad="37"/>
<connect gate="G$1" pin="RD0/PSP0" pad="38"/>
<connect gate="G$1" pin="RD1/PSP1" pad="39"/>
<connect gate="G$1" pin="RD2/PSP2" pad="40"/>
<connect gate="G$1" pin="RD3/PSP3" pad="41"/>
<connect gate="G$1" pin="RE0/!RD/AN5" pad="25"/>
<connect gate="G$1" pin="RE1/!WR/AN6" pad="26"/>
<connect gate="G$1" pin="RE2/!CS/AN7" pad="27"/>
<connect gate="G$1" pin="RX/RC7" pad="1"/>
<connect gate="G$1" pin="SDI/RC4" pad="42"/>
<connect gate="G$1" pin="SDO/RC5" pad="43"/>
<connect gate="G$1" pin="TX/RC6" pad="44"/>
<connect gate="G$1" pin="VDD" pad="7"/>
<connect gate="G$1" pin="VDD@1" pad="28"/>
<connect gate="G$1" pin="VSS" pad="6"/>
<connect gate="G$1" pin="VSS@1" pad="29"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:20792/1"/>
</package3dinstances>
<technologies>
<technology name="4">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="PIC16F874-20I/PQ" constant="no"/>
<attribute name="OC_FARNELL" value="1084251" constant="no"/>
<attribute name="OC_NEWARK" value="97K7435" constant="no"/>
</technology>
<technology name="7">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="PIC16F877-04/PQ" constant="no"/>
<attribute name="OC_FARNELL" value="9761357" constant="no"/>
<attribute name="OC_NEWARK" value="23C5094" constant="no"/>
</technology>
</technologies>
</device>
<device name="PT" package="TQFP44">
<connects>
<connect gate="G$1" pin="!MCLR/THV" pad="18"/>
<connect gate="G$1" pin="INT/RB0" pad="8"/>
<connect gate="G$1" pin="OSC1/CLKIN" pad="30"/>
<connect gate="G$1" pin="OSC2/CLKOUT" pad="31"/>
<connect gate="G$1" pin="PGC/RB6" pad="16"/>
<connect gate="G$1" pin="PGD/RB7" pad="17"/>
<connect gate="G$1" pin="PGM/RB3" pad="11"/>
<connect gate="G$1" pin="PSP4/RD4" pad="2"/>
<connect gate="G$1" pin="PSP5/RD5" pad="3"/>
<connect gate="G$1" pin="PSP6/RD6" pad="4"/>
<connect gate="G$1" pin="PSP7/RD7" pad="5"/>
<connect gate="G$1" pin="RA0/AN0" pad="19"/>
<connect gate="G$1" pin="RA1/AN1" pad="20"/>
<connect gate="G$1" pin="RA2/AN2" pad="21"/>
<connect gate="G$1" pin="RA3/AN3" pad="22"/>
<connect gate="G$1" pin="RA4/T0CKI" pad="23"/>
<connect gate="G$1" pin="RA5/AN4" pad="24"/>
<connect gate="G$1" pin="RB1" pad="9"/>
<connect gate="G$1" pin="RB2" pad="10"/>
<connect gate="G$1" pin="RB4" pad="14"/>
<connect gate="G$1" pin="RB5" pad="15"/>
<connect gate="G$1" pin="RC0/T1OSO" pad="32"/>
<connect gate="G$1" pin="RC1/T1OSI" pad="35"/>
<connect gate="G$1" pin="RC2/CCP1" pad="36"/>
<connect gate="G$1" pin="RC3/SCK" pad="37"/>
<connect gate="G$1" pin="RD0/PSP0" pad="38"/>
<connect gate="G$1" pin="RD1/PSP1" pad="39"/>
<connect gate="G$1" pin="RD2/PSP2" pad="40"/>
<connect gate="G$1" pin="RD3/PSP3" pad="41"/>
<connect gate="G$1" pin="RE0/!RD/AN5" pad="25"/>
<connect gate="G$1" pin="RE1/!WR/AN6" pad="26"/>
<connect gate="G$1" pin="RE2/!CS/AN7" pad="27"/>
<connect gate="G$1" pin="RX/RC7" pad="1"/>
<connect gate="G$1" pin="SDI/RC4" pad="42"/>
<connect gate="G$1" pin="SDO/RC5" pad="43"/>
<connect gate="G$1" pin="TX/RC6" pad="44"/>
<connect gate="G$1" pin="VDD" pad="7"/>
<connect gate="G$1" pin="VDD@1" pad="28"/>
<connect gate="G$1" pin="VSS" pad="6"/>
<connect gate="G$1" pin="VSS@1" pad="29"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:20793/1"/>
</package3dinstances>
<technologies>
<technology name="4">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="PIC16F874-04/PQ" constant="no"/>
<attribute name="OC_FARNELL" value="1084251" constant="no"/>
<attribute name="OC_NEWARK" value="97K7429" constant="no"/>
</technology>
<technology name="7">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="PIC16F877-04/PQ" constant="no"/>
<attribute name="OC_FARNELL" value="9761411" constant="no"/>
<attribute name="OC_NEWARK" value="23C5094" constant="no"/>
</technology>
</technologies>
</device>
<device name="P" package="DIL40">
<connects>
<connect gate="G$1" pin="!MCLR/THV" pad="1"/>
<connect gate="G$1" pin="INT/RB0" pad="33"/>
<connect gate="G$1" pin="OSC1/CLKIN" pad="13"/>
<connect gate="G$1" pin="OSC2/CLKOUT" pad="14"/>
<connect gate="G$1" pin="PGC/RB6" pad="39"/>
<connect gate="G$1" pin="PGD/RB7" pad="40"/>
<connect gate="G$1" pin="PGM/RB3" pad="36"/>
<connect gate="G$1" pin="PSP4/RD4" pad="27"/>
<connect gate="G$1" pin="PSP5/RD5" pad="28"/>
<connect gate="G$1" pin="PSP6/RD6" pad="29"/>
<connect gate="G$1" pin="PSP7/RD7" pad="30"/>
<connect gate="G$1" pin="RA0/AN0" pad="2"/>
<connect gate="G$1" pin="RA1/AN1" pad="3"/>
<connect gate="G$1" pin="RA2/AN2" pad="4"/>
<connect gate="G$1" pin="RA3/AN3" pad="5"/>
<connect gate="G$1" pin="RA4/T0CKI" pad="6"/>
<connect gate="G$1" pin="RA5/AN4" pad="7"/>
<connect gate="G$1" pin="RB1" pad="34"/>
<connect gate="G$1" pin="RB2" pad="35"/>
<connect gate="G$1" pin="RB4" pad="37"/>
<connect gate="G$1" pin="RB5" pad="38"/>
<connect gate="G$1" pin="RC0/T1OSO" pad="15"/>
<connect gate="G$1" pin="RC1/T1OSI" pad="16"/>
<connect gate="G$1" pin="RC2/CCP1" pad="17"/>
<connect gate="G$1" pin="RC3/SCK" pad="18"/>
<connect gate="G$1" pin="RD0/PSP0" pad="19"/>
<connect gate="G$1" pin="RD1/PSP1" pad="20"/>
<connect gate="G$1" pin="RD2/PSP2" pad="21"/>
<connect gate="G$1" pin="RD3/PSP3" pad="22"/>
<connect gate="G$1" pin="RE0/!RD/AN5" pad="8"/>
<connect gate="G$1" pin="RE1/!WR/AN6" pad="9"/>
<connect gate="G$1" pin="RE2/!CS/AN7" pad="10"/>
<connect gate="G$1" pin="RX/RC7" pad="26"/>
<connect gate="G$1" pin="SDI/RC4" pad="23"/>
<connect gate="G$1" pin="SDO/RC5" pad="24"/>
<connect gate="G$1" pin="TX/RC6" pad="25"/>
<connect gate="G$1" pin="VDD" pad="11"/>
<connect gate="G$1" pin="VDD@1" pad="32"/>
<connect gate="G$1" pin="VSS" pad="12"/>
<connect gate="G$1" pin="VSS@1" pad="31"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:20801/1"/>
</package3dinstances>
<technologies>
<technology name="4">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="PIC16F874-04I/P" constant="no"/>
<attribute name="OC_FARNELL" value="1196797" constant="no"/>
<attribute name="OC_NEWARK" value="24M5903" constant="no"/>
</technology>
<technology name="7">
<attribute name="MF" value="MICROCHIP" constant="no"/>
<attribute name="MPN" value="PIC16F877-04/P" constant="no"/>
<attribute name="OC_FARNELL" value="9761349" constant="no"/>
<attribute name="OC_NEWARK" value="61K3463" constant="no"/>
</technology>
</technologies>
</device>
<device name="SO" package="S44">
<connects>
<connect gate="G$1" pin="!MCLR/THV" pad="2"/>
<connect gate="G$1" pin="INT/RB0" pad="36"/>
<connect gate="G$1" pin="OSC1/CLKIN" pad="14"/>
<connect gate="G$1" pin="OSC2/CLKOUT" pad="15"/>
<connect gate="G$1" pin="PGC/RB6" pad="43"/>
<connect gate="G$1" pin="PGD/RB7" pad="44"/>
<connect gate="G$1" pin="PGM/RB3" pad="39"/>
<connect gate="G$1" pin="PSP4/RD4" pad="30"/>
<connect gate="G$1" pin="PSP5/RD5" pad="31"/>
<connect gate="G$1" pin="PSP6/RD6" pad="32"/>
<connect gate="G$1" pin="PSP7/RD7" pad="33"/>
<connect gate="G$1" pin="RA0/AN0" pad="3"/>
<connect gate="G$1" pin="RA1/AN1" pad="4"/>
<connect gate="G$1" pin="RA2/AN2" pad="5"/>
<connect gate="G$1" pin="RA3/AN3" pad="6"/>
<connect gate="G$1" pin="RA4/T0CKI" pad="7"/>
<connect gate="G$1" pin="RA5/AN4" pad="8"/>
<connect gate="G$1" pin="RB1" pad="37"/>
<connect gate="G$1" pin="RB2" pad="38"/>
<connect gate="G$1" pin="RB4" pad="41"/>
<connect gate="G$1" pin="RB5" pad="42"/>
<connect gate="G$1" pin="RC0/T1OSO" pad="16"/>
<connect gate="G$1" pin="RC1/T1OSI" pad="18"/>
<connect gate="G$1" pin="RC2/CCP1" pad="19"/>
<connect gate="G$1" pin="RC3/SCK" pad="20"/>
<connect gate="G$1" pin="RD0/PSP0" pad="21"/>
<connect gate="G$1" pin="RD1/PSP1" pad="22"/>
<connect gate="G$1" pin="RD2/PSP2" pad="23"/>
<connect gate="G$1" pin="RD3/PSP3" pad="24"/>
<connect gate="G$1" pin="RE0/!RD/AN5" pad="9"/>
<connect gate="G$1" pin="RE1/!WR/AN6" pad="10"/>
<connect gate="G$1" pin="RE2/!CS/AN7" pad="11"/>
<connect gate="G$1" pin="RX/RC7" pad="29"/>
<connect gate="G$1" pin="SDI/RC4" pad="25"/>
<connect gate="G$1" pin="SDO/RC5" pad="26"/>
<connect gate="G$1" pin="TX/RC6" pad="27"/>
<connect gate="G$1" pin="VDD" pad="12"/>
<connect gate="G$1" pin="VDD@1" pad="35"/>
<connect gate="G$1" pin="VSS" pad="13"/>
<connect gate="G$1" pin="VSS@1" pad="34"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:20817/1"/>
</package3dinstances>
<technologies>
<technology name="7">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="TP4056">
<packages>
<package name="SOP-8">
<smd name="7" x="2.75" y="0.635" dx="1.3" dy="0.7" layer="1"/>
<smd name="8" x="2.75" y="1.905" dx="1.3" dy="0.7" layer="1"/>
<smd name="6" x="2.75" y="-0.635" dx="1.3" dy="0.7" layer="1"/>
<smd name="5" x="2.75" y="-1.905" dx="1.3" dy="0.7" layer="1"/>
<smd name="2" x="-2.75" y="0.635" dx="1.3" dy="0.7" layer="1"/>
<smd name="1" x="-2.75" y="1.905" dx="1.3" dy="0.7" layer="1"/>
<smd name="3" x="-2.75" y="-0.635" dx="1.3" dy="0.7" layer="1"/>
<smd name="4" x="-2.75" y="-1.905" dx="1.3" dy="0.7" layer="1"/>
<rectangle x1="-1.2" y1="-1.7" x2="1.2" y2="1.7" layer="1"/>
<wire x1="-2.1" y1="2.2" x2="-2.1" y2="-2.2" width="0.127" layer="21"/>
<wire x1="-2.1" y1="-2.2" x2="2.1" y2="-2.2" width="0.127" layer="21"/>
<wire x1="2.1" y1="-2.2" x2="2.1" y2="2.2" width="0.127" layer="21"/>
<wire x1="2.1" y1="2.2" x2="-2.1" y2="2.2" width="0.127" layer="21"/>
<circle x="-1.6" y="1.7" radius="0.22360625" width="0" layer="21"/>
<text x="-3.81" y="2.54" size="1.27" layer="25">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="TP4056">
<pin name="TEMP" x="-5.08" y="-2.54" length="middle"/>
<pin name="PROG" x="-5.08" y="-5.08" length="middle"/>
<pin name="GND" x="-5.08" y="-7.62" length="middle"/>
<pin name="VCC" x="-5.08" y="-10.16" length="middle"/>
<pin name="BAT" x="22.86" y="-10.16" length="middle" rot="R180"/>
<pin name="STDBY" x="22.86" y="-7.62" length="middle" rot="R180"/>
<pin name="CHRG" x="22.86" y="-5.08" length="middle" rot="R180"/>
<pin name="CE" x="22.86" y="-2.54" length="middle" rot="R180"/>
<wire x1="0" y1="0" x2="0" y2="-12.7" width="0.254" layer="94"/>
<wire x1="0" y1="-12.7" x2="17.78" y2="-12.7" width="0.254" layer="94"/>
<wire x1="17.78" y1="-12.7" x2="17.78" y2="0" width="0.254" layer="94"/>
<wire x1="17.78" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<text x="0" y="0" size="1.27" layer="95">&gt;NAME</text>
<text x="0" y="-15.24" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TP4056" prefix="IC">
<gates>
<gate name="G$1" symbol="TP4056" x="-5.08" y="2.54"/>
</gates>
<devices>
<device name="" package="SOP-8">
<connects>
<connect gate="G$1" pin="BAT" pad="5"/>
<connect gate="G$1" pin="CE" pad="8"/>
<connect gate="G$1" pin="CHRG" pad="7"/>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="PROG" pad="2"/>
<connect gate="G$1" pin="STDBY" pad="6"/>
<connect gate="G$1" pin="TEMP" pad="1"/>
<connect gate="G$1" pin="VCC" pad="4"/>
</connects>
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
<part name="IC1" library="microchip" library_urn="urn:adsk.eagle:library:294" deviceset="PIC16F87*" device="P" package3d_urn="urn:adsk.eagle:package:20801/1" technology="4"/>
<part name="IC2" library="TP4056" deviceset="TP4056" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="73.66" y="58.42"/>
<instance part="IC2" gate="G$1" x="116.84" y="83.82"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="PGD/RB7"/>
<wire x1="93.98" y1="78.74" x2="106.68" y2="78.74" width="0.1524" layer="91"/>
<wire x1="106.68" y1="78.74" x2="106.68" y2="60.96" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="INT/RB0"/>
<wire x1="106.68" y1="60.96" x2="93.98" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="RB4"/>
<wire x1="93.98" y1="71.12" x2="101.6" y2="71.12" width="0.1524" layer="91"/>
<wire x1="101.6" y1="71.12" x2="101.6" y2="68.58" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="PGM/RB3"/>
<wire x1="101.6" y1="68.58" x2="93.98" y2="68.58" width="0.1524" layer="91"/>
<wire x1="101.6" y1="71.12" x2="104.14" y2="71.12" width="0.1524" layer="91"/>
<junction x="101.6" y="71.12"/>
<wire x1="104.14" y1="71.12" x2="104.14" y2="53.34" width="0.1524" layer="91"/>
<wire x1="104.14" y1="53.34" x2="109.22" y2="53.34" width="0.1524" layer="91"/>
<wire x1="109.22" y1="53.34" x2="109.22" y2="35.56" width="0.1524" layer="91"/>
<wire x1="109.22" y1="35.56" x2="101.6" y2="35.56" width="0.1524" layer="91"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="55.88" width="0.1524" layer="91"/>
<wire x1="101.6" y1="55.88" x2="111.76" y2="55.88" width="0.1524" layer="91"/>
<wire x1="127" y1="55.88" x2="111.76" y2="55.88" width="0.1524" layer="91"/>
<wire x1="111.76" y1="55.88" x2="111.76" y2="40.64" width="0.1524" layer="91"/>
<wire x1="111.76" y1="40.64" x2="127" y2="40.64" width="0.1524" layer="91"/>
<wire x1="127" y1="40.64" x2="127" y2="55.88" width="0.1524" layer="91"/>
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
