<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW(3:0)" />
        <signal name="XLXN_13(2:0)" />
        <signal name="Capteur" />
        <signal name="CLK" />
        <signal name="XLXN_1" />
        <signal name="CORRECT" />
        <signal name="DEFAUT" />
        <signal name="BP" />
        <signal name="XLXN_53" />
        <signal name="ERREUR" />
        <signal name="ALARME" />
        <signal name="ETATS(2:0)" />
        <port polarity="Input" name="SW(3:0)" />
        <port polarity="Input" name="Capteur" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="CORRECT" />
        <port polarity="Output" name="DEFAUT" />
        <port polarity="Input" name="BP" />
        <port polarity="Output" name="ERREUR" />
        <port polarity="Output" name="ALARME" />
        <port polarity="Output" name="ETATS(2:0)" />
        <blockdef name="DFM">
            <timestamp>2021-5-10T8:24:48</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ComparateurCodes">
            <timestamp>2021-5-10T7:47:44</timestamp>
            <rect width="288" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
        </blockdef>
        <blockdef name="deverouille">
            <timestamp>2021-5-10T7:53:10</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="DFM" name="DFM1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="BP" name="Btn" />
            <blockpin signalname="XLXN_53" name="Detect" />
        </block>
        <block symbolname="ComparateurCodes" name="comp1">
            <blockpin signalname="SW(3:0)" name="Switchs(3:0)" />
            <blockpin signalname="XLXN_13(2:0)" name="S(2:0)" />
            <blockpin signalname="XLXN_1" name="code_correct" />
        </block>
        <block symbolname="deverouille" name="dev1">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="Capteur" name="capteur" />
            <blockpin signalname="XLXN_1" name="code_correct" />
            <blockpin signalname="XLXN_53" name="BP" />
            <blockpin signalname="ALARME" name="alarme" />
            <blockpin signalname="CORRECT" name="voyant1" />
            <blockpin signalname="DEFAUT" name="voyant2" />
            <blockpin signalname="ERREUR" name="voyant3" />
            <blockpin signalname="ETATS(2:0)" name="ETATS(2:0)" />
            <blockpin signalname="XLXN_13(2:0)" name="S(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1900" height="1344">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="SW(3:0)">
            <wire x2="560" y1="496" y2="496" x1="320" />
        </branch>
        <branch name="XLXN_13(2:0)">
            <wire x2="560" y1="560" y2="560" x1="544" />
            <wire x2="544" y1="560" y2="736" x1="544" />
            <wire x2="1488" y1="736" y2="736" x1="544" />
            <wire x2="1488" y1="624" y2="624" x1="1408" />
            <wire x2="1488" y1="624" y2="736" x1="1488" />
        </branch>
        <branch name="Capteur">
            <wire x2="1024" y1="400" y2="400" x1="320" />
        </branch>
        <branch name="CLK">
            <wire x2="400" y1="320" y2="320" x1="320" />
            <wire x2="400" y1="320" y2="928" x1="400" />
            <wire x2="528" y1="928" y2="928" x1="400" />
            <wire x2="1024" y1="304" y2="304" x1="400" />
            <wire x2="400" y1="304" y2="320" x1="400" />
        </branch>
        <branch name="BP">
            <wire x2="528" y1="992" y2="992" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="992" name="BP" orien="R180" />
        <iomarker fontsize="28" x="320" y="496" name="SW(3:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="400" name="Capteur" orien="R180" />
        <iomarker fontsize="28" x="320" y="320" name="CLK" orien="R180" />
        <instance x="528" y="1024" name="DFM1" orien="R0">
        </instance>
        <instance x="560" y="592" name="comp1" orien="R0">
        </instance>
        <branch name="ALARME">
            <wire x2="1424" y1="304" y2="304" x1="1408" />
            <wire x2="1504" y1="304" y2="304" x1="1424" />
        </branch>
        <branch name="CORRECT">
            <wire x2="1424" y1="368" y2="368" x1="1408" />
            <wire x2="1504" y1="368" y2="368" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1504" y="432" name="DEFAUT" orien="R0" />
        <branch name="DEFAUT">
            <wire x2="1504" y1="432" y2="432" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1504" y="496" name="ERREUR" orien="R0" />
        <branch name="ERREUR">
            <wire x2="1504" y1="496" y2="496" x1="1408" />
        </branch>
        <branch name="XLXN_1">
            <wire x2="1024" y1="496" y2="496" x1="976" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="992" y1="992" y2="992" x1="912" />
            <wire x2="992" y1="592" y2="992" x1="992" />
            <wire x2="1024" y1="592" y2="592" x1="992" />
        </branch>
        <instance x="1024" y="656" name="dev1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1504" y="368" name="CORRECT" orien="R0" />
        <iomarker fontsize="28" x="1504" y="304" name="ALARME" orien="R0" />
        <branch name="ETATS(2:0)">
            <wire x2="1424" y1="560" y2="560" x1="1408" />
            <wire x2="1504" y1="560" y2="560" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1504" y="560" name="ETATS(2:0)" orien="R0" />
    </sheet>
</drawing>