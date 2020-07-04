float TIME_DELAY_SECONDS = 0.5;
float RADAR = 1.5;
float TIMEX2REGIONS = 5.5;
//float REGIONSTUCKDELAY = 4.0;
//float REGIONSTUCKDELAY2 = 4.0;
float TIME_DELAY_SECONDS_PASS_REGIONS = 6.0;
float TIME_DELAY_SECONDS_PASS_REGIONS2 = 4.5; 
float SPEED_LINDEN_REALMS = 0.3;
float SPEED_LINDEN_REALMS2 = 0.7;
float SPEED_LINDEN_REALMS3 = 1.1;
float SPEED_LINDEN_REALMS5 = 3.1;
float SPEED_LINDEN_REALMS5X = 3.0;
float SPEED_LINDEN_REALMS4 = 0.05;
float SPEED_LINDEN_REALMS45 = 0.05;
float MAXDISTANCE = 2;
float MAXDISTANCE2 = 0.8;
float xs = 0.4;
//float RLV_Time = 2.0;

//vector positionSAV;
vector color = <255, 255, 0>;
vector POS_OWNER;
vector RKS;
vector finishs;
vector finalmeta;

string oeo = "Por favor clickee el amuleto en el suelo que esta cerca ti.\n Cuando estes listo clickee el boton 'LISTO -->>'.";
string oskwk = "Por favor clickee los lentes del suelo y apriete M.";
string mams = "Primero Volará, presione la tecla W para parar. \n Recordar que debe ir al PUNTO ROJO en el RADAR de los LENTES. \n Luego de estar cerca del PUNTO ROJO vera una CAJA, clickee en la misma. \n Cuando estes listo clickee el boton 'LISTO -->>'.";
string huhs = "Debera clickear este arbol tambien! \n Cuando estes listo clickee el boton 'LISTO -->>'.";
string nasX = "Debera clickear el Arbol cercano a ti. \n Cuando este listo clickee el boton 'LISTO -->>'.";
string nas = "Debe obtener (10 ROJOS 5 AMARILLOS 3 NARANJAS 1 VERDE) \n Puede utilizar 'CTRL + SHIFT + R' \n Cuando este listo clickee el boton 'LISTO -->>'.";
string TEXT = "Ellos me robaron,\n es tu turno de robarles.";
string xD = "Linden Realms Profesional HackV2.3:";

integer HAHHE;
integer OoKES;
integer HAKE;
integer OES;
integer A;
integer ZK;
integer MERGES;
//integer RLV_Channel = 549845;
integer listenB;
//integer RLV;
integer okNA;
integer HEHE;
integer RS;
integer CA;
integer XKS;
integer Contadore;
integer AGGRESIVE_STATE;
integer RCDI;
integer NO;
integer MSI;
integer FIRST;
integer FIRST2;
integer DEM;
///integer RegionChecks;

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

list POSRegion2FUCK = [<203,220,70>,
<203,220,70>,
<184,220,70>,
<163,220,70>,
<142,220,70>,
<117,220,70>,
<78,220,70>,
<28,220,70>,
<0,220,70>,
<-1.54533, 220, 70>,
<-5.54533, 220, 70>];

list POSRegion3 = [<237,140,25>,
<237,140,25>,
<232,143,35>,
<233.01170, 143.77090, 27.93986>,
<233.01170, 143.77090, 30.93986>,
<20,242,26>];

vector POSRegion3X = <215.91150, 139.00000, 29.8999>;

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

vector POSRegion5 = <222,3,25.4>;
vector POSRegion5X = <220,4,25>;

list POSRegion6 = [<58,0,48>,
<58,0,48>,
<58,-1.54533,48>];

list POSRegion7 = [<0,214,37>,
<0,214,37>,
<-3.8,214,37>];

list POSRegion8 = [<241,130,83>,
<241,130,83>,
<220.99350, 66.33111, 37.06567>,
<214,63,38>,
<199,40,67>,
<191,-1.84533,67>,
<191,-3.84533,67>];

list POSRegion9 = [<212,218,25>,
<199,190,35>,
<186,153,35>,
<162,111,35>,
<133,86,32>,
<119.45190, 76.28258, 22>,
<0,0,0>];

list POSRegion10 = [<252,250,70>,
<252,250,70>,
<252,260,70>];

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

