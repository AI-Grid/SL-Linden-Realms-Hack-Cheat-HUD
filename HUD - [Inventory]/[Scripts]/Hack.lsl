/*Copyright (C) https://github.com/Erik-Aranda/SL-Linden-Realms-Hack-Cheat-HUD
===========================================================================
                              __
                            .d$$b
                          .' TO$;.
                        /  : TP._;
                        / _.;  :Tb|
                      /   /   ;j$j
                  _.-'       d$$$$
                .' ..       d$$$$;
                /  /P'      d$$$$P. |.
              /   '      .d$$$P' |'^'l
            .'           `T$P^'''''  :
        ._.'      _.'                ;
      `-.-'.-'-' ._.       _.-'    .-'
    `.-' _____  ._              .-'
  -(.g$$$$$$$b.              .'
    ''^^T$$$P^)            .(:
      _/  -'  /.'         /:/;
    ._.'-'`-'  ')/         /;/;
`-.-'..--''   ' /         /  ;
.-' ..--''        -'          :
..--''--.-'         ('      .-(.
  ..--''              `-'('';`
    _.                      :
                            ;`-
                          :.
                          ;*/

////////////////// - //////////////////

key owner;
integer SENSORRUN;
float TIME_DELAY_SECONDS = 0.5;
float RADAR = 1.5;
float TIMEX2REGIONS = 5.5;
float TIME_DELAY_SECONDS_PASS_REGIONS = 8.0;
float TIME_DELAY_SECONDS_PASS_REGIONS2 = 6.0; 
float SPEED_WAT = 0.7;
float SPEED_LINDEN_REALMS = 0.3;
float SPEED_LINDEN_REALMS2 = 0.7;
float SPEED_LINDEN_REALMS3 = 1.1;
float SPEED_LINDEN_REALMS5 = 3.1;
float SPEED_LINDEN_REALMS5X = 2.0;
float SPEED_LINDEN_REALMS4 = 0.05;
float SPEED_LINDEN_REALMS45 = 0.05;
float SPEED_LINDEN_REALMSdou = 1.5;
float MAXDISTANCE = 2;
float MAXDISTANCE2 = 0.8;
float xs = 0.4;

vector POS_OWNER;
vector RKS;
vector finishs;
vector finalmeta;

integer HAHHE;
integer OoKES;
integer HAKE;
integer OES;
integer A;
integer ZK;
integer MERGES;
integer listenB;
integer okNA;
integer HEHE;
integer RS;
integer CA;
integer XKS;
integer Contadore;
integer AGGRESIVE_STATE;
integer RCDI;
integer MSI = 1;
integer FIRST;
integer FIRST2;
integer DEM;

list Regions = ["Portal Park 1"];
list BlockedLR = ["LR 7","LR 6","LR 5","LR 2","LR 8","LR 11","LR 10","LR 12","LR 3","LR 1","LR 9"];
list LR1 = ["LR 7","LR 27","LR 47","LR 147","LR 167","LR 187"];
list LR2 = ["LR 6","LR 26","LR 46","LR 146","LR 166","LR 186"];
list LR3 = ["LR 5","LR 25","LR 45","LR 145","LR 165","LR 185"];
list LR4 = ["LR 2","LR 22","LR 42","LR 142","LR 162","LR 182"];
list LR5 = ["LR 8","LR 28","LR 48","LR 148","LR 168","LR 188"];
list LR6 = ["LR 11","LR 31","LR 51","LR 151","LR 171","LR 191"];
list LR7 = ["LR 10","LR 30","LR 50","LR 150","LR 170","LR 190"];
list LR8 = ["LR 12","LR 32","LR 52","LR 152","LR 172","LR 192"];
list LR9 = ["LR 3","LR 23","LR 43","LR 143","LR 163","LR 183"];
list LR10 = ["LR 1","LR 21","LR 41","LR 141","LR 161","LR 181"];
list LR11 = ["LR 4","LR 24","LR 44","LR 144","LR 164","LR 184"];
list LR12 = ["LR 9","LR 29","LR 49","149","LR 169","LR 189"];

integer ServerK;
integer OXO;
integer BoxesNOW;

list POSRegion0 = [<93,156,53>,
<93,156,53>,
<78,137,53>,
<71,139,52>,
<58,142,53>,
<45.95018, 140.10680, 57>,
<45.95018, 140.10680, 54>,
<0,0,0>];

list POSRegion1 = [<93,156,53>,
<93,156,53>,
<78,137,53>,
<71,139,52>,
<58,142,53>,
<32,148,55>];

list POSRegion2 = [<203,210,55>,
<203,210,55>,
<184,190,55>,
<163,171,55>,
<142,154,55>,
<117,138,55>,
<78,133,55>,
<28,126,55>,
<0,142,55>,
<-1.54533, 142.69700, 55.03342>,
<-5.54533, 142.69700, 55.03342>];

