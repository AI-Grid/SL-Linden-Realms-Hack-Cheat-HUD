//10 RED 5 YELLOW 3 ORANGE 1 GREENA
//para tocar la puta hoja debo collisionar, SE COLLISIONAN EN TODOS?
// 7 253 25 es UNA POSICION MAYOR ASI SE QUEDA AHI EL AVATAR
// HACER UN CAMINO Y CON UN OFFSET AGARRAR LOS DIAMANTES CERCANOS
// contador de diamantes algun listener?
// HACER UN OFFSET PARA TODOS LOS PELIGROS ASI NO SE COLISSIONAN
// Cuando inicia sesion, la placa debe apretar la tecla M y ahì comenzar a usar este script.
// LA UNICA FORMA DE DETECTAR LOS DIAMANTES DE COLOR ES USAR UN LLISTENER, O ALGUN HACK DETECTOR DE COLOR PROGRAMA / ARDUINO , OTRA FORMA NO HAY.

//////////////////////////////////// - ////////////////////////////////////
//float TIME_DELAY_SECONDS = 5.0; // Cuando este listo ahi recien ejecutar el script al iniciar sesion o añadir el objeto, dependera de este tiempo del float.
float TIME_DELAY_SECONDS = 15.0;
float TIME_DELAY_SECONDS_PASS_REGIONS = 6.5; // al teletransportar, varia la velocidad internet
float SPEED_LINDEN_REALMS = 0.3; // velocidad
float SPEED_LINDEN_REALMS2 = 0.7; // velocidad mayor numero mas lento
float SPEED_LINDEN_REALMS3 = 1.1; // velocidad mayor numero mas lento
float SPEED_LINDEN_REALMS4 = 0.044444444; // ? :D
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
integer DX;

list Regions = ["Portal Park 1"];
list LR1 = ["LR 7","LR 27","LR 47","LR 147","LR 167","LR 187"];
list LR2 = ["LR 6","LR 26","LR 46","LR 146","LR 166","LR 186"];
list LR3 = ["LR 5","LR 25","LR 45","LR 145","LR 165","LR 185"];
list LR4 = ["LR 2","LR 22","LR 42","LR 142","LR 162","LR 182"];

list POSRegion1 = [<93,156,53>,<93,156,53>,<78,137,53>,<71,139,52>,<58,142,53>,<32,148,55>];
list POSRegion2 = [<203,210,44>,<203,210,44>,<184,190,43>,<163,171,43>,<142,154,43>,<117,138,26>,<78,133,25>,<28,126,24>,<0,128,25>,<-1.54533, 123.69700, 25.03342>,<-5.54533, 123.69700, 25.03342>];
list POSRegion3 = [<234,120,25>,<234,120,25>,<232,143,25>,<232,146,25>,<20,242,26>];

//list POSRegion3B = [<219,138,24>,<219,138,24>,<205,121,26>,<180,103,32>,<126,75,40>,<26,228,41>];
list POSRegion3B = [<219,138,39>,<219,138,39>,<205,121,41>,<180,103,47>,<126,75,55>,<26,228,56>];

//list POSRegion3C = [<82,76,41>,<82,76,41>,<41,91,38>,<0,88,38>,<-5.54533,88,38>];
list POSRegion3C = [<82,76,56>,<82,76,56>,<41,91,53>,<0,88,53>,<-5.54533,88,53>];

list POSRegion4 = [<232,128,56>,<232,128,56>,<188,158,56>,<188,158,56>,<185,204,56>,<191,234,56>,<191,234,56>,<218,253,56>,<218,260,56>];

list POSRegion5 = [<223,0,24>,<223,0,24>,<222,2,25>,<222,4,24>,<218,9,26>,<51,228,27>]; // region de los lentes y M

list POSRegion5A = [<193,54,50>,<193,54,50>,<260,54,50>] // esto va a la region LR 3

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
        0x2
        |0x4
        |0x10
        |0x20
        |0x400
        |0x800
        |0x1000
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

