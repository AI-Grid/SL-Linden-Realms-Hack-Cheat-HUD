//para tocar la puta hoja debo collisionar, SE COLLISIONAN EN TODOS?
// 7 253 25 es UNA POSICION MAYOR ASI SE QUEDA AHI EL AVATAR
// HACER UN CAMINO Y CON UN OFFSET AGARRAR LOS DIAMANTES CERCANOS
// contador de diamantes algun listener?
// HACER UN OFFSET PARA TODOS LOS PELIGROS ASI NO SE COLISSIONAN
// Cuando inicia sesion, la placa debe apretar la tecla M y ahì comenzar a usar este script.
// LA UNICA FORMA DE DETECTAR LOS DIAMANTES DE COLOR ES USAR UN LLISTENER, O ALGUN HACK DETECTOR DE COLOR PROGRAMA / ARDUINO , OTRA FORMA NO HAY.

//////////////////////////////////// - ////////////////////////////////////
//float TIME_DELAY_SECONDS = 5.0; // Cuando este listo ahi recien ejecutar el script al iniciar sesion o añadir el objeto, dependera de este tiempo del float.
integer SERIAL_OUTPUT = FALSE; // output posiciones
integer TARGET_MOVEMENT = TRUE; // mover al owner position
integer ZK=0; //0 // DEFAULT
float TIME_DELAY_SECONDS = 1.0;//15.0; //DEFAULT
float PULSE = 2.1;//2.1 default // speed HACK

float TIME_DELAY_SECONDS_PASS_REGIONS = 6.5; // al teletransportar, varia la velocidad internet
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
string xD = "Profesional AutoBot - Linden Realms:";
integer RLV_Channel = 549845;
integer listenHandle;
integer RLV;
integer okNA;
integer HEHE;
integer RS;
integer CA;
integer HOLA;
integer XKS;

list Regions = ["Portal Park 1"];
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

list POSRegion1 = [<93,156,53>,<93,156,53>,<78,137,53>,<71,139,52>,<58,142,53>,<32,148,55>];

list POSRegion2 = [<203,210,44>,<203,210,44>,<184,190,43>,<163,171,43>,<142,154,43>,<117,138,26>,<78,133,25>,<28,126,54>,<0,128,55>,<-1.54533, 123.69700, 55.03342>,<-5.54533, 123.69700, 55.03342>];

list POSRegion3 = [<234,120,25>,<234,120,25>,<232,143,25>,<232,146,25>,<20,242,26>];
//list POSRegion3B = [<219,138,24>,<219,138,24>,<205,121,26>,<180,103,32>,<126,75,40>,<26,228,41>];
list POSRegion3B = [<219,138,39>,<219,138,39>,<205,121,41>,<180,103,47>,<126,75,55>,<26,228,56>];
//list POSRegion3C = [<82,76,41>,<82,76,41>,<41,91,38>,<0,88,38>,<-5.54533,88,38>];
list POSRegion3C = [<129,78,40>,<129,78,40>,<82,76,56>,<41,91,53>,<0,88,53>,<-5.54533,88,53>];

list POSRegion4 = [<232,128,56>,<232,128,56>,<188,158,56>,<185,204,56>,<191,234,56>,<218,253,56>,<218,253,96>,<218,257,96>];

//list POSRegion5 = [<223,0,34>,<223,0,34>,<222,2,35>,<222,4,34>,<218,9,36>,<51,228,47>]; // region de los lentes y M
list POSRegion5 = [<223,0,24>,<223,0,24>,<222,2,25>,<222,4,24>,<218,9,26>,<51,228,27>];

list POSRegion6 = [<58,0,48>,<58,0,48>,<58,-1.54533,48>];

list POSRegion7 = [<0,214,37>,<0,214,37>,<-3.8,214,37>];

list POSRegion8 = [<241,130,63>,<58,0,63>,<220.49250,66.17735,37.33475>,<219,66.17735,37.33475>,<199,40,37>,<191,-1.84533,37>,<191,-3.84533,37>];

list POSRegion9 = [<212,218,22>,<212,218,22>,<162,111,22>,<110,83,22>,<89,214,22>];

list POSRegion10 = [<177,171,33>,<177,171,33>,<155,192,50>,<157,235,50>,<172,260,50>];

list POSRegion11 =  [<204.65760, 17.37965, 32.26801>,<204.65760, 17.37965, 32.26801>,<206.33770, 41.05254, 40.11812>,<202.07170, 69.61992, 40.40075>,<198.78800, 123.50960, 40.11446>,<191.76520, 159.68590, 40.96450>,<188.06380, 192.69030, 40.00345>,<183.82900, 230.86080, 40.60505>,<182.27390, 248.26350, 40.67903>,<182.27390, 248.26350, 40.67903>,<182.27390, 260.26350, 40.67903>];

