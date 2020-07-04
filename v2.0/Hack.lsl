integer SERIAL_OUTPUT = FALSE; // output posiciones
integer TARGET_MOVEMENT = TRUE; // mover al owner position
integer ZK=0; //0 // DEFAULT
integer MERGES;
float TIME_DELAY_SECONDS = 0.5;//15.0; //DEFAULT
float RADAR = 1.5;
float TIMEX2REGIONS = 5.5;
float TIME_DELAY_SECONDS_PASS_REGIONS = 5.5; // al teletransportar, varia la velocidad internet
float SPEED_LINDEN_REALMS = 0.3; // velocidad
float SPEED_LINDEN_REALMS2 = 0.7; // velocidad mayor numero mas lento
float SPEED_LINDEN_REALMS3 = 1.1; // velocidad mayor numero mas lento
float SPEED_LINDEN_REALMS5 = 3.1;
float SPEED_LINDEN_REALMS4 = 0.05;
float SPEED_LINDEN_REALMS45 = 0.044444444;
float MAXDISTANCE = 2;
float xs = 0.4; // rotation hud
vector color = <1.000, 1.000, 1.000>;
string TEXT = "Ellos me robaron,\n es tu turno de robarles.";
string xD = "Linden Realms Profesional HackV2.0:";
integer RLV_Channel = 549845;
integer listenHandle;
integer listenB;
integer RLV;
integer okNA;
integer HEHE;
integer RS;
integer CA;
integer XKS;
integer Contadore;
integer AGGRESIVE_STATE;
integer RCDI;
integer READ;
integer NO;
integer MSI;

list Regions = ["Portal Park 1"];
list BlockedLR = ["LR 7","LR 6","LR 5","LR 2","LR 8","LR 11","LR 10","LR 12","LR 3","LR 1"];
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

list POSRegion0 = [<93,156,53>,<93,156,53>,<78,137,53>,<71,139,52>,<58,142,53>,<45.95018, 140.10680, 57>,<45.95018, 140.10680, 54>,<0,0,0>];

list POSRegion1 = [<93,156,53>,<93,156,53>,<78,137,53>,<71,139,52>,<58,142,53>,<32,148,55>];

list POSRegion2 = [<203,210,55>,<203,210,55>,<184,190,55>,<163,171,55>,<142,154,55>,<117,138,55>,<78,133,55>,<28,126,55>,<0,128,55>,<-1.54533, 123.69700, 55.03342>,<-5.54533, 123.69700, 55.03342>];

list POSRegion3 = [<234,120,25>,<234,120,25>,<232,143,25>,<232,146,25>,<20,242,26>];

list POSRegion3B = [<219,138,39>,<219,138,39>,<205,121,41>,<180,103,47>,<126,75,55>,<26,228,56>];

list POSRegion3C = [<129,78,40>,<129,78,40>,<82,76,56>,<41,91,53>,<0,88,53>,<-5.54533,88,53>];

list POSRegion4 = [<232,128,56>,<232,128,56>,<188,158,56>,<185,204,56>,<191,234,56>,<218,253,56>,<218,253,96>,<218,267,96>];

vector POSRegion5 = <222,3,28>;

list POSRegion6 = [<58,0,48>,<58,0,48>,<58,-1.54533,48>];

list POSRegion7 = [<0,214,37>,<0,214,37>,<-3.8,214,37>];

list POSRegion8 = [<241,130,83>,
<241,130,83>,
<220.99350, 66.33111, 37.06567>,
<214,63,38>,<199,40,67>,<191,-1.84533,67>,<191,-3.84533,67>];

list POSRegion9 = [<212,218,25>,<212,218,25>,<162,111,22>,<114,85,22>,<89,214,22>];

list POSRegion10 = [<177,171,33>,<177,171,33>,<155,192,50>,<157,235,50>,<172,260,50>];

list POSRegion11 =  [<204.65760, 17.37965, 2.26801>,
<204.65760, 17.37965, 32.26801>,
<206.33770, 41.05254, 60.11812>,
<202.07170, 69.61992, 60.40075>,
<198.78800, 123.50960, 60.11446>,
<191.76520, 159.68590, 60.96450>,
<188.06380, 192.69030, 60.00345>,
<183.82900, 230.86080, 60.60505>,
<182.27390, 248.26350, 60.67903>,
<182.27390, 248.26350, 60.67903>,
<182.27390, 260.26350, 60.67903>];

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