list POSRegion2FUCK = [<203,220,270>,
<203,220,270>,
<150,220,270>,
<100,220,270>,
<50,220,270>,
<10,220,270>,
<0,220,270>,
<-1.54533, 220, 270>,
<-5.54533, 220, 270>];
list POSRegion10 = [<252,250,270>,
<252,250,270>,
<252,260,270>];
list POSRegion11 =  [<204.65760, 17.37965, 270>,
<204.65760, 17.37965, 270>,
<204.65760, 50.37965, 270>,
<204.65760, 100.37965, 270>,
<204.65760, 150.37965, 270>,
<204.65760, 200.37965, 270>,
<204.65760, 230.37965, 270>,
<182.27390, 248.26350, 60.67903>,
<182.27390, 260.26350, 60.67903>];

list POSRegion3 = [<237,140,25>,
<237,140,25>,
<232,143,35>,
<233.01170, 143.77090, 27.93986>,
<233.01170, 143.77090, 30.93986>,
<20,242,26>];

vector POSRegion3X = <215.91150, 139.00000, 29.8999>;
list POSRegion3XX = [
    <215.91150, 139.00000, 50.8999>,
    <215.91150, 139.00000, 29.8999>,

    <223,147,35>,
    <232,143,35>,
    <233.01170, 143.77090, 27.93986>,
    <233.50570, 143.61020, 25.95747>,
    <233.53070, 142.47180, 25.42000>,
    <222.79710, 136.33560, 35.39918>,

    <223,147,35>,
    <232,143,35>,
    <233.01170, 143.77090, 27.93986>,
    <233.50570, 143.61020, 25.95747>,
    <233.53070, 142.47180, 25.42000>,
    <222.79710, 136.33560, 35.39918>,

    <215.91150, 139.00000, 29.8999>,
    <0,0,0>
];

list POSRegion3B = [<219,138,39>,
<219,138,39>,
<205,121,41>,
<180,103,47>,
<126,75,55>,
<26,228,56>];

list POSRegion3C = [<129,78,40>,
<129,78,40>,
<82,76,56>,
<41,91,53>,
<0,88,53>,
<-5.54533,88,53>];

list POSRegion4 = [<232,128,56>,
<232,128,56>,
<232,158,56>,
<232,204,56>,
<232,234,56>,
<232,253,56>,
<218,253,96>,
<218,267,96>];

list posregion5XXX = [
<222.64690, 3.10440, 100.0>,
<222.64690, 3.10440, 30.0>,
<222.64690, 3.10440, 25.08179>,
<222.75410, 1.55047, 24.99824>,
<222.64690, 3.10440, 30.0>,
<222.64690, 3.10440, 25.08179>,
<222.75410, 1.55047, 24.99824>,
<222.64690, 3.10440, 30.0>,
<222.64690, 3.10440, 25.08179>,
<222.75410, 1.55047, 24.99824>,
<222.64690, 3.10440, 30.0>,
<222.64690, 3.10440, 25.08179>,
<222.75410, 1.55047, 24.99824>,
<0,0,0>
];

list POSRegion6 = [<58,0,270>,
<58,0,270>,
<58,-1.54533,270>];

list POSRegion7 = [<0,214,270>,
<0,214,270>,
<-3.8,214,270>];

list POSRegion8 = [<241,130,83>,
<241,130,83>,

<220.99350, 66.33111, 37.66567>,

<218.41220, 66.25275, 37.11572>,

<218.52640, 66.71367, 37.60862>,
<219.93000, 66.18843, 37.64071>,
<221.64530, 66.21477, 37.67545>,
<221.43920, 66.27061, 36.99962>,
<223.28200, 66.25644, 41.20601>,

<214,63,38>,

<199,40,67>,
<191,0.1,67>,
<191,-2.84533,67>,
<191,-3.84533,67>,
<0,0,0>
];

list POSRegion9 = [<199,190,35>,
<186,153,35>,
<162,111,35>,
<133,86,32>,
<126,70,32>,
<126,70,22>,
<126,70,26>,
<0,0,0>];

vector okdoudou = <127.50910, 18.96762, 44.00000>;
list POSRegion12v2 = 
[
<127.50910, 18.96762, 44.00000>,

<127.50910, 18.96762, 33.70814>,
<125.73750, 17.42266, 33.25420>,
<127.50150, 18.67479, 33.74070>,
<127.50910, 18.96762, 33.70814>,
<125.73750, 17.42266, 33.25420>,
<127.50150, 18.67479, 33.74070>,
<126.70790, 18.04813, 33.76523>,
<127.51600, 18.93495, 33.71031>,
<127.59480, 19.44051, 33.25105>,
<127.50910, 18.96762, 33.70814>,
<125.73750, 17.42266, 33.25420>,
<127.50150, 18.67479, 33.74070>,
<127.50910, 18.96762, 33.70814>,
<125.73750, 17.42266, 33.25420>,
<127.50150, 18.67479, 33.74070>,
<126.70790, 18.04813, 33.76523>,
<127.51600, 18.93495, 33.71031>,

<124,18,33.54376>,
<111,80,100>,
<128.00870, 83.41325, 67.86472>,
<0,0,0>
];