list POSRegion12 = 
[
<148, 10, 34>,
<148, 10, 34>,
<127, 18, 33>, // hoja de medallen?
<127, 19.2, 33>,
<127, 19, 32>,
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
<148.13300, 162.64560, 80.40981>
];

list NO_TARGET = [<26,228,56>,<20,242,26>,<51,228,27>,<89,214,22>];

vector POS_OWNER;
rotation ROT_OWNER;
vector RKS;
vector finishs;

float RLV_Time = 2.0;

RLVTeleportAgent(key LLAVE,string REGION,integer X,integer Y,integer Z)
{   
    llOwnerSay("@accepttp=[:"+(string)LLAVE+"]=add");
    llSleep(0.5);
    llOwnerSay("@tpto:"+REGION+"/"+(string)X+"/"+(string)Y+"/"+(string)Z+">[;0]=force"); 
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
        llSetColor(<0.502, 0.0, 1.0>, ALL_SIDES);
        llSetDamage(0.0);
        RLV=1;
        listenHandle = llListen(RLV_Channel,"", llGetOwner(),"");
        llAllowInventoryDrop(FALSE);
        llForceMouselook(TRUE);
        llOwnerSay(xD+" Comenzó en "+(string)llGetUsedMemory()+" bytes.");
        llOwnerSay(xD+" Por favor debe tener RLV(a) activado para este proyecto.");
        llOwnerSay(xD+" Proyecto creado por Reddlyy(ErikV7) ft. chichinashi");
        llOwnerSay(xD+" Musica Inspirada: Yogi ft. Ayah Marar - Follow U (Trolley Snatcha Remix)");
        llOwnerSay(xD+" Para facilitar la creación de ALTERS utilizé https://emailtemporal.org/ y https://www.lastpass.com/es/username-generator");
        llOwnerSay(xD+" Espera "+(string)TIME_DELAY_SECONDS+" segundos para que empieze el script...");
        llSleep(TIME_DELAY_SECONDS);
        llOwnerSay("@version="+(string)RLV_Channel);
        llSetTimerEvent(RLV_Time);
    }
}

PermissionsCheck()
{
    if(llGetOwner()==llGetPermissionsKey() && llGetPermissions() & PERMISSION_DEBIT)
    {
        llOwnerSay(xD+" Permisos estan habilitados.");
        llTakeControls(
                                CONTROL_FWD |
                                CONTROL_BACK |
                                CONTROL_LEFT |
                                CONTROL_RIGHT |
                                CONTROL_ROT_LEFT |
                                CONTROL_ROT_RIGHT |
                                CONTROL_UP |
                                CONTROL_DOWN |
                                CONTROL_LBUTTON |
                                CONTROL_ML_LBUTTON ,
                                TRUE,TRUE);
        llOwnerSay(xD+" Velocidad al correr/volar activada. Si tocas el hud cuando el hud lo diga y no estas listo o se quedo trabado el avatar, por favor cambie de region y vuelva de vuelta. Para activar mas fuerte la velocidad, Salta y presiona W(Boton de avanzar).");
        Loops();
    }
    else
    {
        llOwnerSay(xD+" Solicitando permisos...");
        llRequestPermissions(llGetOwner(),
        0x4
        |0x10
        |0x20
        |0x400
        |0x800
        |0x8000
        );
    }
}

RLVSet()
{
    llOwnerSay(xD+" Configurando RLV...");
    llOwnerSay("@fly=y");
    llOwnerSay("@alwaysrun=y");
    llOwnerSay("@tploc=y");
    llOwnerSay("@shownametags=y");
    llOwnerSay("@showhovertextall=y");
    llOwnerSay(xD+" Listo.");
    PermissionsCheck();
}