AirGO()
{
    if(RKS!=llGetPos() & RS==1)
    {
        RS=0;
        HEHE=1;
        finishs=ZERO_VECTOR;
        okNA=0;
    }
    vector POS_OWNER = llGetPos();
    rotation ROT_OWNER = llGetRot();
    string region = llGetRegionName();
    if(region=="Portal Park 1" & DX=0)
    {
        llSensorRepeat("","",(AGENT_BY_LEGACY_NAME|AGENT|AGENT_BY_USERNAME|SCRIPTED|PASSIVE|ACTIVE), 96.0, PI, 11.0);
        DX=1;
    }
    else if(region=="Portal Park 2" | llGetSubString(region,0,2)=="LR ")
    {
        llSensorRemove();
        llSensor("",NULL_KEY,(SCRIPTED|PASSIVE|ACTIVE),64,PI);
        DX=0;
    }
    if(llGetSubString(region,0,2)!="LR " & llListFindList((list)llList2String(Regions,0),(list)region)==0xFFFFFFFF & region!="" & region!=" ")
    {
        llStopMoveToTarget();
        RLVTeleportAgent(llGetOwner(),llList2String(Regions,0),0,0,0);
        llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
    }
    if(region==llList2String(Regions,0))
    {
        float ok = (float)llVecDist((vector)POS_OWNER,(vector)finishs);
        if(ok<(float)2.00 | (vector)finishs==ZERO_VECTOR)
        {
            integer LENGTH = llGetListLength(POSRegion1);
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
                else
                {
                    numbers = numbers + [(float)llVecDist((vector)POS_OWNER,(vector)llList2Vector((list)POSRegion1,(integer)i))];
                }
            }
            float results = llListStatistics(LIST_STAT_MIN,numbers);
            integer RES = llListFindList(numbers,(list)[results]);
            finishs = llList2Vector((list)POSRegion1,(integer)RES);
            okNA=RES;
            llMoveToTarget(finishs,0.044444444); 
        }
    }
    else if(~llListFindList(LR1,(list)region))
    {
        RLVZ();
        float ok = (float)llVecDist((vector)POS_OWNER,(vector)finishs);
        if(ok<(float)2.00 | (vector)finishs==ZERO_VECTOR | HEHE%2)
        {
            HEHE=0;
            integer LENGTH = llGetListLength(POSRegion2);
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
                else
                {
                    numbers = numbers + [(float)llVecDist((vector)POS_OWNER,(vector)llList2Vector((list)POSRegion2,(integer)i))];
                }
            }
            float results = llListStatistics(LIST_STAT_MIN,numbers);
            integer RES = llListFindList(numbers,(list)[results]);
            finishs = llList2Vector((list)POSRegion2,(integer)RES);
            okNA=RES;
            llMoveToTarget(finishs,SPEED_LINDEN_REALMS); 
        }
    }
    else if(~llListFindList(LR4,(list)region))
    {
        if(CA==6)
        {
////////////////////////////////////// 
        }
        else
        {
            RLVZ();
            float ok = (float)llVecDist((vector)POS_OWNER,(vector)finishs);
            if(ok<(float)2.00 | (vector)finishs==ZERO_VECTOR | HEHE%2)
            {
                HEHE=0;
                integer LENGTH = llGetListLength(POSRegion5);
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
                    else
                    {
                        numbers = numbers + [(float)llVecDist((vector)POS_OWNER,(vector)llList2Vector((list)POSRegion5,(integer)i))];
                    }
                }
                float results = llListStatistics(LIST_STAT_MIN,numbers);
                integer RES = llListFindList(numbers,(list)[results]);
                finishs = llList2Vector((list)POSRegion5,(integer)RES);
                okNA=RES;
                llMoveToTarget(finishs,SPEED_LINDEN_REALMS4); 
            }
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
        RLVZ();
        float ok = (float)llVecDist((vector)POS_OWNER,(vector)finishs);
        if(ok<(float)2.00 | (vector)finishs==ZERO_VECTOR | HEHE%2)
        {
            HEHE=0;
            integer LENGTH = llGetListLength(POSRegion4);
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
                else
                {
                    numbers = numbers + [(float)llVecDist((vector)POS_OWNER,(vector)llList2Vector((list)POSRegion4,(integer)i))];
                }
            }
            float results = llListStatistics(LIST_STAT_MIN,numbers);
            integer RES = llListFindList(numbers,(list)[results]);
            finishs = llList2Vector((list)POSRegion4,(integer)RES);
            okNA=RES;
            llMoveToTarget(finishs,SPEED_LINDEN_REALMS4); 
        }
    }
    else if(~llListFindList(LR2,(list)region))
    {
        if(CA==4)
        {
            RLVZ();
            float ok = (float)llVecDist((vector)POS_OWNER,(vector)finishs);
            if(ok<(float)2.00 | (vector)finishs==ZERO_VECTOR | HEHE%2)
            {
                HEHE=0;
                integer LENGTH = llGetListLength(POSRegion3C);
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
                    else
                    {
                        numbers = numbers + [(float)llVecDist((vector)POS_OWNER,(vector)llList2Vector((list)POSRegion3C,(integer)i))];
                    }
                }
                float results = llListStatistics(LIST_STAT_MIN,numbers);
                integer RES = llListFindList(numbers,(list)[results]);
                finishs = llList2Vector((list)POSRegion3C,(integer)RES);
                okNA=RES;
                llMoveToTarget(finishs,SPEED_LINDEN_REALMS4); 
            }
        }
        else if(CA==2)
        {
            RLVZ();
            float ok = (float)llVecDist((vector)POS_OWNER,(vector)finishs);
            if(ok<(float)2.00 | (vector)finishs==ZERO_VECTOR | HEHE%2)
            {
                HEHE=0;
                integer LENGTH = llGetListLength(POSRegion3B);
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
                    else
                    {
                        numbers = numbers + [(float)llVecDist((vector)POS_OWNER,(vector)llList2Vector((list)POSRegion3B,(integer)i))];
                    }
                }
                //llOwnerSay((string)llDumpList2String(numbers,","));
                float results = llListStatistics(LIST_STAT_MIN,numbers);
                integer RES = llListFindList(numbers,(list)[results]);
                finishs = llList2Vector((list)POSRegion3B,(integer)RES);
                okNA=RES;
                //llOwnerSay((string)finishs);
                llMoveToTarget(finishs,SPEED_LINDEN_REALMS3); 
            }
            if(finishs==<26,228,56>)
            {
                llStopMoveToTarget();
                CA=3;
                llSetText("POR FAVOR CLICKEA ESTE ARBOL!\n Cuando estes listo clickea el HUD Flecha.",color,1.0);
                llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                llOwnerSay(xD+" POR FAVOR CLICKEA ESTE ARBOL! Cuando estes listo clickea el HUD Flecha.");
            }
        }
        else
        {
            RLVZ();
            float ok = (float)llVecDist((vector)POS_OWNER,(vector)finishs);
            if(ok<(float)2.00 | (vector)finishs==ZERO_VECTOR | HEHE%2)
            {
                HEHE=0;
                integer LENGTH = llGetListLength(POSRegion3);
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
                    else
                    {
                        numbers = numbers + [(float)llVecDist((vector)POS_OWNER,(vector)llList2Vector((list)POSRegion3,(integer)i))];
                    }
                }
                float results = llListStatistics(LIST_STAT_MIN,numbers);
                integer RES = llListFindList(numbers,(list)[results]);
                finishs = llList2Vector((list)POSRegion3,(integer)RES);
                okNA=RES;
                llMoveToTarget(finishs,SPEED_LINDEN_REALMS2); 
            }
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
    else
    {
        llStopMoveToTarget();
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
        if(perm & PERMISSION_DEBIT)
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
        if(level & CONTROL_FWD)
        {
            llApplyImpulse(<2.1,0,0>,TRUE);
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
        if(DX==0)
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
            }
            // aca van todos los peligros q caga el movimiento
        }
        else
        {
            Regions = ["Portal Park 2"];
            llSleep(0.1);
            llSensorRemove();
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