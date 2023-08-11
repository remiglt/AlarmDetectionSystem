<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="rotatif_A" />
        <signal name="rotatif_B" />
        <signal name="Modulo_code" />
        <signal name="E(3:0)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="rotatif_A" />
        <port polarity="Input" name="rotatif_B" />
        <port polarity="Output" name="Modulo_code" />
        <port polarity="Output" name="E(3:0)" />
        <blockdef name="rotaryFSM">
            <timestamp>2021-5-31T9:40:34</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="genericCount">
            <timestamp>2021-5-31T9:41:4</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="rotaryFSM" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="rotatif_A" name="rotatif_A" />
            <blockpin signalname="rotatif_B" name="rotatif_B" />
            <blockpin signalname="XLXN_6" name="rotEvent" />
            <blockpin signalname="XLXN_7" name="rotSens" />
        </block>
        <block symbolname="genericCount" name="XLXI_2">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_6" name="enableIn" />
            <blockpin signalname="XLXN_7" name="upDown" />
            <blockpin signalname="Modulo_code" name="enableOut" />
            <blockpin signalname="E(3:0)" name="S(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1900" height="1344">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="368" y="736" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="352" y1="400" y2="400" x1="160" />
            <wire x2="352" y1="400" y2="576" x1="352" />
            <wire x2="368" y1="576" y2="576" x1="352" />
            <wire x2="816" y1="400" y2="400" x1="352" />
            <wire x2="816" y1="400" y2="576" x1="816" />
            <wire x2="832" y1="576" y2="576" x1="816" />
        </branch>
        <branch name="rotatif_A">
            <wire x2="352" y1="640" y2="640" x1="224" />
            <wire x2="368" y1="640" y2="640" x1="352" />
        </branch>
        <branch name="rotatif_B">
            <wire x2="352" y1="704" y2="704" x1="224" />
            <wire x2="368" y1="704" y2="704" x1="352" />
        </branch>
        <branch name="Modulo_code">
            <wire x2="1232" y1="576" y2="576" x1="1216" />
            <wire x2="1264" y1="576" y2="576" x1="1232" />
        </branch>
        <branch name="E(3:0)">
            <wire x2="1232" y1="704" y2="704" x1="1216" />
            <wire x2="1264" y1="704" y2="704" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="224" y="640" name="rotatif_A" orien="R180" />
        <instance x="832" y="736" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1264" y="576" name="Modulo_code" orien="R0" />
        <iomarker fontsize="28" x="1264" y="704" name="E(3:0)" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="784" y1="576" y2="576" x1="752" />
            <wire x2="784" y1="576" y2="640" x1="784" />
            <wire x2="832" y1="640" y2="640" x1="784" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="832" y1="704" y2="704" x1="752" />
        </branch>
        <iomarker fontsize="28" x="224" y="704" name="rotatif_B" orien="R180" />
        <iomarker fontsize="28" x="160" y="400" name="CLK" orien="R180" />
    </sheet>
</drawing>