list POSRegion12v2 = 
[
<150.00000, 14.00000, 44.00000>,
<126.66140, 18.53677, 60.75748>,
<127.02530, 18.41553, 33.54376>,
<126.66140, 18.53677, 33.25748>,
<127.02530, 18.41553, 60.54376>,
<127.02530, 18.41553, 33.54376>,
<124,18,33.54376>,
<111,80,150>,
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
<78.29565, 134.86680, 39.31013>,
<78.29565, 134.86680, 39.31013>,
<30,107,41>,
<33,109,70>
];

//vector POSRegion12F = <227,235,47>; // USAR ES PARA LA OTRO PORTAL DE DAR LINDENS XD
//vector POSRegion12G = <229.60100,234.83950,47>;

list NO_TARGET = [<0,0,0>,<1,1,1>,<33,109,70>,<26,228,56>,<20,242,26>,<51,228,27>,<89,214,22>];

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
    llSetText(TEXT,color,1.0);
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
            CA=0;
            POS_OWNER=ZERO_VECTOR;
            XKS=0;
            finishs=ZERO_VECTOR;
            okNA=0;
            FIRST=0;
            FIRST2=0;
            MERGES=0;
            HEHE=0;
            AGGRESIVE_STATE=0;
            //RegionChecks=0;
            finalmeta=ZERO_VECTOR;
            //positionSAV=ZERO_VECTOR;
            RCDI=0;
            if(HAKE%2)
            {
                HAKE=0;
                RLVTeleportAgent(llGetOwner(),llList2String(LR5,result),0,0,0);
            }
            else
            {
                RLVTeleportAgent(llGetOwner(),llList2String(LR1,result),0,0,0);
            }
            llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
            OoKES=1;
            OoKES=1;
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
        llSetTimerEvent(0.0);
        llStopMoveToTarget();
        llSetText(TEXT,color,1.0);
        llTargetOmega(<xs,0.0,0.0>,TWO_PI,0.1);
        llSetDamage(0.0);
        llRequestPermissions(llGetOwner(),0x800);
        OoKES=0;
        //RLV=1;
        RCDI=0;
        llSend("kW2a"+(string)llGetUsedMemory());
        PermissionsCheck();
        //llSleep(2.0);
        //listenHandle = llListen(RLV_Channel,"", llGetOwner(),"");
        //llAllowInventoryDrop(FALSE);
        //llOwnerSay("@version="+(string)RLV_Channel);
        //llSleep(0.3);
        //llOwnerSay("@version="+(string)RLV_Channel);
        //llSetTimerEvent(RLV_Time);
    }
}

LAVARocaSit()
{
    llOwnerSay("@sit:"+"8b372101-d957-d716-f6d6-e8b2de504e5c"+"=force");
    llOwnerSay("@sit:"+"e1a0300f-6938-a189-af8e-0065b0402110"+"=force");
    llOwnerSay("@sit:"+"f68a9f42-a9dc-8ea8-0753-a6dcd0ec6280"+"=force");
    llOwnerSay("@sit:"+"f8cdb211-99a9-4bd2-d6b6-976be992ba60"+"=force");
    llOwnerSay("@sit:"+"b39ae46a-a93a-afb3-7adb-b72007c2f802"+"=force");
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
        MoveTarget(finishs,llGetOwner(),SPEEDZ);
    }
}