list POSRegion12 = 
[
<150.00000, 14.00000, 44.00000>,
<126.66140, 18.53677, 60.75748>,
<127.02530, 18.41553, 33.54376>,
<126.66140, 18.53677, 32.75748>,
<127.02530, 18.41553, 60.54376>,
<127.02530, 18.41553, 33.54376>,
<124,18,33>,
<140, 72, 52>,
<145.02280, 92.31374, 50.94342>,
<154, 114, 52>,
<167.62850, 128.55930, 57.29763>,
<191.65070, 188.90130, 48.91420>,
<200, 207, 51>,
<235.94100, 180.11120, 58.34655>,
<224.94830, 150.70750, 64.58587>,
<202.28360, 119.27590, 68.50500>,
<176,98,68>,
<160,93,68>,
<147,91,65>,
<137.12090, 90.44455, 70.15599>,
<109,93,75>,
<70.79817, 128.73730, 70.13555>,
<77.45488, 209.27890, 58.87533>,
<113.49590, 231.93520, 65.12796>,
<135.59230, 235.89130, 71.00790>,
<164.30760, 235.85370, 77.70943>,
<192.38670, 227.97210, 82.25227>,
<214.73020, 202.06090, 81.10702>,
<157.78100, 172.13020, 81.66746>,
<148.43010, 167.12600, 80.38728>,
<148.13300, 162.64560, 80.40981>,
<0,0,0>
];

vector special0 = <81,130,67>;
vector special = <83,131,42>;
vector wtf = <82,130,39>;

list POSRegion12C = [
<79.29565, 135.86680, 39.31013>,
<79.29565, 135.86680, 39.31013>,
<30,107,41>,
<33,109,70>
];

list NO_TARGET = [<0,0,0>,<1,1,1>,<33,109,70>,<26,228,56>,<20,242,26>,<51,228,27>,<89,214,22>];

llSend(string M)
{
    llMessageLinked(0xFFFFFFFC,0,M,llGetKey());
}

RLVTeleportAgent(key LLAVE,string REGION,integer X,integer Y,integer Z)
{   
    llOwnerSay("@accepttp=[:"+(string)LLAVE+"]=add");
    llSleep(DEG_TO_RAD);
    llOwnerSay("@tpto:"+REGION+"/"+(string)X+"/"+(string)Y+"/"+(string)Z+">[;0]=force"); 
}

Remaster_Touch()
{
    llTargetOmega(<xs,0.0,0.0>,TWO_PI,0.1);
    if(CA!=19)
    {
        finishs=ZERO_VECTOR;
        okNA=0;
    }
    if(CA==1|CA==20)
    {
        CA=2;
    }
    else if(CA==3)
    {
        CA=4;
    }
    else if(CA==5)
    {
        CA=6;
    }
    else if(CA==7)
    {
        CA=8;
    }
    else if((CA==17))
    {
        CA=18;
    }
    else if(CA==19)
    {
        FinderServer();
    }
}

FinderServer()
{
    string region = llGetRegionName();
    integer A1 = llListFindList(LR1,(list)region);
    integer A2 = llListFindList(LR2,(list)region);
    integer A3 = llListFindList(LR3,(list)region);
    integer A4 = llListFindList(LR4,(list)region);
    integer A5 = llListFindList(LR5,(list)region);
    integer A6 = llListFindList(LR6,(list)region);
    integer A7 = llListFindList(LR7,(list)region);
    integer A8 = llListFindList(LR8,(list)region);
    integer A9 = llListFindList(LR9,(list)region);
    integer A10 = llListFindList(LR10,(list)region); 
    integer A11 = llListFindList(LR11,(list)region); 
    integer A12 = llListFindList(LR12,(list)region); 
    if(A2!=0xFFFFFFFF & HAHHE==0)
    {
        DEM=0;
        CA=20;
        RCDI=0;
    }
    else
    {
        integer result;
        if(A2!=0xFFFFFFFF & HAHHE%2)
        {
            HAHHE=0;
            result=A2;
        }
        else
        {
            HAHHE=0;
            if(~A1){
                result=A1;}
            else if(~A3){
                result=A3;}
            else if(~A4){
                result=A4;}
            else if(~A5){
                result=A5;}
            else if(~A6){
                result=A6;}
            else if(~A7){
                result=A7;}
            else if(~A8){
                result=A8;}
            else if(~A9){
                result=A9;}
            else if(~A10){
                result=A10;}
            else if(~A11){
                result=A11;} 
            else if(~A12){
                result=A12;}
        }
        if(result!=0 & result!=-1)
        {
            OES=1;
            llOwnerSay("[STARTED REDO]");
            CA=0;
            ZK=0;
            POS_OWNER=ZERO_VECTOR;
            XKS=0;
            finishs=ZERO_VECTOR;
            okNA=0;
            FIRST=0;
            FIRST2=0;
            MERGES=0;
            HEHE=0;
            AGGRESIVE_STATE=0;
            finalmeta=ZERO_VECTOR;
            RCDI=0;
            if(HAKE%2)
            {
                HAKE=0;
                RLVTeleportAgent(owner,llList2String(LR5,result),0,0,0);
            }
            else
            {
                RLVTeleportAgent(owner,llList2String(LR1,result),0,0,0);
            }
            llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
            OoKES=1;
        }
    }
}