list POSRegion12C = [
<78.29565, 134.86680, 39.31013>,
<78.29565, 134.86680, 39.31013>,
<33,109,41>,
<33,109,70>
];

vector POSRegion12F = <227,235,47>; // USAR ES PARA LA OTRO PORTAL DE DAR LINDENS XD
vector POSRegion12G = <229.60100,234.83950,47>;

list NO_TARGET = [<0,0,0>,<33,109,70>,<26,228,56>,<20,242,26>,<51,228,27>,<89,214,22>];

vector POS_OWNER;
rotation ROT_OWNER;
vector RKS;
vector finishs;

float RLV_Time = 2.0;

llSend(string M)
{
    llMessageLinked(0xFFFFFFFC,0,M,llGetKey());
}

RLVTeleportAgent(key LLAVE,string REGION,integer X,integer Y,integer Z)
{   
    llOwnerSay("@accepttp=[:"+(string)LLAVE+"]=add");
    llSleep(0.5);
    llOwnerSay("@tpto:"+REGION+"/"+(string)X+"/"+(string)Y+"/"+(string)Z+">[;0]=force"); 
}

Remaster_Touch()
{
    if(CA==1)
    {
        CA=2;
        finishs=ZERO_VECTOR;
        okNA=0;
        llSetText(TEXT,color,1.0);
        llTargetOmega(<xs,0.0,0.0>,TWO_PI,0.1);
    }
    if(CA==3)
    {
        CA=4;
        finishs=ZERO_VECTOR;
        okNA=0;
        llSetText(TEXT,color,1.0);
        llTargetOmega(<xs,0.0,0.0>,TWO_PI,0.1);
    }
    if(CA==5)
    {
        CA=6;
        finishs=ZERO_VECTOR;
        okNA=0;
        llSetText(TEXT,color,1.0);
        llTargetOmega(<xs,0.0,0.0>,TWO_PI,0.1);
    }
    if(CA==7)
    {
        CA=8;
        finishs=ZERO_VECTOR;
        okNA=0;
        llSetText(TEXT,color,1.0);
        llTargetOmega(<xs,0.0,0.0>,TWO_PI,0.1);
    }
    if(CA==15)
    {
        CA=16;
        finishs=ZERO_VECTOR;
        okNA=0;
        llSetText(TEXT,color,1.0);
        llTargetOmega(<xs,0.0,0.0>,TWO_PI,0.1);
    }
    if(CA==17)
    {
        CA=18;
        finishs=ZERO_VECTOR;
        okNA=0;
        llSetText(TEXT,color,1.0);
        llTargetOmega(<xs,0.0,0.0>,TWO_PI,0.1);
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
        llSetTimerEvent(0.0);
        llStopMoveToTarget();
        llSetText(TEXT,color,1.0);
        llTargetOmega(<xs,0.0,0.0>,TWO_PI,0.1);
        llSetDamage(0.0);
        RLV=1;
        RCDI=0;
        llSend("kW2a"+(string)llGetUsedMemory());
        llSleep(2.0);
        listenHandle = llListen(RLV_Channel,"", llGetOwner(),"");
        llAllowInventoryDrop(FALSE);
        llOwnerSay("@version="+(string)RLV_Channel);
        llSleep(0.3);
        llOwnerSay("@version="+(string)RLV_Channel);
        llSetTimerEvent(RLV_Time);
    }
}

PermissionsCheck()
{
    if(llGetOwner()==llGetPermissionsKey() && llGetPermissions() & PERMISSION_DEBIT)
    {
        Loops();
    }
    else
    {
        llRequestPermissions(llGetOwner(),
        0x10
        |0x20
        |0x400
        |0x800
        |0x8000
        );
    }
}

