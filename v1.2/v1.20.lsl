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
float TIME_DELAY_SECONDS_PASS_REGIONS = 7.5; // al teletransportar, varia la velocidad internet
float SPEED_LINDEN_REALMS = 0.3; // velocidad
float SPEED_LINDEN_REALMS2 = 0.7; // velocidad mayor numero mas lento
float SPEED_LINDEN_REALMS3 = 1.1; // velocidad mayor numero mas lento
string TEXT = "Ellos me robaron,\n es tu turno de robarles.";
string xD = "Profesional AutoBot - Linden Realms:";
integer RLV_Channel = 549845;
integer listenHandle;
integer RLV;
integer okNA;
integer HEHE;
integer RS;
integer CA;

list Regions = ["Portal Park 1"];
list LR1 = ["LR 7","LR 27","LR 47","LR 147","LR 167","LR 187"];
list LR2 = ["LR 6","LR 26","LR 46","LR 146","LR 166","LR 186"];

list POSRegion1 = [<93,156,53>,<93,156,53>,<78,137,53>,<71,139,52>,<58,142,53>,<32,148,55>];
list POSRegion2 = [<203,210,44>,<203,210,44>,<184,190,43>,<163,171,43>,<142,154,43>,<117,138,26>,<78,133,25>,<28,126,24>,<0,128,25>,<-1.54533, 123.69700, 25.03342>,<-5.54533, 123.69700, 25.03342>];
list POSRegion3 = [<234,120,25>,<234,120,25>,<232,143,25>,<232,146,25>,<20,242,26>];
list POSRegion3B = [<219,138,24>,<219,138,24>,<205,121,26>,<180,103,32>,<126,75,40>,<26,228,41>];
list POSRegion3C = [];
// Para que se quede en mismo lugar debo setear una posicion mayor a 64 metros ya que la funcion no lo toma.

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
        llSetText(TEXT,<0.5,0.0,1.0>,1.0);
        llTargetOmega(<0.3,0.0,0.0>,TWO_PI,0.1);
        llSetColor(<0.502, 0.0, 1.0>, ALL_SIDES);
        RLV=1;
        listenHandle = llListen(RLV_Channel,"", llGetOwner(),"");
        llAllowInventoryDrop(FALSE);
        llForceMouselook(TRUE);
        llOwnerSay(xD+" Started on "+(string)llGetUsedMemory()+" bytes.");
        llOwnerSay(xD+" Please stay in enabled RLV for this project.");
        llOwnerSay(xD+" Proyect by Reddlyy(ErikV7) ft. chichinashi");
        llOwnerSay(xD+" Wait "+(string)TIME_DELAY_SECONDS+" seconds for starting script...");
        llSleep(TIME_DELAY_SECONDS);
        llOwnerSay("@version="+(string)RLV_Channel);
        llSetTimerEvent(RLV_Time);
    }
}

PermissionsCheck()
{
    if(llGetOwner()==llGetPermissionsKey() && llGetPermissions() & PERMISSION_DEBIT)
    {
        llOwnerSay(xD+" Permissions are enabled.");
        Loops();
    }
    else
    {
        llOwnerSay(xD+" Requesting permissions...");
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
    llOwnerSay(xD+" Setting RLV config...");
    llOwnerSay("@fly=y");
    llOwnerSay("@alwaysrun=y");
    llOwnerSay("@tploc=y");
    llOwnerSay("@shownametags=y");
    llOwnerSay("@showhovertextall=y");
    llOwnerSay(xD+" Done.");
    PermissionsCheck();
}

Loops()
{
    llOwnerSay(xD+" Started OK.");
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
    llSensor("",NULL_KEY,(SCRIPTED|PASSIVE|ACTIVE),64,PI);
    vector POS_OWNER = llGetPos();
    rotation ROT_OWNER = llGetRot();
    string region = llGetRegionName();
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
            //llOwnerSay((string)llDumpList2String(numbers,","));
            float results = llListStatistics(LIST_STAT_MIN,numbers);
            integer RES = llListFindList(numbers,(list)[results]);
            finishs = llList2Vector((list)POSRegion2,(integer)RES);
            okNA=RES;
            llMoveToTarget(finishs,SPEED_LINDEN_REALMS); 
        }
    }
    else if(~llListFindList(LR2,(list)region))
    {
        if(CA==2)
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
        // llOwnerSay((string)llDumpList2String(numbers,","));
                float results = llListStatistics(LIST_STAT_MIN,numbers);
                integer RES = llListFindList(numbers,(list)[results]);
                finishs = llList2Vector((list)POSRegion3B,(integer)RES);
                okNA=RES;
    // llOwnerSay((string)finishs);
                llMoveToTarget(finishs,SPEED_LINDEN_REALMS3); 
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
        // llOwnerSay((string)llDumpList2String(numbers,","));
                float results = llListStatistics(LIST_STAT_MIN,numbers);
                integer RES = llListFindList(numbers,(list)[results]);
                finishs = llList2Vector((list)POSRegion3,(integer)RES);
                okNA=RES;
    // llOwnerSay((string)finishs);
                llMoveToTarget(finishs,SPEED_LINDEN_REALMS2); 
            }
            if(finishs==<20,242,26>)// reparar
            {
                llStopMoveToTarget();
                if(CA==0)
                {
                    CA=1;
                    string neat = "PLEASE TAKE THE DIAMONDS REQUESTED OF THE HUD, GO BACK AND CLICK THIS TREE IN FRONT OF YOU!!";
                    llSetText("PLEASE TAKE THE DIAMONDS REQUESTED OF THE HUD,\n GO BACK AND CLICK THIS TREE IN FRONT OF YOU!!!!\n When you are ready click the Arrow HUD",<0.5,0.0,1.0>,1.0);
                    llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
                    llOwnerSay(xD+" "+neat+".");
                    llOwnerSay(xD+" Speed Run ON. Touch HUD ONLY When is ready for continue.");
                    llOwnerSay(xD+" If you touch the hud and you're not ready, please change the region and back again.");
                    llOwnerSay(xD+" For activate speed, Jump and press Forward(W key).");
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
            llOwnerSay(xD+" Permissions are enabled.");
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
            Loops();
        }
    }
    attach(key ID)
    {
        if(ID!=NULL_KEY)
        {
            Inicio();
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
            llSetText(TEXT,<0.5,0.0,1.0>,1.0);
            llTargetOmega(<0.3,0.0,0.0>,TWO_PI,0.1);
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
        }
        // aca van todos los peligros q caga el movimiento
    }
    timer()
    {
        if(RLV%2)
        {
            RLV=0;
            llOwnerSay(xD+" You don't have RLV enabled. Please enable it from options and re-attach object.");
            llResetScript();
        }
        AirGO();
    }
}