Inicio()
{
    if(((llGetAttached()<1)))
    {
        llDie();
    }
    else
    {
        llSetMemoryLimit(65535);
        llScriptProfiler(PROFILE_SCRIPT_MEMORY);
        owner = llGetOwner();
        llSetTimerEvent(0.0);
        llStopMoveToTarget();
        llTargetOmega(<xs,0.0,0.0>,TWO_PI,0.1);
        llSetDamage(0.0);
        llRequestPermissions(owner,0x800);
        OoKES=0;
        SENSORRUN=0;
        RCDI=0;
        llSend("kW2a"+(string)llGetUsedMemory());
        PermissionsCheck();
    }
}

string la_concha_De_tu_madre = "@sit:";
string laputa = "=force";

LAVARocaSit()
{
    //Es mejor escanear el objeto
    llOwnerSay(la_concha_De_tu_madre+"8b372101-d957-d716-f6d6-e8b2de504e5c"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"e1a0300f-6938-a189-af8e-0065b0402110"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"f68a9f42-a9dc-8ea8-0753-a6dcd0ec6280"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"f8cdb211-99a9-4bd2-d6b6-976be992ba60"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"b39ae46a-a93a-afb3-7adb-b72007c2f802"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"c425de23-d523-e637-37a5-ec78eeee2a25"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"a8671c3f-d644-b199-8c4f-8a2e673ac37a"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"830f3990-1b2b-ee62-fcd6-9ac933349493"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"0b28754e-8094-0566-0d64-0ad5265e4c75"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"c425de23-d523-e637-37a5-ec78eeee2a25"+laputa);
}

LAVAUnsit()
{
    llOwnerSay("@unsit=force");
    llOwnerSay("@unsit=force");
    llOwnerSay("@unsit=force");   
}

PermissionsCheck()
{
    Loops();
}

Loops()
{
    llSetTimerEvent(DEG_TO_RAD);
}

RLVZ()
{
    llOwnerSay("@unsit=force");
}

PROFinder(list HAHA, float SPEEDZ, float dix)
{
    RLVZ();
    float ok = (float)llVecDist((vector)POS_OWNER,(vector)finishs);
    if(ok<=(float)dix | (vector)finishs==ZERO_VECTOR | HEHE%2)
    {
        HEHE=0;
        integer LENGTH = llGetListLength(HAHA);
        integer i;
        list numbers;
        for(i=0;i<LENGTH;i++)
        {
            if(XKS%2)
            {
                if(i==okNA)
                {
                    numbers = numbers + [9999.9];
                }
                else if(i==okNA-1
                    |i==okNA+2
                    |i==okNA+3
                    |i==okNA+4
                    |i==okNA+5
                    |i==okNA+6
                    |i==okNA+7
                    |i==okNA+8
                    |i==okNA+9
                    |i==okNA+10
                    |i==okNA+11
                    |i==okNA+12
                    |i==okNA+13
                    )
                {
                    numbers = numbers + [9999.9];
                }
                else if(i==okNA-1
                    |i==okNA-2
                    |i==okNA-3
                    |i==okNA-4
                    |i==okNA-5
                    |i==okNA-6
                    |i==okNA-7
                    |i==okNA-8
                    |i==okNA-9
                    |i==okNA-10
                    |i==okNA-11
                    |i==okNA-12
                    |i==okNA-13
                    )
                {
                    numbers = numbers + [9999.9];
                }
                else
                {
                    numbers = numbers + [(float)llVecDist((vector)POS_OWNER,(vector)llList2Vector((list)HAHA,(integer)i))];
                }
            }
            else
            {
                if(i==okNA)
                {
                    numbers = numbers + [9999.9];
                }
                else if(i==okNA-1)
                {
                    numbers = numbers + [9999.9];
                }
                else if(i==okNA-2)
                {
                    numbers = numbers + [9999.9];
                }
                else if(i==okNA-3)
                {
                    numbers = numbers + [9999.9];
                }
                else if(i==okNA-4)
                {
                    numbers = numbers + [9999.9];
                }
                else
                {
                    numbers = numbers + [(float)llVecDist((vector)POS_OWNER,(vector)llList2Vector((list)HAHA,(integer)i))];
                }
            }
        }
        float results = llListStatistics(LIST_STAT_MIN,numbers);
        integer RES = llListFindList(numbers,(list)[results]);
        finishs = llList2Vector((list)HAHA,(integer)RES);
        okNA=RES;
        MoveTarget(finishs,owner,SPEEDZ);
    }
}