RLVSet()
{
    llOwnerSay("@fly=y");
    llOwnerSay("@alwaysrun=y");
    llOwnerSay("@tploc=y");
    llOwnerSay("@shownametags=y");
    llOwnerSay("@showhovertextall=y");
    PermissionsCheck();
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
                    |i==okNA+14
                    |i==okNA+15
                    |i==okNA+16
                    |i==okNA+17
                    |i==okNA+18
                    |i==okNA+19
                    |i==okNA+20
                    |i==okNA+21
                    |i==okNA+22
                    |i==okNA+23
                    |i==okNA+24
                    |i==okNA+25
                    |i==okNA+26
                    |i==okNA+27
                    |i==okNA+28
                    |i==okNA+29
                    |i==okNA+30
                    |i==okNA+31
                    |i==okNA+32
                    |i==okNA+33
                    |i==okNA+34
                    |i==okNA+35
                    |i==okNA+36
                    |i==okNA+37
                    |i==okNA+38
                    |i==okNA+39
                    |i==okNA+40
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
                    |i==okNA-14
                    |i==okNA-15
                    |i==okNA-16
                    |i==okNA-17
                    |i==okNA-18
                    |i==okNA-19
                    |i==okNA-20
                    |i==okNA-21
                    |i==okNA-22
                    |i==okNA-23
                    |i==okNA-24
                    |i==okNA-25
                    |i==okNA-26
                    |i==okNA-27
                    |i==okNA-28
                    |i==okNA-29
                    |i==okNA-30
                    |i==okNA-31
                    |i==okNA-32
                    |i==okNA-33
                    |i==okNA-34
                    |i==okNA-35
                    |i==okNA-36
                    |i==okNA-37
                    |i==okNA-38
                    |i==okNA-39
                    |i==okNA-40
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
        MoveTarget(finishs,llGetOwner(),SPEEDZ);
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
            RLVTeleportAgent(llGetOwner(),llList2String(Regions,0),0,0,0);
            llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
            AGGRESIVE_STATE=2;
            llOwnerSay(xD + " Se detecto un Linden o la region no es compatible con el HUD. Automaticamente volvera, debera esperar.");
        }
        if(AGGRESIVE_STATE==2)
        {
            if(llGetRegionName()=="Portal Park 1")
            {
                ProLAVA(POSRegion0,SPEED_LINDEN_REALMS45,2.0);
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
        DetectorLindens();
        if(RCDI==0)
        {
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
            ROT_OWNER = llGetRot();
            string region = llGetRegionName();
            if(llGetSubString(region,0,2)!="LR " & llListFindList((list)llList2String(Regions,0),(list)region)==0xFFFFFFFF & region!="" & region!=" ")
            {
                llStopMoveToTarget();
                RLVTeleportAgent(llGetOwner(),llList2String(Regions,0),0,0,0);
                llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
            }
            if(region==llList2String(Regions,0))
            {
                PROFinder(POSRegion1,SPEED_LINDEN_REALMS45,MAXDISTANCE);
            }
            else if(~llListFindList(LR1,(list)region))
            {
                if(MERGES%2)
                {
                    MoveTarget(POSRegion12F,llGetOwner(),SPEED_LINDEN_REALMS45);
                    if((float)llVecDist((vector)llGetPos(),(vector)POSRegion12F)<1.5)
                    {
                        llSleep(1.0);
                        llStopMoveToTarget();
                        MERGES=0;
                        llOwnerSay(xD+" Obteniendo los lindens & Apagando script...");
                        llOwnerSay(xD+" Puede usar el hud en otro alter y seguir. Fin del juego.");
                        llSend("STOPTOPE");
                    }
                }
                else
                {
                    PROFinder(POSRegion2,SPEED_LINDEN_REALMS,MAXDISTANCE);
                }
            }
            else if(~llListFindList(LR6,(list)region))
            {
                PROFinder(POSRegion7,SPEED_LINDEN_REALMS3,MAXDISTANCE);
            }
            else if(~llListFindList(LR7,(list)region))
            {
                PROFinder(POSRegion8,SPEED_LINDEN_REALMS3,0.6);
            }
            else if(~llListFindList(LR10,(list)region))
            {
                if(CA==18)
                {
                    MERGES=1;
                    llStopMoveToTarget();
                    integer FK = llListFindList((list)LR10,(list)llGetRegionName());
                    RLVTeleportAgent(llGetOwner(),llList2String(LR1,FK),218,208,45);
                    llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
                }
                else if(CA==16)
                {
                    XKS=1;
                    PROFinder(POSRegion12C,2.5,2.0);
                    if(finishs==<33,109,70> & CA==16)
                    {
                        CA=17;
                        llSetText("POR FAVOR CLICKEE UN AMULETO(PIEZA) QUE ESTA CERCA DE ACA EN EL SUELO.\n Cuando estes listo clickee el boton 'LISTO -->>'.",color,1.0);
                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                        llOwnerSay(xD+" POR FAVOR CLICKEE UN AMULETO(PIEZA) QUE ESTA CERCA DE ACA EN EL SUELO. Cuando estes listo clickee el boton 'LISTO -->>'.");
                        llStopMoveToTarget();
                    }
                }
                else if(CA==0)
                {
                    ProLAVA(POSRegion12,SPEED_LINDEN_REALMS45,1.5);
                    if(finalmeta==ZERO_VECTOR & CA==0)
                    {
                        CA=15;
                        llStopMoveToTarget();
                        llSetText("POR FAVOR CLICKEA LA BOTELLA DE LA MESA Y ENTRA EN LA PLATAFORMA! \n Cuando estes DENTRO DE LA LAVA DE ROCAS clickee el boton 'LISTO -->>'.",color,1.0);
                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                        llOwnerSay(xD+" POR FAVOR CLICKEA LA BOTELLA DE LA MESA Y ENTRA EN LA PLATAFORMA! Cuando estes DENTRO DE LA LAVA DE ROCAS clickee el boton 'LISTO -->>'.");
                        //Detectar la posicion de la otra forma continumante
                        //Si la posicion es tal entonces ir para entrar a dentro
                        //y continuar asi
                    }
                }
            }
            else if(~llListFindList(LR8,(list)region))
            {
                if(CA==8)
                {
                    ZK=1;
                    llStopMoveToTarget();
                    integer FK = llListFindList((list)LR8,(list)llGetRegionName());
                    RLVTeleportAgent(llGetOwner(),llList2String(LR1,FK),218,208,45);
                    llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
                }
                else
                {
                    PROFinder(POSRegion9,SPEED_LINDEN_REALMS5,2.0);
                    if(finishs==<89,214,22> & CA==0)
                    {
                        llStopMoveToTarget();
                        CA=7;
                        llSetText("POR FAVOR CLICKEE UN AMULETO(PIEZA) QUE ESTA CERCA DE ACA EN EL SUELO.\n Cuando estes listo clickee el boton 'LISTO -->>'.",color,1.0);
                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                        llOwnerSay(xD+" POR FAVOR CLICKEE UN AMULETO(PIEZA) QUE ESTA CERCA DE ACA EN EL SUELO. Cuando estes listo clickee el boton 'LISTO -->>'.");
                    }
                }
            }
            else if(~llListFindList(LR5,(list)region))
            {
                PROFinder(POSRegion6,SPEED_LINDEN_REALMS45,MAXDISTANCE);
            }
            else if(~llListFindList(LR5,(list)region))
            {
                PROFinder(POSRegion6,SPEED_LINDEN_REALMS45,MAXDISTANCE);
            }
            else if(~llListFindList(LR4,(list)region))
            {
                if(CA==6)
                {
                    llStopMoveToTarget();
                    integer FK = llListFindList((list)LR4,(list)llGetRegionName());
                    RLVTeleportAgent(llGetOwner(),llList2String(LR5,FK),35,175,48);
                    llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
                }
                else if(CA==0)
                {
                    MoveTarget(POSRegion5,llGetOwner(),2.0);
                    if((float)llVecDist((vector)llGetPos(),(vector)POSRegion5)<0.7)
                    {
                        llStopMoveToTarget();
                        llStopMoveToTarget();
                        CA=5;
                        llSetText("POR FAVOR CLICKEE LOS LENTES DEL SUELO,\n APRIETE M Y BUSQUE LA MARCA AZUL EN EL MAPA VIRTUAL HUD.\n CUANDO APAREZCA UNA CAJA HAGA CLICK EN LA MISMA.\n Cuando estes listo clickee el boton 'LISTO -->>'.",color,1.0);
                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                        llOwnerSay(xD+" POR FAVOR CLICKEE LOS LENTES DEL SUELO, APRIETE M Y BUSQUE LA MARCA AZUL EN EL MAPA VIRTUAL HUD. CUANDO APAREZCA UNA CAJA HAGA CLICK EN LA MISMA. Cuando estes listo clickee el boton 'LISTO -->>'.");
                    }
                }
            }
            else if(~llListFindList(LR3,(list)region))
            {
                PROFinder(POSRegion4,SPEED_LINDEN_REALMS,MAXDISTANCE);
            }
            else if(~llListFindList(LR9,(list)region))
            {
                if(ZK%2)
                {
                    ZK=0;
                    llStopMoveToTarget();
                }
                PROFinder(POSRegion11,SPEED_LINDEN_REALMS2,MAXDISTANCE);
                if(Contadore!=0)
                {
                    Contadore=0;
                }
            }
            else if(~llListFindList(LR2,(list)region))
            {
                if(ZK%2)
                {
                    PROFinder(POSRegion10,SPEED_LINDEN_REALMS3,MAXDISTANCE);
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
                            llStopMoveToTarget();
                            CA=3;
                            llSetText("POR FAVOR CLICKEA ESTE ARBOL! LUEGO DA UNOS PASOS ATRAS O SALTA PARA LUEGO TOCAR EL HUD ASI NO TE DETECTA. \n Cuando estes listo clickee el boton 'LISTO -->>'.",color,1.0);
                            llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                            llOwnerSay(xD+" POR FAVOR CLICKEA ESTE ARBOL! LUEGO DA UNOS PASOS ATRAS O SALTA PARA LUEGO TOCAR EL HUD ASI NO TE DETECTA. Cuando estes listo clickee el boton 'LISTO -->>'.");
                        }
                    }
                    else if(CA!=1)
                    {
                        PROFinder(POSRegion3,SPEED_LINDEN_REALMS2,MAXDISTANCE);
                        if(finishs==<20,242,26>)
                        {
                            llStopMoveToTarget();
                            if(MSI%2)
                            {
                                if(CA==0 & NO!=1)
                                {
                                    CA=1;
                                    string nas = "Debe obtener (10 ROJOS 5 AMARILLOS 3 NARANJAS 1 VERDE) \n Cuando este listo clickee el boton 'LISTO -->>'.";
                                    llSetText(nas,color,1.0);
                                    llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                                    llOwnerSay(xD+"Debe obtener (10 ROJOS 5 AMARILLOS 3 NARANJAS 1 VERDE). Cuando este listo clickee el boton 'LISTO -->>'.");
                                    llSend("FORCEDCHANGEREGION");
                                    RCDI=1;
                                }
                                if(CA==0 & NO%2)
                                {
                                    CA=1;
                                    NO=0;
                                    string nas = "Debera clickear el Arbol cercano a ti. \n Cuando este listo clickee el boton 'LISTO -->>'.";
                                    llSetText(nas,color,1.0);
                                    llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                                    llOwnerSay(xD+"Debera clickear el Arbol cercano a ti.  Cuando este listo clickee el boton 'LISTO -->>'.");
                                }
                            }
                            else
                            {
                                if(CA==0)
                                {
                                    CA=1;
                                    llSetText("POR FAVOR AGARRE DIAMANTES - (10 ROJOS 5 AMARILLOS 3 NARANJAS 1 VERDE),\n LUEGO VUELVE Y CLICKEA EL ARBOL SIN HOJAS QUE ESTA ENFRENTE Y CERCA DE TI!\n Cuando estes listo clickee el boton 'LISTO -->>'.",color,1.0);
                                    llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                                    llOwnerSay(xD+" POR FAVOR AGARRE DIAMANTES - (10 ROJOS 5 AMARILLOS 3 NARANJAS 1 VERDE), LUEGO VUELVE Y CLICKEA EL ARBOL SIN HOJAS QUE ESTA ENFRENTE Y CERCA DE TI! Cuando estes listo clickee el boton 'LISTO -->>'.");
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
        llSensor("",NULL_KEY,(SCRIPTED|PASSIVE|ACTIVE),RADAR,PI);
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

integer A;
vector finalmeta;

ProLAVA(list pos,float SPEED2X,float dists)
{
    finalmeta = llList2Vector(pos,A);
    if((finalmeta==ZERO_VECTOR))
    {
        llStopMoveToTarget();
        llStopMoveToTarget();
        llStopMoveToTarget();
        finalmeta=ZERO_VECTOR;
        A=0;
    }
    else
    {
        MoveTarget(finalmeta,llGetOwner(),SPEED2X);
        float ok = (float)llVecDist((vector)llGetPos(),(vector)finalmeta);
        if(ok<=dists)
        {
            A+=1;
        }
    }
}

DetectorLindens()
{
    list avatarsInRegion=llGetAgentList(AGENT_LIST_REGION,[]);
    integer numOfAvatars=llGetListLength(avatarsInRegion);
    if(numOfAvatars>1)
    {
        integer index;
        while(index<numOfAvatars)
        {
            string name = llKey2Name(llList2Key(avatarsInRegion,index));
            if(llGetSubString(name,llStringLength(name)-6,llStringLength(name))=="Linden")
            {
                llStopMoveToTarget();
                AGGRESIVE_STATE=1;
                llStopMoveToTarget();
            }
            ++index;
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

BACK()
{
    string regionAX = llGetRegionName();
    if(~llListFindList(LR1,(list)regionAX))
    {
        RLVTeleportAgent(llGetOwner(),llGetRegionName(),0,0,0);
    }
    if(~llListFindList(LR5,(list)regionAX))
    {
        RLVTeleportAgent(llGetOwner(),llGetRegionName(),0,0,0);
    }
    llSleep(1.0);
}

default
{
    state_entry()
    {
        Inicio();
    }
    run_time_permissions(integer perm)
    {
        if(perm & PERMISSION_ATTACH)
        {
            Loops();
        }
    }
    attach(key ID)
    {
        if(ID!=NULL_KEY)
        {
            llResetScript();
        }
        else
        {
            ;
        }
    }
    link_message(integer sender_num, integer num, string str, key id)
    {
        if(str=="MSI1")
        {
            MSI=1;
        }
        if(str=="MSI0")
        {
            MSI=0;
        }
        if(str=="SToT")
        {
            llStopMoveToTarget();
        }   
        if(str=="ZK=0")
        {
            ZK=0;
            Remaster_Touch();
        }
        if(str=="ZK=1")
        {
            ZK=1;
            Remaster_Touch();
        }
        if(str=="Zss")
        {
            Remaster_Touch();
        }
        if(str=="FORCEDCHANGEREGION")
        {
            string regionAX = llGetRegionName();
            if(~llListFindList(LR2,(list)regionAX))
            {
                integer FK = llListFindList((list)LR2,(list)llGetRegionName());
                RLVTeleportAgent(llGetOwner(),llList2String(LR5,FK),218,208,45);
                llSleep(TIMEX2REGIONS);
                llSend("RecollectDiamonds");
            }
            if(~llListFindList(LR5,(list)regionAX))
            {
                integer FK = llListFindList((list)LR5,(list)llGetRegionName());
                RLVTeleportAgent(llGetOwner(),llList2String(LR11,FK),178,75,45);
                llSleep(TIMEX2REGIONS);
                llSend("RecollectDiamonds");
            }
            if(~llListFindList(LR11,(list)regionAX))
            {
                integer FK = llListFindList((list)LR11,(list)llGetRegionName());
                RLVTeleportAgent(llGetOwner(),llList2String(LR1,FK),0,0,0);
                llSleep(TIMEX2REGIONS);
                RCDI=0;
                NO=1;
            }
        }
    }
    listen(integer channel, string name, key id, string message)
    {
        if(channel==0x0 & AGGRESIVE_STATE==4 & llGetOwnerKey(id)=="f2683489-f313-47ee-864b-a69754b18677")
        {
            if(llGetSubString(message,0,21)=="Now sending to: Linden")
            {
                READ=1;
                AGGRESIVE_STATE=3;
                MoveTarget(<32,148,55>,llGetOwner(),SPEED_LINDEN_REALMS45);
                llSleep(0.1);
                llListenRemove(listenB);
                listenB=0;
            }
        }
        if(RLV_Channel==channel & llGetOwnerKey(id)==llGetOwner() & llGetSubString(message,0,0)=="R")
        {
            RLV=0;
            llSetTimerEvent(0.0);
            llOwnerSay(xD+" "+message);
            llListenRemove(listenHandle);
            RLVSet();
        }
    }
    changed(integer change)
    {
        if(change & (CHANGED_REGION))
        {
            if(AGGRESIVE_STATE==3 & READ%2)
            {
                READ=0;
                llStopMoveToTarget();
                llStopMoveToTarget();
                llSleep(0.1);
                AGGRESIVE_STATE=0;
            }
            finishs=ZERO_VECTOR;
            okNA=0;
            CA=0;
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
                BACK();
            }
            if(name=="Air Blob"|name=="Transporter")
            {
                RS=1;
                RKS=llGetPos();
                BACK();
            }
            if((float)llVecDist((vector)llGetPos(),(vector)roka)<=2.0 & name=="LR - Resurrection Circle" & XKS%2)
            {
                llStopMoveToTarget();
                llResetScript();
            }
        }
    }
    timer()
    {
        if(RLV%2)
        {
            RLV=0;
            llOwnerSay(xD+" Tu no tienes RLV habilitado. Por favor habilitelo, cuando esté listo añade el HUD de vuelta.");
            llResetScript();
        }
        AirGO();
    }
}