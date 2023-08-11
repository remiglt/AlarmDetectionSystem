<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="CLK" />
        <signal name="Alarme" />
        <signal name="Freq" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="Alarme" />
        <port polarity="Output" name="Freq" />
        <blockdef name="Cmpt">
            <timestamp>2021-5-17T10:40:40</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MUX2v1">
            <timestamp>2021-5-17T10:2:18</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="Cmpt" name="XLXI_1">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="Alarme" name="EN" />
            <blockpin signalname="XLXN_1" name="CM1" />
            <blockpin signalname="XLXN_2" name="CM2" />
            <blockpin signalname="XLXN_3" name="CM3" />
        </block>
        <block symbolname="MUX2v1" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="FSK1" />
            <blockpin signalname="XLXN_2" name="FSK2" />
            <blockpin signalname="XLXN_3" name="SEL" />
            <blockpin signalname="Freq" name="F" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1900" height="1344">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="352" y="704" name="XLXI_1" orien="R0">
        </instance>
        <instance x="912" y="704" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="912" y1="544" y2="544" x1="736" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="912" y1="608" y2="608" x1="736" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="912" y1="672" y2="672" x1="736" />
        </branch>
        <branch name="CLK">
            <wire x2="352" y1="544" y2="544" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="544" name="CLK" orien="R180" />
        <branch name="Alarme">
            <wire x2="352" y1="672" y2="672" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="672" name="Alarme" orien="R180" />
        <branch name="Freq">
            <wire x2="1328" y1="544" y2="544" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1328" y="544" name="Freq" orien="R0" />
    </sheet>
</drawing>