Loops()
{
    llOwnerSay(xD+" Iniciado OK.");
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
    if(ok<(float)dix | (vector)finishs==ZERO_VECTOR | HEHE%2)
    {
        HEHE=0;
        integer LENGTH = llGetListLength(HAHA);
        integer i;
        list numbers;
        for(i=0;i<LENGTH;i++)
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
            else if(i==okNA+2|i==okNA+3|i==okNA+4|i==okNA+5|i==okNA+6|i==okNA+7|i==okNA+8|i==okNA+9|i==okNA+10|i==okNA+11|i==okNA+12|i==okNA+13|i==okNA+14|i==okNA+15|i==okNA+16|i==okNA+17|i==okNA+18|i==okNA+19|i==okNA+20|i==okNA+21)
            {
                numbers = numbers + [9999.9];
            }
            else if(i==okNA-2|i==okNA-3|i==okNA-4|i==okNA-5|i==okNA-6|i==okNA-7|i==okNA-8|i==okNA-9|i==okNA-10|i==okNA-11|i==okNA-12|i==okNA-13|i==okNA-14|i==okNA-15|i==okNA-16|i==okNA-17|i==okNA-18|i==okNA-19|i==okNA-20|i==okNA-21)
            {
                numbers = numbers + [9999.9];
            }
            else
            {
                numbers = numbers + [(float)llVecDist((vector)POS_OWNER,(vector)llList2Vector((list)HAHA,(integer)i))];
            }
        }
        if(SERIAL_OUTPUT%2)
        {
            llOwnerSay((string)llDumpList2String(numbers,",")); 
        }
        float results = llListStatistics(LIST_STAT_MIN,numbers);
        integer RES = llListFindList(numbers,(list)[results]);
        finishs = llList2Vector((list)HAHA,(integer)RES);
        okNA=RES;
        if(SERIAL_OUTPUT%2)
        {
            llOwnerSay((string)finishs);
        }
        if(TARGET_MOVEMENT%2)
        {
            MoveTarget(finishs,llGetOwner(),SPEEDZ);
        }
    }
}

AirGO()
{
    if(RKS!=llGetPos() & RS==1)
    {
        RS=0;
        HEHE=1;
        finishs=ZERO_VECTOR;
        okNA=0;
        llSleep(5.0);
        HOLA=1;
    }
    POS_OWNER = llGetPos();
    ROT_OWNER = llGetRot();
    string region = llGetRegionName();
    llSensor("",NULL_KEY,(SCRIPTED|PASSIVE|ACTIVE),64,PI);
    if(HOLA%2)
    {
        HOLA=0;
        llOwnerSay(xD+" Algo te detecto, volveras a la misma posición automaticamente en unos segundos. Si 'el avatar queda en el aire' presionar la tecla Avanzar(W). Si el blob te detecta de la misma forma que antes, quita y añade de vuelta el HUD y moverse.");
    }
    if(llGetSubString(region,0,2)!="LR " & llListFindList((list)llList2String(Regions,0),(list)region)==0xFFFFFFFF & region!="" & region!=" ")
    {
        llStopMoveToTarget();
        RLVTeleportAgent(llGetOwner(),llList2String(Regions,0),0,0,0);
        llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
    }
    if(region==llList2String(Regions,0))
    {
        PROFinder(POSRegion1,SPEED_LINDEN_REALMS4,MAXDISTANCE);
    }
    else if(~llListFindList(LR1,(list)region))
    {
        PROFinder(POSRegion2,SPEED_LINDEN_REALMS,MAXDISTANCE);
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
        if(CA==15)
        {

        }
        else
        {
            XKS=1;
            PROFinder(POSRegion12,SPEED_LINDEN_REALMS4,2.0);
            if(finishs==<148.13300, 162.64560, 80.40981> & CA==0)
            {
                PULSE=0.0;
                CA=15;
                llStopMoveToTarget();
                llOwnerSay("ok");
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
                llSetText("POR FAVOR CLICKEE UN AMULETO(PIEZA) QUE ESTA CERCA DE ACA EN EL SUELO.\n Cuando estes listo clickea el HUD Flecha.",color,1.0);
                llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                llOwnerSay(xD+" POR FAVOR CLICKEE UN AMULETO(PIEZA) QUE ESTA CERCA DE ACA EN EL SUELO. Cuando estes listo clickea el HUD Flecha.");
            }
        }
    }
    else if(~llListFindList(LR5,(list)region))
    {
        PROFinder(POSRegion6,SPEED_LINDEN_REALMS4,MAXDISTANCE);
    }
    else if(~llListFindList(LR5,(list)region))
    {
        PROFinder(POSRegion6,SPEED_LINDEN_REALMS4,MAXDISTANCE);
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
        else
        {
            PROFinder(POSRegion5,SPEED_LINDEN_REALMS4,MAXDISTANCE);
            if(finishs==<51,228,27> & CA==0)
            {
                llStopMoveToTarget();
                CA=5;
                llSetText("POR FAVOR CLICKEE LOS LENTES DEL SUELO,\n APRIETE M Y BUSQUE LA MARCA AZUL EN EL MAPA VIRTUAL HUD.\n CUANDO APAREZCA UNA CAJA HAGA CLICK EN LA MISMA.\n Cuando estes listo clickea el HUD Flecha.",color,1.0);
                llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                llOwnerSay(xD+" POR FAVOR CLICKEE LOS LENTES DEL SUELO, APRIETE M Y BUSQUE LA MARCA AZUL EN EL MAPA VIRTUAL HUD. CUANDO APAREZCA UNA CAJA HAGA CLICK EN LA MISMA. Cuando estes listo clickea el HUD Flecha.");
            }
        }
    }
    else if(~llListFindList(LR3,(list)region))
    {
        PROFinder(POSRegion4,SPEED_LINDEN_REALMS4,MAXDISTANCE);
    }
    else if(~llListFindList(LR9,(list)region))
    {
        if(ZK%2)
        {
            ZK=0;
            llStopMoveToTarget();
        }
        PROFinder(POSRegion11,SPEED_LINDEN_REALMS3,MAXDISTANCE);
    }
    else if(~llListFindList(LR2,(list)region))
    {
        if(ZK%2)
        {
            PROFinder(POSRegion10,SPEED_LINDEN_REALMS3,MAXDISTANCE);
        }
        else
        {
            if(CA==4)
            {
                PROFinder(POSRegion3C,SPEED_LINDEN_REALMS4,MAXDISTANCE);
            }
            else if(CA==2)
            {
                PROFinder(POSRegion3B,SPEED_LINDEN_REALMS3,MAXDISTANCE);
                if(finishs==<26,228,56>)
                {
                    llStopMoveToTarget();
                    CA=3;
                    llSetText("POR FAVOR CLICKEA ESTE ARBOL! LUEGO DA UNOS PASOS ATRAS O SALTA PARA LUEGO TOCAR EL HUD ASI NO TE DETECTA. \n Cuando estes listo clickea el HUD Flecha.",color,1.0);
                    llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                    llOwnerSay(xD+" POR FAVOR CLICKEA ESTE ARBOL! LUEGO DA UNOS PASOS ATRAS O SALTA PARA LUEGO TOCAR EL HUD ASI NO TE DETECTA. Cuando estes listo clickea el HUD Flecha.");
                }
            }
            else
            {
                PROFinder(POSRegion3,SPEED_LINDEN_REALMS2,MAXDISTANCE);
                if(finishs==<20,242,26>)
                {
                    llStopMoveToTarget();
                    if(CA==0)
                    {
                        CA=1;
                        llSetText("POR FAVOR AGARRE DIAMANTES - (10 ROJOS 5 AMARILLOS 3 NARANJAS 1 VERDE),\n LUEGO VUELVE Y CLICKEA EL ARBOL SIN HOJAS QUE ESTA ENFRENTE Y CERCA DE TI!\n Cuando estes listo clickea el HUD Flecha.",color,1.0);
                        llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                        llOwnerSay(xD+" POR FAVOR AGARRE DIAMANTES - (10 ROJOS 5 AMARILLOS 3 NARANJAS 1 VERDE), LUEGO VUELVE Y CLICKEA EL ARBOL SIN HOJAS QUE ESTA ENFRENTE Y CERCA DE TI! Cuando estes listo clickea el HUD Flecha.");
                    }
                }
            }
        }
    }
    else
    {
        llStopMoveToTarget();
    }
}

