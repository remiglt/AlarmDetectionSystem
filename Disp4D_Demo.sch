<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Anodes(3:0)" />
        <signal name="Cathodes(6:0)" />
        <signal name="XLXN_6(3:0)" />
        <signal name="DataOne(3:0)" />
        <signal name="DataTwo(3:0)" />
        <signal name="XLXN_20(3:0)" />
        <signal name="XLXN_21(3:0)" />
        <signal name="XLXN_22(3:0)" />
        <signal name="Horloge" />
        <port polarity="Output" name="Anodes(3:0)" />
        <port polarity="Output" name="Cathodes(6:0)" />
        <port polarity="Input" name="DataOne(3:0)" />
        <port polarity="Input" name="DataTwo(3:0)" />
        <port polarity="Input" name="Horloge" />
        <blockdef name="Disp4x7SegRefComp">
            <timestamp>2021-3-15T9:41:48</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DeDouble4B">
            <timestamp>2021-3-15T9:48:12</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Disp4x7SegRefComp" name="XLXI_1">
            <blockpin signalname="Horloge" name="CLK" />
            <blockpin signalname="XLXN_6(3:0)" name="DataA(3:0)" />
            <blockpin signalname="XLXN_20(3:0)" name="DataB(3:0)" />
            <blockpin signalname="XLXN_21(3:0)" name="DataC(3:0)" />
            <blockpin signalname="XLXN_22(3:0)" name="DataD(3:0)" />
            <blockpin signalname="Anodes(3:0)" name="Anodes(3:0)" />
            <blockpin signalname="Cathodes(6:0)" name="Cathodes(6:0)" />
        </block>
        <block symbolname="DeDouble4B" name="XLXI_4">
            <blockpin signalname="DataOne(3:0)" name="E(3:0)" />
            <blockpin signalname="XLXN_6(3:0)" name="A(3:0)" />
            <blockpin signalname="XLXN_21(3:0)" name="B(3:0)" />
        </block>
        <block symbolname="DeDouble4B" name="XLXI_3">
            <blockpin signalname="DataTwo(3:0)" name="E(3:0)" />
            <blockpin signalname="XLXN_20(3:0)" name="A(3:0)" />
            <blockpin signalname="XLXN_22(3:0)" name="B(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1900" height="1344">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="Anodes(3:0)">
            <wire x2="1504" y1="480" y2="480" x1="1424" />
        </branch>
        <branch name="Cathodes(6:0)">
            <wire x2="1504" y1="736" y2="736" x1="1424" />
        </branch>
        <branch name="XLXN_6(3:0)">
            <wire x2="1040" y1="544" y2="544" x1="880" />
        </branch>
        <iomarker fontsize="28" x="1504" y="736" name="Cathodes(6:0)" orien="R0" />
        <iomarker fontsize="28" x="1504" y="480" name="Anodes(3:0)" orien="R0" />
        <branch name="DataOne(3:0)">
            <wire x2="496" y1="544" y2="544" x1="400" />
        </branch>
        <branch name="DataTwo(3:0)">
            <wire x2="496" y1="816" y2="816" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="544" name="DataOne(3:0)" orien="R180" />
        <branch name="XLXN_20(3:0)">
            <wire x2="944" y1="816" y2="816" x1="880" />
            <wire x2="944" y1="608" y2="816" x1="944" />
            <wire x2="1040" y1="608" y2="608" x1="944" />
        </branch>
        <branch name="XLXN_21(3:0)">
            <wire x2="896" y1="608" y2="608" x1="880" />
            <wire x2="896" y1="608" y2="672" x1="896" />
            <wire x2="1040" y1="672" y2="672" x1="896" />
        </branch>
        <branch name="XLXN_22(3:0)">
            <wire x2="976" y1="880" y2="880" x1="880" />
            <wire x2="976" y1="736" y2="880" x1="976" />
            <wire x2="1040" y1="736" y2="736" x1="976" />
        </branch>
        <instance x="496" y="640" name="XLXI_4" orien="R0">
        </instance>
        <instance x="496" y="912" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="400" y="816" name="DataTwo(3:0)" orien="R180" />
        <branch name="Horloge">
            <wire x2="944" y1="320" y2="320" x1="400" />
            <wire x2="944" y1="320" y2="480" x1="944" />
            <wire x2="1040" y1="480" y2="480" x1="944" />
        </branch>
        <iomarker fontsize="28" x="400" y="320" name="Horloge" orien="R180" />
        <instance x="1040" y="768" name="XLXI_1" orien="R0">
        </instance>
    </sheet>
</drawing>