AirGO()
{
    if(AGGRESIVE_STATE==1|AGGRESIVE_STATE==2|AGGRESIVE_STATE==4)
    {
        if(AGGRESIVE_STATE==1)
        {
            RCDI=0;
            llStopMoveToTarget();
            AGGRESIVE_STATE+=1;
            string region = llGetRegionName();
            //llOwnerSay(xD + " Se detecto un Linden/Molen Avatar o la region no es compatible con el HUD. Automaticamente volvera, debera esperar.");
            RLVTeleportAgent(owner,llList2String(Regions,0),0,0,0);
            llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
            AGGRESIVE_STATE=2;
        }
        if(AGGRESIVE_STATE==2)
        {
            if(llGetRegionName()=="Portal Park 1")
            {
                ProLAVA(POSRegion0,SPEED_LINDEN_REALMS3,2.0);
                if((finalmeta==ZERO_VECTOR))
                {
                    AGGRESIVE_STATE=4;
                    llStopMoveToTarget();
                    if(listenB==0)
                    {
                        listenB = llListen(PUBLIC_CHANNEL, "", "", "");
                    }
                }
            }
        }
    }
    else
    {
        Detector_Region_LR();
        if(RCDI==0)
        {
            llSend("STOPSTOP2");
            if(RKS!=llGetPos() & RS==1)
            {
                RS=0;
                HEHE=1;
                finishs=ZERO_VECTOR;
                okNA=0;
                llSleep(1.0);
            }
            if(listenB!=0)
            {
                llListenRemove(listenB);
                listenB=0;
            }
            POS_OWNER = llGetPos();
            string region = llGetRegionName();
            if(llGetSubString(region,0,2)!="LR " & llListFindList((list)llList2String(Regions,0),(list)region)==0xFFFFFFFF & region!="" & region!=" ")
            {
                llSend("STOPSSFORCE");
                llStopMoveToTarget();
                RLVTeleportAgent(owner,llList2String(Regions,0),0,0,0);
                llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
            }
            if(region==llList2String(Regions,0))
            {
                PROFinder(POSRegion1,SPEED_LINDEN_REALMS45,MAXDISTANCE);
                if(FIRST==0)
                {
                    FIRST=1;
                }
            }
            else if(~llListFindList(LR1,(list)region))
            {
                if(FIRST%2)
                {
                    FIRST=0;
                    FIRST2=1;
                    llResetTime();
                }
                if(FIRST2==1 & llGetTime()>=TIME_DELAY_SECONDS_PASS_REGIONS)
                {
                    FIRST2=0;                    
                }
                if(FIRST==0 & FIRST2==0)
                {
                    if(MERGES%2)
                    {
                        llSend("FXDUKPREPARATION");
                        MERGES=0;
                        A=0;
                        finalmeta=ZERO_VECTOR;
                        RCDI=1;
                    }
                    else
                    {
                        if(OES==0)
                        {
                            if(ZK%2)
                            {
                                if(OoKES%2)
                                {
                                    PROFinder(POSRegion2FUCK,SPEED_LINDEN_REALMS45,MAXDISTANCE);
                                }
                                else
                                {
                                    PROFinder(POSRegion2FUCK,SPEED_LINDEN_REALMS45,MAXDISTANCE);
                                }  
                            }
                            else
                            {
                                PROFinder(POSRegion2,SPEED_LINDEN_REALMS3,MAXDISTANCE);                         
                            }
                        }
                        else
                        {
                            ProLAVA(POSRegion2,SPEED_LINDEN_REALMS3,MAXDISTANCE);
                        }
                    }
                }
            }
            else if(~llListFindList(LR6,(list)region))
            {
                PROFinder(POSRegion7,SPEED_LINDEN_REALMS3,MAXDISTANCE);
                finalmeta=ZERO_VECTOR;
                A=0;
            }
            else if(~llListFindList(LR7,(list)region))
            {
                ProLAVA(POSRegion8,SPEED_LINDEN_REALMSdou,0.6);
                if(finalmeta==<191,-3.84533,67>|finalmeta==ZERO_VECTOR)//
                {
                    finalmeta=ZERO_VECTOR;
                    A=0;
                }
            }
            else if(~llListFindList(LR10,(list)region))
            {
                XKS=1;
                if(CA==18)
                {
                    MERGES=1;
                    llStopMoveToTarget();
                    integer FK = llListFindList((list)LR10,(list)llGetRegionName());
                    RLVTeleportAgent(owner,llList2String(LR1,FK),0,0,0);
                    MERGES=1;
                    FIRST=0;
                    FIRST2=0;
                    llSleep(TIME_DELAY_SECONDS_PASS_REGIONS2);
                }
                else if(CA==16)
                {
                    XKS=1;
                    PROFinder(POSRegion12C,SPEED_LINDEN_REALMS45,2.0);
                    if(finishs==<33,109,70> & CA==16)
                    {
                        llOwnerSay("[AMULET OK]");
                        CA=17;
                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                        //llOwnerSay(xD+" "+oeo);
                        CA=17;
                        llStopMoveToTarget();
                        llSend(("CAMARASENSOR"));//
                    }
                }
                else if(CA==0)
                {
                    if(SENSORRUN==0 & (float)llVecDist((vector)llGetPos(),(vector)okdoudou)<0.6)
                    {
                        llSleep(10.0);//dELAY mision 4
                        llSend("SENSORRUN");
                        SENSORRUN=1;
                    }
                    else if(SENSORRUN==2)
                    {
                        ProLAVA(POSRegion12v2,SPEED_LINDEN_REALMS,MAXDISTANCE2);     
                        LAVARocaSit();
                        if(finalmeta==ZERO_VECTOR & CA==0)
                        {
                            A=0;
                            CA=528;
                            SENSORRUN=0;
                        }
                        if(llGetAgentInfo(owner) & AGENT_SITTING)
                        {
                            finalmeta=ZERO_VECTOR;
                            A=0;
                            CA=565;
                            llStopMoveToTarget();
                            SENSORRUN=0;
                        }
                    }
                    else if(SENSORRUN==0 | SENSORRUN==1)
                    {
                        MoveTarget(okdoudou,owner,SPEED_LINDEN_REALMS);
                    }
                }
                else if(CA==528)
                {
                    if(llGetAgentInfo(owner) & AGENT_SITTING)
                    {
                        finalmeta=ZERO_VECTOR;
                        A=0;
                        CA=565;
                        llStopMoveToTarget();
                    }
                    else
                    {
                        LAVARocaSit();
                    }
                }
                else if(CA==565)
                {
                    if(llGetAgentInfo(owner) & AGENT_SITTING)
                    {
                        finalmeta=ZERO_VECTOR;
                        A=0;
                        llStopMoveToTarget();
                        LAVAUnsit();
                        llSleep(1.0);
                        CA=566;
                    }
                }
                else if(CA==566)
                {
                    MoveTarget(special0,owner,0.5);//,0.5);
                    if((float)llVecDist((vector)llGetPos(),(vector)special0)<0.7)
                    {
                        llSleep(0.5);
                        CA=567;
                    }
                }
                else if(CA==567)
                {
                    if(llGetAgentInfo(owner) & AGENT_SITTING)
                    {
                        LAVAUnsit();
                    }
                    else
                    {
                        MoveTarget(special,owner,0.5);
                        llSetStatus(STATUS_PHYSICS,TRUE);
                        llSetForce(<0,0,-0x7FFFFFFF>,1);
                        llSleep(0.06);
                        llSetStatus(STATUS_PHYSICS,FALSE);
                        llSetForce(<0,0,0>, 0);
                        if((float)llVecDist((vector)llGetPos(),(vector)wtf)<=2.5)//2.5)//1.5
                        {
                            llOwnerSay("@sit=force");
                            llOwnerSay("@sit=force");
                            llSetForce(<0,0,0>, 1);
                            llSetForce(<0,0,0>, 0);
                            llSetStatus(STATUS_PHYSICS,FALSE);
                            llSetStatus(STATUS_PHYSICS,FALSE);
                            llSleep(0.2);
                            LAVAUnsit();
                            CA=16;
                        }
                    }
                }
            }
            else if(~llListFindList(LR8,(list)region))
            {
                if(CA!=7 & CA!=8)
                {
                    CA=0;
                }
                if(CA==8)
                {
                    ZK=1;
                    llStopMoveToTarget();
                    integer FK = llListFindList((list)LR8,(list)llGetRegionName());
                    RLVTeleportAgent(owner,llList2String(LR1,FK),0,0,0);
                    llSleep(TIME_DELAY_SECONDS_PASS_REGIONS+1.0);
                }
                if(CA==0)
                {
                    ProLAVA(POSRegion9,SPEED_LINDEN_REALMS45,2.0);
                    if(finalmeta==<0,0,0>)
                    {
                        llOwnerSay("[AMOK]");
                        A=0;
                        finalmeta=ZERO_VECTOR;
                        llStopMoveToTarget();
                        CA=7;
                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                        //llOwnerSay(xD+" "+oeo);
                        llSend(("CAMARASENSOR"));
                        llSend(("CAMARASENSOR"));
                        llSend("CAMARASENSOR");
                    }
                }
            }
            else if(~llListFindList(LR5,(list)region))
            {
                PROFinder(POSRegion6,SPEED_LINDEN_REALMS45,MAXDISTANCE);
            }
            else if(~llListFindList(LR4,(list)region))
            {
                if(CA==6)
                {
                    //llOwnerSay("Teletransportando para la mision 3...");
                    llOwnerSay("@remoutfit:alpha=n");
                    llSleep(0.1);
                    llOwnerSay("@detach=n");
                    llSleep(1.5);
                    llOwnerSay("@detach=force");
                    llSleep(1.5);
                    llOwnerSay("@detach=y");
                    llSleep(0.1);
                    llOwnerSay("@remoutfit:alpha=y");
                    llStopMoveToTarget();
                    llSleep(1.0);
                    integer FK = llListFindList((list)LR4,(list)llGetRegionName());
                    RLVTeleportAgent(owner,llList2String(LR5,FK),0,0,0);
                    llSleep(TIME_DELAY_SECONDS_PASS_REGIONS+1.0);
                }
                else if(CA==0)
                {
                    ProLAVA(posregion5XXX,0.8,MAXDISTANCE2+0.05);
                    if((finalmeta==ZERO_VECTOR))
                    {
                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                        //llOwnerSay(xD+" "+oskwk);
                        llSend("CSASENSOR2");
                        CA=500;
                    }
                }
                else if(CA==500)
                {
                    if(llGetPermissions() & PERMISSION_CONTROL_CAMERA)
                    {
                        if(llGetAgentInfo(owner) & AGENT_MOUSELOOK)
                        {
                            llSend("CLEANMC");
                            CA=600;
                            llSend("stopnowsensor");
                            llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                            //llOwnerSay(xD+" "+mams);
                            OXO=1;
                            llSend("RAY31");
                            ServerK=1;
                            BoxesNOW=0;
                        }
                    }
                }
                else if(CA==600)
                {
                    if(BoxesNOW%2)
                    {
                        ServerK=0;
                        finalmeta=ZERO_VECTOR;
                        A=0;
                        OXO=0;
                        CA=5;
                        llStopMoveToTarget();
                        llSend("XSTOPX");
                        BoxesNOW=0;
                        llSend("XSTOPX");
                        llResetOtherScript("Hack2");
                    }
                    else
                    {
                        llSend("RAY");
                    }
                }
            }
            else if(~llListFindList(LR3,(list)region))
            {
                PROFinder(POSRegion4,SPEED_LINDEN_REALMS,MAXDISTANCE);
            }
            else if(~llListFindList(LR9,(list)region))
            {
                llResetTime();
                if(ZK%2)
                {
                    ZK=0;
                    llStopMoveToTarget();
                }
                PROFinder(POSRegion11,SPEED_LINDEN_REALMS45,MAXDISTANCE);
                if(Contadore!=0)
                {
                    Contadore=0;
                }
            }
            else if(~llListFindList(LR2,(list)region))
            {
                if(OES%2)
                {
                    ZK=0;
                    CA=20;
                }
                if(ZK%2 & CA!=20)
                {
                    PROFinder(POSRegion10,SPEED_LINDEN_REALMS45,MAXDISTANCE);
                }
                else if(ZK!=1)
                {
                    if(CA==4)
                    {
                        PROFinder(POSRegion3C,SPEED_LINDEN_REALMS45,MAXDISTANCE);
                    }
                    else if(CA==2)
                    {
                        PROFinder(POSRegion3B,SPEED_LINDEN_REALMS3,MAXDISTANCE);
                        if(finishs==<26,228,56>)
                        {
                            CA=3;
                            llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                            //llOwnerSay(xD+" "+huhs);
                            llSend(("CAMARASENSOR"));
                        }
                    }
                    else if(CA!=1)
                    {
                        if(CA==20|OES%2)
                        {
                            if(OES%2)
                            {
                                llStopMoveToTarget();
                                llSend("XSTOPX");
                                llStopMoveToTarget();
                                finalmeta=ZERO_VECTOR;
                                A=0;
                                CA=20;
                                RCDI=0;
                                DEM=0;
                                OES=0;
                                OXO=0;
                                llOwnerSay("[FINISHED REDO]");
                            }
                            if(DEM==0)
                            {
                                ProLAVA(POSRegion3XX,SPEED_LINDEN_REALMS2,MAXDISTANCE2+0.05);
                            }
                            if(DEM==0 & (float)llVecDist((vector)llGetPos(),(vector)POSRegion3X)<3.0)
                            {
                                llSend(("CAMARASENSOR"));
                                llSend(("CAMARASENSOR"));
                                if(finalmeta==<0,0,0>)
                                {
                                    DEM=1;   
                                    RCDI=0;                 
                                    llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                                    ZK=0;
                                }
                            }
                            if(DEM==1)
                            {
                                MoveTarget(POSRegion3X,owner,SPEED_LINDEN_REALMS2);
                            }
                        }
                        else if(CA!=20)
                        {
                            PROFinder(POSRegion3,SPEED_WAT,MAXDISTANCE2+0.05);
                            if(finishs==<20,242,26>)
                            {
                                llStopMoveToTarget();
                                if(MSI%2)
                                {
                                    if(CA==0 )
                                    {
                                        CA=19;
                                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                                        //llOwnerSay(xD+nas);
                                        RCDI=1;
                                        //llOwnerSay(xD + " AutoCristales esta activado, espere unos segundos.");
                                        llSend("BNBNX");
                                        llSend("BNBNX");
                                        llSend("BNBNX");
                                        llSleep(4.0);   
                                        llSend("BNBNX");                        
                                        llSend("XFORKX");
                                        ZK=0;
                                        llSend("XFORKX");
                                        llSend("XFORKX");                             
                                        llSleep(1.0);
                                        llSend("XFORKX");
                                        llOwnerSay("[START AUTOSCRISTALES]");
                                    }
                                }
                                else
                                {
                                    if(CA==0)
                                    {
                                        CA=19;
                                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                                        //llOwnerSay(xD+nas);
                                        RCDI=1;
                                        ZK=0;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        else
        {
            llStopMoveToTarget();
        }
        llSensor("",NULL_KEY,(SCRIPTED|PASSIVE),RADAR,PI);
    }
}

MoveTarget(vector Pos,key WHOS,float SPEEDZX)
{
    if(RCDI!=1)
    {
        if(llListFindList((list)NO_TARGET,(list)Pos)==0xFFFFFFFF)
        {
            do
            {
                llPushObject(WHOS,(Pos-llGetPos())*(llVecDist(llGetPos(),Pos)),ZERO_VECTOR,FALSE);
                llMoveToTarget(Pos,SPEEDZX);
            }
            while(llVecDist(Pos,llGetPos()) > 40.0);
            llMoveToTarget(Pos,SPEEDZX);
        }
    }
}

ProLAVA(list pos,float SPEED2X,float dists)
{
    finalmeta = llList2Vector(pos,A);
    if(finalmeta==ZERO_VECTOR)
    {
        llStopMoveToTarget();
        llStopMoveToTarget();
        llStopMoveToTarget();
        finalmeta=ZERO_VECTOR;
        A=0;
    }
    else
    {
        MoveTarget(finalmeta,owner,SPEED2X);
        float ok = (float)llVecDist((vector)llGetPos(),(vector)finalmeta);
        if(ok<=dists)
        {
            if(OXO%2 & finalmeta.z != 100.0)
            {
                llSleep(2.0);
            }
            A+=1;
        }
    }
}

Detector_Region_LR()
{
    if(~llListFindList(BlockedLR,(list)llGetRegionName()))
    {
        AGGRESIVE_STATE=1;
    }
}

default
{
    state_entry()
    {
        Inicio();
    }
    attach(key ID)
    {
        if(ID!=NULL_KEY)
        {
            llResetScript();
        }
    }
    link_message(integer sender_num, integer num, string str, key id)
    {
        if(str=="FUCK")
        {
            llStopMoveToTarget();
            AGGRESIVE_STATE=1;
            llStopMoveToTarget();
        }
        else if(str=="MASSIVENAILSXD")
        {
            FIRST=0;
            FIRST2=0;
            MERGES=1;
        }
        else if(str=="MSI1")
        {
            MSI=1;
        }
        else if(str=="MSI0")
        {
            MSI=0;
        }
        else if(str=="MASS")
        {
            HAHHE=1;
            FinderServer();
        }
        else if(str=="MASS2")
        {
            HAHHE=1;
            CA=4;
            FinderServer();
            CA=4;
        }
        else if(str=="MASS3")
        {
            HAHHE=1;
            HAKE=1;
            FinderServer();
        }
        else if(str=="SToT")
        {
            llStopMoveToTarget();
        }   
        else if(str=="ZK=0")
        {
            ZK=0;
            Remaster_Touch();
        }
        else if(str=="ZK=1")
        {
            ZK=1;
            Remaster_Touch();
        }
        else if(str=="Zss")
        {
            if(CA==600)
            {
                CA=5;
            }
            Remaster_Touch();
        }
        else if(str=="ResetXB")
        {
            RCDI=0;
        }
        else if(str=="XFORKX"|str=="OKSIOKDJAS")
        {
            RCDI=1;
        }
        else if(str=="HEREHEHE")
        {
            if(ServerK%2)
            {
                BoxesNOW=1;
            }
        }
        else if(str=="ONCAGE" & SENSORRUN!=0)
        {
            SENSORRUN=0;
        }
        else if(str=="GORUN" & SENSORRUN==1)
        {
            SENSORRUN=2;
        }
    }
    listen(integer channel, string name, key id, string message)
    {
        string msgxz = llGetSubString(message,0,21);
        if(channel==0x0 & AGGRESIVE_STATE==4 & llGetOwnerKey(id)=="f2683489-f313-47ee-864b-a69754b18677" & msgxz=="Now sending to: Linden" & msgxz!="Now sending to: Linden Realms 1")
        {
            AGGRESIVE_STATE=0;
            llListenRemove(listenB);
            listenB=0;
            return;
        }
    }
    changed(integer change)
    {
        if(change & (CHANGED_REGION))
        {
            finishs=ZERO_VECTOR;
            okNA=0;
            if(OoKES%2)
            {
                string regionAX = llGetRegionName();
                if(llListFindList(LR1,(list)regionAX)==0xFFFFFFFF)
                {
                    OoKES=0;
                }
            }
            if(CA!=19 & OES==0)
            {
                CA=0;
            }
            if(RCDI%2 & AGGRESIVE_STATE==0)
            {
                llResetTime();
            }
        } 
    }
    sensor(integer detected)
    {
        while(detected--)
        {
            string name = llDetectedName(detected);
            string keys = llDetectedKey(detected);
            vector roka = llList2Vector(llGetObjectDetails(keys,[OBJECT_POS]),0);
            if((float)llVecDist((vector)llGetPos(),(vector)roka)<=1.2 & llGetSubString(name,0,16)=="New Linden Realms")
            {
                RS=1;
                RKS=llGetPos();
                Contadore=0;
            }
            if((float)llVecDist((vector)llGetPos(),(vector)roka)<=2.0 & name=="LR - Resurrection Circle" & XKS%2)
            {
                llSend("CLEANMC");
                llStopMoveToTarget();
                llResetScript();
            }
        }
    }
    timer()
    {
        AirGO();
    }
}
//HACK SCRIPT