MoveTarget(vector Pos,key WHOS,float SPEEDZX)
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
            llOwnerSay(xD+" Permisos fueron habilitados.");
                                llTakeControls(
                                CONTROL_FWD |
                                CONTROL_BACK |
                                CONTROL_LEFT |
                                CONTROL_RIGHT |
                                CONTROL_ROT_LEFT |
                                CONTROL_ROT_RIGHT |
                                CONTROL_UP |
                                CONTROL_DOWN |
                                CONTROL_LBUTTON |
                                CONTROL_ML_LBUTTON ,
                                TRUE,TRUE);
            llOwnerSay(xD+" Velocidad al correr/volar activada. Si tocas el hud cuando el hud lo diga y no estas listo o se quedo trabado el avatar, por favor cambie de region y vuelva de vuelta. Para activar mas fuerte la velocidad, Salta y presiona W(Boton de avanzar).");
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
    control(key id, integer level, integer edge)
    {
        if(level & CONTROL_FWD && PULSE!=0.0)
        {
            llApplyImpulse(<PULSE,0,0>,TRUE);
            llStopMoveToTarget();
        }
    }
    touch_start(integer num_detected)
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
    }
    listen(integer channel, string name, key id, string message)
    {
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
            list TPs = llGetObjectDetails(keys,[OBJECT_POS]);
            vector roka = llList2Vector(TPs,0);
            if((float)llVecDist((vector)llGetPos(),(vector)roka)<1.2 & llGetSubString(name,0,16)=="New Linden Realms")
            {
                RS=1;
                RKS=llGetPos();
            }
            if(name=="Air Blob"|name=="Transporter")
            {
                RS=1;
                RKS=llGetPos();
            }
            if((float)llVecDist((vector)llGetPos(),(vector)roka)<2.0 & name=="LR - Resurrection Circle" & XKS%2)
            {
                llResetScript();
            }
        }
        //Giant Lava Ball - Mountain
        //Fallen Rock
        // aca van todos los peligros q caga el movimiento
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