/*
DetectorStuck()
{
    if(RegionChecks%2 & RCDI%2 & llGetTime()>=REGIONSTUCKDELAY)
    {
        RegionChecks=0;
        positionSAV=llGetPos();
        llResetTime();
    }
    if(RegionChecks==0 & positionSAV!=ZERO_VECTOR & RCDI%2 & llGetTime()>=REGIONSTUCKDELAY2)
    {
        positionSAV=ZERO_VECTOR;
        if((float)llVecDist((vector)positionSAV,(vector)llGetPos())<=0.8)
        {
            llOwnerSay("@sit=force");
            llSleep(0.2);
            llOwnerSay("@unsit=force");
        }
    }
}
*/

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
            llOwnerSay(xD + " Se detecto un Linden/Molen Avatar o la region no es compatible con el HUD. Automaticamente volvera, debera esperar.");
            RLVTeleportAgent(llGetOwner(),llList2String(Regions,0),0,0,0);
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
        //DetectorStuck();
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
                RLVTeleportAgent(llGetOwner(),llList2String(Regions,0),0,0,0);
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
                        llSend("FXDUK");
                        MERGES=0;
                        A=0;
                        finalmeta=ZERO_VECTOR;
                        RCDI=1;
                        //ProLAVA(POSRegion12F,SPEED_LINDEN_REALMS45,1.5);
                        //if(finalmeta==ZERO_VECTOR)
                        //{
                        //    llSend("YALPTM");
                        //    finalmeta=ZERO_VECTOR;
                        //    A=0;
                        //    llSleep(0.5);
                        //    llStopMoveToTarget();
                        //    RCDI=1;
                        //    MERGES=0;
                        //    llOwnerSay(xD+" Obteniendo los Lindens & Apagando script...");
                        //    llOwnerSay(xD+" Puede usar el hud en otro alter y seguir. Fin del juego.");
                        //    llSend("STOPTOPE");
                        //}
                    }
                    else
                    {
                        if(OES==0)
                        {
                            if(ZK%2)
                            {
                                if(OoKES%2)
                                {
                                    PROFinder(POSRegion2FUCK,SPEED_LINDEN_REALMS3,MAXDISTANCE);
                                }
                                else
                                {
                                    PROFinder(POSRegion2FUCK,SPEED_LINDEN_REALMS,MAXDISTANCE);
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
            }
            else if(~llListFindList(LR7,(list)region))
            {
                PROFinder(POSRegion8,SPEED_LINDEN_REALMS3,0.6);
            }
            else if(~llListFindList(LR10,(list)region))
            {
                if(llGetTime()>20.0 & finishs!=<33,109,70> & CA!=17 & CA!=18)
                {
                    CA=0;
                    llResetTime();
                }
                XKS=1;
                if(CA==18)
                {
                    MERGES=1;
                    llStopMoveToTarget();
                    integer FK = llListFindList((list)LR10,(list)llGetRegionName());
                    RLVTeleportAgent(llGetOwner(),llList2String(LR1,FK),0,0,0);
                    llSleep(TIME_DELAY_SECONDS_PASS_REGIONS2);
                    MERGES=1;
                    FIRST=0;
                    FIRST2=0;
                }
                else if(CA==16)
                {
                    XKS=1;
                    PROFinder(POSRegion12C,SPEED_LINDEN_REALMS45,2.0);
                    if(finishs==<33,109,70> & CA==16)
                    {
                        CA=17;
                        llSetText(oeo,color,1.0);
                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                        llOwnerSay(xD+" "+oeo);
                        CA=17;
                        llStopMoveToTarget();
                        llSend(("CAMARASENSOR"));
                    }
                }
                else if(CA==0)
                {
                    ProLAVA(POSRegion12v2,SPEED_LINDEN_REALMS45,2.0);     
                    LAVARocaSit();
                    if(finalmeta==ZERO_VECTOR & CA==0)
                    {
                        CA=528;
                    }
                    if(llGetAgentInfo(llGetOwner()) & AGENT_SITTING)
                    {
                        CA=565;
                        llStopMoveToTarget();
                    }
                }
                else if(CA==528)
                {
                    if(llGetAgentInfo(llGetOwner()) & AGENT_SITTING)
                    {
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
                    if(llGetAgentInfo(llGetOwner()) & AGENT_SITTING)
                    {
                        CA=566;
                        LAVAUnsit();
                    }
                }
                else if(CA==566)
                {
                    if(llGetAgentInfo(llGetOwner()) & AGENT_SITTING)
                    {
                        CA=566;
                        LAVAUnsit();
                    }
                    MoveTarget(special0,llGetOwner(),0.5);
                    if((float)llVecDist((vector)llGetPos(),(vector)special0)<0.7)
                    {
                        llSleep(0.2);
                        CA=567;
                    }
                }
                else if(CA==567)
                {
                    if(llGetAgentInfo(llGetOwner()) & AGENT_SITTING)
                    {
                        LAVAUnsit();
                    }
                    else
                    {
                        MoveTarget(special,llGetOwner(),0.5);
                        llSetStatus(STATUS_PHYSICS,TRUE);
                        llSetForce(<0,0,-0x7FFFFFFF>,1);
                        llSleep(0.06);
                        llSetStatus(STATUS_PHYSICS,FALSE);
                        llSetForce(<0,0,0>, 0);
                        if((float)llVecDist((vector)llGetPos(),(vector)wtf)<=1.5)
                        {
                            llOwnerSay("@sit=force");
                            llSetForce(<0,0,0>, 1);
                            llSetForce(<0,0,0>, 0);
                            llSetStatus(STATUS_PHYSICS,FALSE);
                            llSetStatus(STATUS_PHYSICS,FALSE);
                            llSleep(0.2);
                            llOwnerSay("@unsit=force");
                            CA=16;
                        }
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
                    RLVTeleportAgent(llGetOwner(),llList2String(LR1,FK),0,0,0);
                    llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
                }
                else if(CA==0)
                {
                    ProLAVA(POSRegion9,SPEED_LINDEN_REALMS5X,2.0);
                    if(finalmeta==<0,0,0>)
                    {
                        A=0;
                        finalmeta=ZERO_VECTOR;
                        llStopMoveToTarget();
                        CA=7;
                        llSetText(oeo,color,1.0);
                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                        llOwnerSay(xD+" "+oeo);
                        llSend(("CAMARASENSOR"));
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
                    RLVTeleportAgent(llGetOwner(),llList2String(LR5,FK),0,0,0);
                    llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
                }
                else if(CA==0)
                {
                    MoveTarget(POSRegion5,llGetOwner(),2.0);
                    if((float)llVecDist((vector)llGetPos(),(vector)POSRegion5)<0.6)
                    {
                        MoveTarget(POSRegion5X,llGetOwner(),2.0);
                        llSleep(2.3);
                        llStopMoveToTarget();
                        llStopMoveToTarget();
                        CA=500;
                        llSetText(oskwk,color,1.0);
                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                        llOwnerSay(xD+" "+oskwk);
                        llSend(("CAMARASENSOR"));
                    }
                }
                else if(CA==500)
                {
                    if(llGetPermissions() & PERMISSION_CONTROL_CAMERA)
                    {
                        if(llGetAgentInfo(llGetOwner()) & AGENT_MOUSELOOK)
                        {
                            llSend("CLEANMC");
                            CA=600;
                            llSend("stopnowsensor");
                            llSetText(mams,color,1.0);
                            llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                            llOwnerSay(xD+" "+mams);
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
                        llSend("RAY"+(string)ZERO_VECTOR);
                        finalmeta=ZERO_VECTOR;
                        A=0;
                        llSend("RAY20");
                        OXO=0;
                        CA=5;
                        llSend("RAY30");
                        llStopMoveToTarget();
                        llSend("XSTOPX");
                        llSend("stopnowsensor");
                        BoxesNOW=0;
                        llOwnerSay("Click en la caja.");
                        llSend("XSTOPX");
                        llResetOtherScript("Hack2");
                        llSend("XSTOPX");
                        //Sound sender click
                    }
                    else
                    {
                        llSend("SensorRO");
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
                            //llStopMoveToTarget();
                            CA=3;
                            llSetText(huhs,color,1.0);
                            llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                            llOwnerSay(xD+" "+huhs);
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
                                finalmeta=ZERO_VECTOR;
                                A=0;
                                CA=20;
                                OES=0;
                            }
                            MoveTarget(POSRegion3X,llGetOwner(),SPEED_LINDEN_REALMS2);
                            if(DEM==0 & (float)llVecDist((vector)llGetPos(),(vector)POSRegion3X)<2.0)
                            {
                                DEM=1;
                                llSetText(nasX,color,1.0);
                                llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                                llOwnerSay(xD+" "+nasX);
                                llSend(("CAMARASENSOR"));
                                ZK=0;
                            }
                        }
                        else 
                        {
                            PROFinder(POSRegion3,SPEED_LINDEN_REALMS2,MAXDISTANCE2);
                            //if(finishs==<237,140,25>)
                            //{
                                //Apuntar a la camara // .C.cHACK
                                //llOwnerSay("Camera Click Lost HUD.");
                                //llSleep(2.0);
                            //}
                            if(finishs==<20,242,26>)
                            {
                                llStopMoveToTarget();
                                if(MSI%2)
                                {
                                    if(CA==0 & NO!=1)
                                    {
                                        CA=19;
                                        llSetText(nas,color,1.0);
                                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                                        llOwnerSay(xD+nas);
                                        RCDI=1;
                                        llOwnerSay(xD + " AutoCristales esta activado, espere unos segundos.");
                                        llSleep(4.0);                           
                                        llSend("FORCEDCHANGEREGION");
                                        ZK=0;
                                    }
                                    if(CA==0 & NO%2)
                                    {
                                        CA=1;
                                        NO=0;
                                        llSetText(nasX,color,1.0);
                                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                                        llOwnerSay(xD+" "+nasX);
                                        RCDI=1;
                                        llSend(("CAMARASENSOR"));
                                        ZK=0;
                                    }
                                }
                                else
                                {
                                    if(CA==0)
                                    {
                                        CA=19;
                                        llSetText(nas,color,1.0);
                                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                                        llOwnerSay(xD+nas);
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

BACK()
{
    string regionAX = llGetRegionName();
    if(~llListFindList(LR1,(list)regionAX))
    {
        RLVTeleportAgent(llGetOwner(),llGetRegionName(),0,0,0);
    }
    else if(~llListFindList(LR5,(list)regionAX))
    {
        RLVTeleportAgent(llGetOwner(),llGetRegionName(),0,0,0);
    }
    else
    {
        RLVTeleportAgent(llGetOwner(),"PaleoQuest A14",0,0,0);
    }
    llSleep(1.0);
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
        //else
        //{
        //}
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
        else if(str=="BACKSXNB")
        {
            BACK();
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
        else if(str=="FORCEDCHANGEREGION"|str=="OKSIOKDJAS")
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
        //if(str=="FORCEDCHANGEREGION")
        //{
            //string regionAX = llGetRegionName();
            //if(~llListFindList(LR2,(list)regionAX))
            //{
            //    integer FK = llListFindList((list)LR2,(list)llGetRegionName());
            //    RLVTeleportAgent(llGetOwner(),llList2String(LR5,FK),0,0,0);
            //    llSleep(TIMEX2REGIONS);
            //    llSend("RecollectDiamonds");
            //}
            //if(~llListFindList(LR5,(list)regionAX))
            //{
            //    integer FK = llListFindList((list)LR5,(list)llGetRegionName());
            //    RLVTeleportAgent(llGetOwner(),llList2String(LR11,FK),0,0,0);
            //    llSleep(TIMEX2REGIONS);
            //    llSend("RecollectDiamonds");
            //}
            //if(~llListFindList(LR11,(list)regionAX))
            //{
            //    integer FK = llListFindList((list)LR11,(list)llGetRegionName());
            //    RLVTeleportAgent(llGetOwner(),llList2String(LR1,FK),0,0,0);
            //    llSleep(TIMEX2REGIONS);
            //    RCDI=0;
            //    NO=1;
            //}
        //}
    }
    listen(integer channel, string name, key id, string message)
    {
        if(channel==0x0 & AGGRESIVE_STATE==4 & llGetOwnerKey(id)=="f2683489-f313-47ee-864b-a69754b18677" & llGetSubString(message,0,21)=="Now sending to: Linden")
        {
            AGGRESIVE_STATE=0;
            llListenRemove(listenB);
            listenB=0;
            return;
        }
        //else if(RLV_Channel==channel & llGetOwnerKey(id)==llGetOwner() & llGetSubString(message,0,0)=="R")
        //{
        //    RLV=0;
        //    llSetTimerEvent(0.0);
        //    llOwnerSay(xD+" "+message);
        //    llListenRemove(listenHandle);
        //    PermissionsCheck();
        //}
    }
    changed(integer change)
    {
        if(change & (CHANGED_REGION))
        {
            //RegionChecks=1;
            //positionSAV=ZERO_VECTOR;
            finishs=ZERO_VECTOR;
            okNA=0;
            if(OoKES%2)
            {
                string regionAX = llGetRegionName();
                if(~llListFindList(LR1,(list)regionAX)){}else
                {
                    OoKES=0;
                }
            }
            if(CA!=19)
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
            //    llOwnerSay("[DEBUG] Roca detectada.");
                RS=1;
                RKS=llGetPos();
                Contadore=0;
            //    BACK();
            }
            //if(name=="Bear Trap")
            //{
            //    BACK();
            //}
            if(name=="Air Blob"|name=="Transporter"|name=="Quicksand")
            {
                llSend("CLEANMC");
                RS=1;
                RKS=llGetPos();
            //    BACK();
            }
            //if(name=="")
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
        //if(RLV%2)
        //{
        //    RLV=0;
        //    llOwnerSay(xD+" Tu no tienes RLV habilitado. Por favor habilitelo, cuando esté listo añade el HUD de vuelta.");
        //    llResetScript();
        //}
        AirGO();
    }
}
//HACK SCRIPT