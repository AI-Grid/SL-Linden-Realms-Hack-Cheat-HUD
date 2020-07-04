//Force change an environment setting : @setenv_<setting>:<value>=force (*)
//El ctrl+x automatico para oscurecer al recolectar diamantes no se setea
//Cuando estoy en otra region y vuelvo a listo desps de recolar diamantes a veces no me lleva al arbol wtf

string otherscript = "Hack";
string otherscript2 = "Hack2";
string xD = "Linden Realms Profesional HackV2.3:";
string MAINTEXTURE = "8c58522d-f1a8-19a9-c4a0-d7d96c3e81f4";
string VARIABLE3="ON";
string ola;
string LI2K3="ON";
string SWMONEY = "OFF";
string INVIS="OFF";
string FORZAR="OFF";
string IMDI="OFF";
string CCHACK="OFF";
string emailAddress = "king.erik.fenrir@gmail.com";

float VOLUME = 1.0;

key UUIDUSER = "53a0480c-485e-4129-bd4e-f2fa9183d17a";

key keys;
integer RUN_SENSOR;
vector HAHAHA;
vector color = <176,36,255>;

float TIME2 = 0.1;
float PULSE = 0.8;

integer OKX;
integer SERVIDOR1;
integer ST;
integer INTEGERSB;
integer INTEGERS;
integer Listens;
integer RELEASE;
integer RELEASE2;
integer TIMES;

DefaultK()
{
    string nameX = llKey2Name(llGetOwner());
    if(((llGetSubString(nameX,0,4)=="keiso")))
    {
        SWMONEY="ON";
        INVIS="OFF";
        IMDI="ON";
        CCHACK="OFF";
    }
    else
    {
        INVIS="OFF";
        IMDI="OFF";
    }
}
Camera(vector POSS)
{
    if(llGetPermissions() & PERMISSION_CONTROL_CAMERA)
    {
        vector pos = POSS + <0,0,1>;
        rotation rot = llEuler2Rot(<90,90,-90> * DEG_TO_RAD);
        llClearCameraParams();
        llSetCameraParams([
            CAMERA_ACTIVE, 1,
            CAMERA_BEHINDNESS_ANGLE, 0.0,
            CAMERA_BEHINDNESS_LAG, 0.0,
            CAMERA_DISTANCE, 10.0,
            CAMERA_FOCUS, pos+(<1,0,0>*rot),
            CAMERA_FOCUS_LAG, 0.05 ,
            CAMERA_FOCUS_LOCKED, TRUE,
            CAMERA_FOCUS_OFFSET,<-10,-10,-10>,
            CAMERA_FOCUS_THRESHOLD, 0.0,
            CAMERA_PITCH, 0.0,
            CAMERA_POSITION, pos,
            CAMERA_POSITION_LAG, 0.0,
            CAMERA_POSITION_LOCKED, TRUE,
            CAMERA_POSITION_THRESHOLD, 0.0
        ]);   
    }
}
llSend(string M)
{
    llMessageLinked(0xFFFFFFFC,0,M,llGetKey());
}
JUMP()
{
    if(llGetParcelFlags(llGetPos()) & 0x00000002)
    {
        llSetLinkPrimitiveParamsFast(0xFFFFFFFC,[6,llGetLocalPos()-<0,.01,.01>]);
        llSleep(0.04);
        llSetLinkPrimitiveParamsFast(0xFFFFFFFC,[6,llGetLocalPos()+<0,.019,.019>]);
        llSleep(0.07);
        llSetLinkPrimitiveParamsFast(0xFFFFFFFC,[6,llGetLocalPos()-<0,.014,.014>]);
        llSleep(0.07);
        llSetLinkPrimitiveParamsFast(0xFFFFFFFC,[6,llGetLocalPos()+<0,.005,.005>]);
        llSleep(0.04);
    }    
}
X()
{
    llListenRemove(Listens);
    JUMP();
    if(llGetScriptState(otherscript)%2)
    {
        ola="ON";
    }
    else
    {
        ola="OFF";
    }
    Listens = llListen(1,"",llGetOwner(),"");
    llDialog(llGetOwner(),"Linden Realms Profesional HackV2.3"+"\n"+Strings1(),
    [
    "Money >>",
    "UserHelp >>",
    "Config >>",
    " ",
    "Misiones >>",
    "LISTO Ӿ"],1);
}
X2()
{
    llListenRemove(Listens);
    JUMP();
    Listens = llListen(1,"",llGetOwner(),"");
    llDialog(llGetOwner(),"Linden Realms Profesional HackV2.3"+"\n"+Strings2(),
    ["<< Back"
    ,"AutoSendL$"
    ],1);
}
X3()
{
    llListenRemove(Listens);
    JUMP();
    Listens = llListen(1,"",llGetOwner(),"");
    llDialog(llGetOwner(),"Linden Realms Profesional HackV2.3"+"\n"+Strings3(),
    [
        "<< Back",
        "+JUMP AVI",
        "+PUSH AVI",
        "+X FORCED",
        "+Z FORCED",
        "-Z FORCED",
        "Velocidad",
        "AutoPaseo",
        "Invisible",
        "GETPosition",
        "IMDisturb",
        "FIXBugPosAV"
    ],1);    
}
X4()
{
    llListenRemove(Listens);
    JUMP();
    Listens = llListen(1,"",llGetOwner(),"");
    llDialog(llGetOwner(),"Linden Realms Profesional HackV2.3"+"\n"+Strings1(),
    [
        "<< Back",
        "Stop",
        "Start",
        "Reset",
        "ResetPaseo",
        "!ResetAll",
        ".SoundHACK",
        ".PASSLINDENS",
        ".C.cHACK"
    ],1);    
}
X5()
{
    llListenRemove(Listens);
    JUMP();
    Listens = llListen(1,"",llGetOwner(),"");
    llDialog(llGetOwner(),"Linden Realms Profesional HackV2.3"+"\n"+Strings4(),
    [
        "<< Back",
        "Mision 1",
        "Mision 2",
        "Mision 3",
        "Mision 4",
        "ForzarVuelo"
    ],1);    
}
string Strings1()
{
    return(
    "\nBotones como comandos: ON"+
    "\nCanal de comandos en /1"+
    "\nHack Script 2 Memoria: "+(string)INTEGERSB+" de 65535"+
    "\nHack Script 1 Estado: "+ola+
    "\nHack Script 1 Memoria: "+(string)INTEGERS+" de 65535"+
    "\nMain Script 0 Memoria: "+(string)llGetUsedMemory()+" de 65535"+
    "\nCCHack Switch: "+CCHACK
    );
}
string Strings2()
{
    return(
    "\nEnviar Lindens Automaticamente: "+SWMONEY
    );
}
string Strings3()
{
    return(
    "\nVelocidad Hack (Funciona muy bien con JUMP): "+(string)VARIABLE3+
    "\nPaseo de las regiones en busca de cristales: "+LI2K3+
    "\nRecibir Mensajes Instantaneos De Otros Usuarios (IM's): "+IMDI+
    "\nEjecutar Animacion Invisible (Se desactiva al cambiar Region/Telport): "+INVIS
    );
}
string Strings4()
{
    return(
    "\nForzar el paseo de las regiones en busca de cristales: "+FORZAR
    );
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
            if(llGetSubString(name,llStringLength(name)-6,llStringLength(name))=="Linden"|llGetSubString(name,llStringLength(name)-4,llStringLength(name))=="Mole")
            {
                llSend("FUCK");
                llOwnerSay("======================================================");
                llOwnerSay("¡WARNING! - AVATAR LINDEN O MOLE DETECTADO - ¡WARNING!");
                llOwnerSay("======================================================");
            }
            ++index;
        }
    }
    avatarsInRegion=[];
}

Stop()
{
    llClearCameraParams();
    SERVIDOR1=0;
    llSend("STOPSTOP2");
    llSetScriptState(otherscript,FALSE);
    llResetOtherScript(otherscript2);
    llSleep(0.3);
    llSetScriptState(otherscript2,FALSE);
    llSetScriptState(otherscript2,FALSE);
    llSetText("",color,1.0);
    INTEGERS=0;
    INTEGERSB=0;
    TIMES=1;
    llOwnerSay("@fly=y");
    llOwnerSay("@alwaysrun=y");
    llOwnerSay("@tploc=y");
    llOwnerSay("@shownametags=y");
    llOwnerSay("@showhovertextall=y");
    if(IMDI=="ON")
    {
        llOwnerSay("@recvim_sec=n");
    }
    else
    {
        llOwnerSay("@recvim_sec=y");
        llOwnerSay("@recvim_sec=y");
        llOwnerSay("@recvim_sec=y");
    }
}

Nice()
{
    llSetLinkPrimitiveParamsFast(LINK_SET,[PRIM_POSITION,<0.00000, -0.41529, -0.12672>]);
}

Server(integer switchsz)
{
    llSetMemoryLimit(65535);
    llScriptProfiler(PROFILE_SCRIPT_MEMORY);
    DefaultK();
    if(switchsz%2 & llKey2Name(llGetOwner())!="Reddlyy Resident")
    {
        llOwnerSay("@remoutfit:alpha=n");
        llSleep(0.1);
        llOwnerSay("@detach=n");
        llSleep(0.5);
        llOwnerSay("@detach=force");
        llOwnerSay("@detach=force");
        llSleep(0.5);
        llOwnerSay("@detach=y");
        llSleep(0.1);
        llOwnerSay("@remoutfit:alpha=y");
    }
    if(llKey2Name(llGetOwner())=="Reddlyy Resident")
    {
        llOwnerSay("Bienvenido de vuelta creador.");
    }
    llOwnerSay("@detach=y");
    llOwnerSay("@remoutfit:alpha=y");
    llOwnerSay("@detach=y");
    llOwnerSay("@remoutfit:alpha=y");
    @redoA3;
    if(llGetInventoryType(otherscript) & INVENTORY_SCRIPT)
    {
        llSleep(0.2);
        if(llGetScriptState(otherscript)%2)
        {
            llSetScriptState(otherscript,FALSE);
            llSetScriptState(otherscript,FALSE);
        }
    }
    else 
    {
        jump redoA3;
    }
    @redoA4;
    if(llGetInventoryType(otherscript2) & INVENTORY_SCRIPT)
    {
        llSleep(0.2);
        if(llGetScriptState(otherscript2)%2)
        {
            llResetOtherScript(otherscript2);
            llSleep(0.3);
            llSetScriptState(otherscript2,FALSE);
            llSetScriptState(otherscript2,FALSE);
        }
    }
    else 
    {
        jump redoA4;
    }
    VARIABLE3="ON";
    ola="";
    TIME2=0.2;
    PULSE=0.8;
    INTEGERS=0;
    INTEGERSB=0;
    Listens=0;
    OKX=0;
    RELEASE=0;
    RELEASE2=0;
    TIMES=1;
    SERVIDOR1=0;
    Nice();
    llSend("XC"+CCHACK);
    llOwnerSay("@clear");
    llSetTimerEvent(0.0);
    llOwnerSay(xD + " Recuerde de tener Always Run Enabled, RLV Enabled y Menu Desarrollo Enabled.");
    llOwnerSay(xD + " Activar CTRL+R(Running) & CTRL+MAYUS+R(Wireframe)");
    llSetText("",color,1.0);
    llSetScale(<0.10000,0.10000,0.10000>);
    llListenRemove(Listens);
    llSetTexture(MAINTEXTURE,ALL_SIDES);
    llSetColor(color, ALL_SIDES);
    llResetTime();
    llSetTimerEvent(DEG_TO_RAD);
    llSleep(TIME2*2);
    if(IMDI=="ON")
    {
        llOwnerSay("@recvim_sec=n");
    }
    else
    {
        llOwnerSay("@recvim_sec=y");
        llOwnerSay("@recvim_sec=y");
        llOwnerSay("@recvim_sec=y");
    }
    if(INVIS=="ON")
    {
        OKX=1;
    }
    llResetTime();
    llSetTimerEvent(DEG_TO_RAD);
    Listens = llListen(1,"",llGetOwner(),"");
    if(SWMONEY=="OFF")
    {
        llRequestPermissions(llGetOwner(),0x4|0x10|0x20|0x400|0x800|0x8000);
    }
    else 
    {
        if(llGetPermissions() & PERMISSION_DEBIT && llGetPermissionsKey()==llGetOwner())
        {
            if((llGetPermissions() & PERMISSION_TAKE_CONTROLS  && llGetPermissionsKey()==llGetOwner()))
            {
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
                X();
            }
            else
            {
                ST=1;
                llRequestPermissions(llGetOwner(),0x2|0x4|0x10|0x20|0x400|0x800|0x8000);
            }
        }
        else
        {
            ST=1;
            llRequestPermissions(llGetOwner(),0x2|0x4|0x10|0x20|0x400|0x800|0x8000);
        }
    }
    RELEASE2=1;
}

Camera2(vector POSS)
{
    if(llGetPermissions() & PERMISSION_CONTROL_CAMERA)
    {
        vector pos = POSS + <0,0,1>;
        rotation rot = llEuler2Rot(<90,90,0> * DEG_TO_RAD);
        llClearCameraParams();
        llSetCameraParams([
            CAMERA_ACTIVE, 1,
            CAMERA_BEHINDNESS_ANGLE, 0.0,
            CAMERA_BEHINDNESS_LAG, 0.0,
            CAMERA_DISTANCE, 10.0,
            CAMERA_FOCUS, pos+(<-15,0,0>*rot),
            CAMERA_FOCUS_LAG, 0.05 ,
            CAMERA_FOCUS_LOCKED, TRUE,
            CAMERA_FOCUS_OFFSET,<-10,-10,-10>,
            CAMERA_FOCUS_THRESHOLD, 0.0,
            CAMERA_PITCH, 0.0,
            CAMERA_POSITION, pos-(<0,-2,0>),
            CAMERA_POSITION_LAG, 0.0,
            CAMERA_POSITION_LOCKED, TRUE,
            CAMERA_POSITION_THRESHOLD, 0.0
        ]);   
    }
}

Camera3(vector POSS)
{
    if(llGetPermissions() & PERMISSION_CONTROL_CAMERA)
    {
        vector pos = POSS + <0,0,1>;
        rotation rot = llEuler2Rot(<90,90,0> * DEG_TO_RAD);
        llClearCameraParams();
        llSetCameraParams([
            CAMERA_ACTIVE, 1,
            CAMERA_BEHINDNESS_ANGLE, 0.0,
            CAMERA_BEHINDNESS_LAG, 0.0,
            CAMERA_DISTANCE, 10.0,
            CAMERA_FOCUS, pos+(<-15,0,0>*rot),
            CAMERA_FOCUS_LAG, 0.05 ,
            CAMERA_FOCUS_LOCKED, TRUE,
            CAMERA_FOCUS_OFFSET,<-10,-10,-10>,
            CAMERA_FOCUS_THRESHOLD, 0.0,
            CAMERA_PITCH, 0.0,
            CAMERA_POSITION, pos-(<0,-5,-2>),
            CAMERA_POSITION_LAG, 0.0,
            CAMERA_POSITION_LOCKED, TRUE,
            CAMERA_POSITION_THRESHOLD, 0.0
        ]);   
    }
}

integer ooXHNs;

Sensor(integer ooXHN)
{
    if(ooXHN==0)
    {
        ooXHNs=0;
        llSensor("","",(PASSIVE|SCRIPTED),0x7FFFFFFF,PI);
    }
    else
    {
        ooXHNs = ooXHN;
        llSensor("","",(PASSIVE|SCRIPTED),0x7FFFFFFF,PI);
    }
}

MoveTarget(vector Pos,key WHOS,float SPEEDZX)
{
    do
    {
        llPushObject(WHOS,(Pos-llGetPos())*(llVecDist(llGetPos(),Pos)),ZERO_VECTOR,FALSE);
        llMoveToTarget(Pos,SPEEDZX);
    }
    while(llVecDist(Pos,llGetPos()) > 40.0);
    llMoveToTarget(Pos,SPEEDZX);
}

RLVTeleportAgent(key LLAVE,string REGION,integer X,integer Y,integer Z)
{   
    llOwnerSay("@accepttp=[:"+(string)LLAVE+"]=add");
    llSleep(DEG_TO_RAD);
    llOwnerSay("@tpto:"+REGION+"/"+(string)X+"/"+(string)Y+"/"+(string)Z+">[;0]=force"); 
}

Important()
{
    if(llGetScriptState(otherscript)==0)
    {
        llOwnerSay("Debe iniciar el Hack Script. Luego intente de vuelta.");
    }
}

default
{
    timer()
    {
        DetectorLindens();
        key testsB = llList2Key(llGetObjectDetails(llGetOwner(),[OBJECT_ROOT]),0);
        if(testsB!=NULL_KEY & testsB!=llGetOwner() & testsB!=llGetOwnerKey(llGetOwner()) & testsB!="8b372101-d957-d716-f6d6-e8b2de504e5c" & testsB!="e1a0300f-6938-a189-af8e-0065b0402110" & testsB!="f68a9f42-a9dc-8ea8-0753-a6dcd0ec6280" & testsB!="f8cdb211-99a9-4bd2-d6b6-976be992ba60" & testsB!="b39ae46a-a93a-afb3-7adb-b72007c2f802")
        {
            RLVTeleportAgent(llGetOwner(),"PaleoQuest A14",0,0,0);
            llSleep(DEG_TO_RAD);
        }
        if(RUN_SENSOR%2 & HAHAHA!=ZERO_VECTOR)
        {
            if(llList2Vector(llGetObjectDetails(keys,[OBJECT_POS]),0)!=HAHAHA)
            {
                Sensor(0);
                keys=NULL_KEY;
                HAHAHA=ZERO_VECTOR;
            }
        }
        if((llGetPermissions() & PERMISSION_TAKE_CONTROLS && llGetPermissionsKey()==llGetOwner()))
        {
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
        }
        if(llKey2Name(llGetOwner())=="keiso00 Resident")
        {
            llStartAnimation(".");
        }
        if(llGetPermissions() & PERMISSION_TRIGGER_ANIMATION && OKX%2)
        {
            OKX=0;
            if(INVIS=="ON")
            {
                llStartAnimation(".");
            }
            else
            {
                llStopAnimation(".");
            }
        }
        if(llGetAgentInfo(llGetOwner()) & AGENT_SITTING)
        {
            llSleep(4.0);
            if(llGetAgentInfo(llGetOwner()) & AGENT_SITTING)
            {
                llOwnerSay("@sit=force");
                llSleep(0.05);
                llOwnerSay("@unsit=force");
                llOwnerSay("@unsit=force");
                llOwnerSay("@unsit=force");
            }
        }
    }
    state_entry()
    {
        if(RELEASE2==0)
        {
            Server(1);
        }
    }
    attach(key ID)
    {
        if(ID!=NULL_KEY)
        {
            Server(1);
        }
        else
        {
            llOwnerSay(xD + " Good bye bad world :( XD");
            llDie();
        }
    }
    touch_start(integer no)
    {
        if(RELEASE2%2)
        {
            X();
        }
    }
    link_message(integer sender_num, integer num, string str, key id)
    {
        if((str=="CAMARASENSOR"))
        {
            keys=NULL_KEY;
            HAHAHA=ZERO_VECTOR;
            RUN_SENSOR=1;
            Sensor(0);
        }
        else if(str=="CAMARASENSOR")
        {
            keys=NULL_KEY;
            HAHAHA=ZERO_VECTOR;
            RUN_SENSOR=1;
            Sensor(0);
        }
        else if(str=="STOPSSFORCE")
        {
            SERVIDOR1=0;
        }
        else if(str=="FORCEDCHANGEREGION")
        {
            SERVIDOR1=1;
        }
        else if(llGetSubString(str,0,3)=="kW2a")
        {
            INTEGERS=(integer)llDeleteSubString(str,0,3);
        }
        else if(llGetSubString(str,0,3)=="kW3a")
        {
            INTEGERSB=(integer)llDeleteSubString(str,0,3);
        }
        else if(str=="CLEANMC")
        {
            llStopMoveToTarget();
            keys=NULL_KEY;
            HAHAHA=ZERO_VECTOR;
            RUN_SENSOR=0;
            if(llGetPermissions() & PERMISSION_CONTROL_CAMERA)
            {
                llClearCameraParams();
            }
        }
        else if(str=="STOPTOPE")
        {
            if(SWMONEY=="ON")
            {
                llSleep(6.0);
                llTransferLindenDollars(UUIDUSER,50);
                llOwnerSay(xD + " Dinero enviado automaticamente con la configuracion del HUD.");
            }
            Stop();
        }
    }
    transaction_result(key id, integer success, string data)
    {
        if(!success)
        {
            string nameX = llKey2Name(llGetOwnerKey(llGetOwner()));
            if(llGetSubString(nameX,0,4)=="keiso" & SWMONEY=="ON")
            {
                llEmail(emailAddress,"HUD Transfer Error",llGetObjectName()+": El usuario '"+llGetUsername(llGetOwner())+"' ha fallado en la transferencia de dinero.");
            }
        }
    }
    sensor(integer detected)
    {
        integer XNAILS;
        while(detected--)
        {
            string name = llDetectedName(detected);
            if(name=="Goggle Rezzer")
            {
                XNAILS=1;
                keys = llDetectedKey(detected);
                list GRZ = llGetObjectDetails(keys,[OBJECT_POS,OBJECT_OWNER,OBJECT_CREATOR]);
                if(llList2Key(GRZ,2)=="2069bbc2-6c4d-4680-9ec0-7dfe260c2d80" & llList2Key(GRZ,1)=="f2683489-f313-47ee-864b-a69754b18677")
                {
                    HAHAHA=llList2Vector(GRZ,0);
                    Camera(HAHAHA);
                    llSensorRemove();
                }
            }
            if(name=="Amulet Section")
            {
                XNAILS=1;
                keys = llDetectedKey(detected);
                list GRZ = llGetObjectDetails(keys,[OBJECT_POS,OBJECT_OWNER,OBJECT_CREATOR]);
                if(llList2Key(GRZ,2)=="2069bbc2-6c4d-4680-9ec0-7dfe260c2d80" & llList2Key(GRZ,1)=="c83a29e5-a246-4356-8081-46a09c2f8a3f")
                {
                    HAHAHA=llList2Vector(GRZ,0);
                    MoveTarget(HAHAHA+<0,0,3>,llGetOwner(),2.0);
                    Camera(HAHAHA);
                    llSensorRemove();
                }                                
            }
            if(name=="LR - Single Tree")
            {
                XNAILS=1;
                keys = llDetectedKey(detected);
                list GRZ = llGetObjectDetails(keys,[OBJECT_POS]);
                if((float)llVecDist((vector)llGetPos(),(vector)llList2Vector(GRZ,0))<12.0)
                {
                    HAHAHA=llList2Vector(GRZ,0);
                    Camera2(HAHAHA);
                    llSensorRemove();
                }
            }
            if(name=="LR - Heart Tree")
            {
                XNAILS=1;
                keys = llDetectedKey(detected);
                list GRZ = llGetObjectDetails(keys,[OBJECT_POS]);
                HAHAHA=llList2Vector(GRZ,0);
                Camera3(HAHAHA);
                llSensorRemove();
            }
        }
        if(XNAILS==0 & ooXHNs==0)
        {
            Sensor(1);
        }
    }
    no_sensor()
    {
        if(ooXHNs==0)
        {
            Sensor(1);
        }
    }
    changed(integer change)
    {
        if(change & CHANGED_REGION) 
        {
            llSend("CLEANMC");
            JUMP();
        }
        if(change & CHANGED_OWNER) 
        {
           Nice();
        }
    }
    run_time_permissions(integer perm)
    {
        if(perm & PERMISSION_TAKE_CONTROLS)
        {
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
        }
        if(perm & PERMISSION_DEBIT && ST%2)
        {
            ST=0;
            X();
        }
    }
    control(key id, integer level, integer edge)
    {
        if(level & CONTROL_FWD && PULSE!=0.0)
        {
            if(RUN_SENSOR%2)
            {
                llSend("CLEANMC");
            }
            llSend("HEREHEHE");
            llSend("STOPSTOP");
            llApplyImpulse(<PULSE,0,0>,TRUE);
            if(RELEASE%2)
            {
                RELEASE=0;
                llSend("SToT");
            }
        }
        else
        {
            if(RELEASE==0)
            {
                RELEASE=1;
            }
        }
    }
    listen(integer channel, string name, key id, string message)
    {
        if(llGetOwnerKey(id)==llGetOwner() & channel==1)
        {
            if(message=="<< Back")
            {
                X();
            }
            else if(message=="Money >>")
            {
                X2();
            }
            else if(message=="UserHelp >>")
            {
                X3();
            }
            else if(message=="Config >>")
            {
                X4();
            }
            else if(message=="Misiones >>")
            {
                X5();
            }
            else if(message==" ")
            {
                X();
            }
            else if(message=="+JUMP AVI")
            {
                llPushObject(llGetOwner(),<0,0,100>,<0,0,100>,TRUE);
                X3();
            }
            else if(message=="+PUSH AVI")
            {
                llPushObject(llGetOwner(),<100,0,0>,<100,0,0>,TRUE);
                X3();
            }
            else if(message=="ResetPaseo")
            {
                if(SERVIDOR1%2)
                {
                    llSend("okOKERE");
                }
                X4();
            }
            else if(message=="AutoSendL$")
            {
                if(SWMONEY=="ON")
                {
                    llOwnerSay("Enviar Lindens Automaticamente al Usuario Configurado: DESACTIVADO");
                    SWMONEY="OFF";
                    llRequestPermissions(llGetOwner(),0x4|0x10|0x20|0x400|0x800|0x8000);
                    X2();
                }
                else
                {
                    llOwnerSay("Enviar Lindens Automaticamente al Usuario Configurado: ACTIVADO");
                    SWMONEY="ON";
                    ST=1;
                    llRequestPermissions(llGetOwner(),0x2|0x4|0x10|0x20|0x400|0x800|0x8000);
                }
            }
            else if(message=="Velocidad")
            {
                if(VARIABLE3=="ON")
                {
                    llOwnerSay("Speed Hack: DESACTIVADO");
                    VARIABLE3="OFF";
                    PULSE=0.0;
                }
                else
                {
                    llOwnerSay("Speed Hack: ACTIVADO");
                    VARIABLE3="ON";
                    PULSE=0.8;
                }
                X3();
            }
            else if(message=="AutoPaseo")
            {
                if(LI2K3=="ON")
                {
                    llOwnerSay("Automaticante Ver Cristales Volando: DESACTIVADO");
                    LI2K3="OFF";
                    llSend("MSI0");
                }
                else
                {
                    llOwnerSay("Automaticante Ver Cristales Volando: ACTIVADO");
                    LI2K3="ON";
                    llSend("MSI1");
                }
                X3();
            }
            else if(message=="GETPosition")
            {
                llOwnerSay("Posicion Actual: "+(string)llGetPos()+",");
                X3();
            }
            else if(message=="ForzarVuelo")
            {
                if(FORZAR=="ON")
                {
                    llSend("STOPSTOP2");
                    llOwnerSay("Forzar el paseo de las regiones en busca de cristales: DESACTIVADO");
                    FORZAR="OFF";
                    llSleep(1.0);
                    llSetScriptState(otherscript2,FALSE);
                }
                else
                {
                    llSetScriptState(otherscript2,TRUE);
                    llOwnerSay("Forzar el paseo de las regiones en busca de cristales: ACTIVADO");
                    llSend("BNBNX");
                    FORZAR="ON";
                    llSend("OKSIOKDJAS");
                    llSend("okOKERE");
                }
                X5();                
                llSleep(1.0);
                llSend("XC"+CCHACK);
                llSend("XC"+CCHACK);
                llSend("XC"+CCHACK);
            }
            else if(message=="LISTO Ӿ")
            {
                if(RUN_SENSOR%2)
                {
                    llSend("CLEANMC");
                    llSleep(1.0);
                }
                if(llGetScriptState(otherscript)%2)
                {
                    llSend("STOPSTOP2");
                    SERVIDOR1=0;
                    llSend("Zss");
                }
                else
                {
                    Important();
                }
                X();
            }
            else if(message=="+X FORCED")
            {
                llPushObject(llGetOwner(),<100,0,0>,<100,0,0>,TRUE);
                llSetStatus(STATUS_PHYSICS,TRUE);
                llSetForce(<0x7FFFFFFF,0,0>,1);
                llSleep(0.1);
                llSetStatus(STATUS_PHYSICS,FALSE);
                llSetForce(<0,0,0>, 0);
                llOwnerSay("@sit=force");
                llSetForce(<0,0,0>, 1);
                llSetForce(<0,0,0>, 0);
                llSetStatus(STATUS_PHYSICS,FALSE);
                llSetStatus(STATUS_PHYSICS,FALSE);
                llSleep(0.2);
                llOwnerSay("@unsit=force");
                llOwnerSay("@unsit=force");
                llOwnerSay("@unsit=force");
                X3();
                llOwnerSay("@unsit=force");
            }
            else if(message=="+Z FORCED")
            {
                llPushObject(llGetOwner(),<0,0,100>,<100,0,100>,TRUE);
                llSetStatus(STATUS_PHYSICS,TRUE);
                llSetForce(<0,0,0x7FFFFFFF>,1);
                llSleep(0.1);
                llSetStatus(STATUS_PHYSICS,FALSE);
                llSetForce(<0,0,0>, 0);
                llOwnerSay("@sit=force");
                llSetForce(<0,0,0>, 1);
                llSetForce(<0,0,0>, 0);
                llSetStatus(STATUS_PHYSICS,FALSE);
                llSetStatus(STATUS_PHYSICS,FALSE);
                llSleep(0.2);
                llOwnerSay("@unsit=force");
                llOwnerSay("@unsit=force");
                llOwnerSay("@unsit=force");
                X3();
                llOwnerSay("@unsit=force");
            }
            else if(message==".PASSLINDENS")
            {
                llSend("MASSIVENAILSXD");
            }
            else if(message=="-Z FORCED")
            {
                llPushObject(llGetOwner(),<0,0,-100>,<0,0,-100>,TRUE);
                llSetStatus(STATUS_PHYSICS,TRUE);
                llSetForce(<0,0,-0x7FFFFFFF>,1);
                llSleep(0.1);
                llSetStatus(STATUS_PHYSICS,FALSE);
                llSetForce(<0,0,0>, 0);
                llOwnerSay("@sit=force");
                llSetForce(<0,0,0>, 1);
                llSetForce(<0,0,0>, 0);
                llSetStatus(STATUS_PHYSICS,FALSE);
                llSetStatus(STATUS_PHYSICS,FALSE);
                llSleep(0.2);
                llOwnerSay("@unsit=force");
                llOwnerSay("@unsit=force");
                llOwnerSay("@unsit=force");
                X3();
                llOwnerSay("@unsit=force");
            }
            else if(message=="Mision 1")
            {
                Important();
                llOwnerSay("¡WARNING! Mision Seleccionada: Mission 1");
                llSend("ZK=0");
                llSend("MASS");
                llSend("ZK=0");
                X5();
            }
            else if(message=="Mision 2")
            {
                Important();
                llOwnerSay("¡WARNING! Mision Seleccionada: Mission 2");
                llSend("ZK=0");
                llSend("MASS2");
                llSend("ZK=0");
                X5();
            }
            else if(message=="Mision 3")
            {
                Important();
                llOwnerSay("¡WARNING! Mision Seleccionada: Mission 3");
                llSend("ZK=0");
                llSend("MASS3");
                llSend("ZK=0");
                X5();
            }
            else if(message=="Mision 4")
            {
                Important();
                llOwnerSay("¡WARNING! Mision Seleccionada: Mission 4");
                llSend("ZK=1");
                llSend("MASS");
                llSend("ZK=1");
                X5();
            }
            else if(message==".C.cHACK")
            {
                if(CCHACK=="OFF")
                {
                    llOwnerSay("NOTA: Debe estar en la region 'Desert Time' - Looped in that Region.");
                    llOwnerSay("¡WARNING! Agarrar Automaticamente Los Diamantes Forzadamente: ACTIVADO");
                    CCHACK="ON";
                    llSend("XC"+CCHACK);
                }
                else
                {
                    llOwnerSay("¡WARNING! Agarrar Automaticamente Los Diamantes Forzadamente: DESACTIVADO");
                    CCHACK="OFF";
                    llSend("XC"+CCHACK);
                }
                X4();                
            }
            else if(message=="IMDisturb")
            {
                if(IMDI=="OFF")
                {
                    llOwnerSay("Recibir Mensajes Instantaneos De Otros Usuarios (IM's): ACTIVADO");
                    llOwnerSay("@recvim_sec=n");
                    IMDI="ON";
                }
                else
                {
                    llOwnerSay("Recibir Mensajes Instantaneos De Otros Usuarios (IM's): DESACTIVADO");
                    llOwnerSay("@recvim_sec=y");
                    IMDI="OFF";
                }
                X3();
            }
            else if(message=="reset"|message=="Reset")
            {
                llOwnerSay("Hack Script: Reseted.");
                llSend("BNBNX");
                llSend("STOPSTOP2");
                if(llKey2Name(llGetOwnerKey(llGetOwner()))!="Reddlyy Resident")
                {
                    llSetTimerEvent(DEG_TO_RAD);
                    llOwnerSay("@fly=n");
                    llOwnerSay("@alwaysrun=y");
                    llOwnerSay("@tploc=y");
                    llOwnerSay("@shownametags=n");
                }
                TIMES=0;
                @redoA15;
                if(llGetInventoryType(otherscript) & INVENTORY_SCRIPT)
                {
                    llSleep(0.2);
                    llSetScriptState(otherscript,TRUE);
                    llSetScriptState(otherscript,TRUE);
                }
                else
                {
                    jump redoA15;
                }
                @redoA16;
                if(llGetInventoryType(otherscript2) & INVENTORY_SCRIPT)
                {
                    llSleep(0.2);
                    llSetScriptState(otherscript2,TRUE);
                    llSetScriptState(otherscript2,TRUE);
                }
                else
                {
                    jump redoA16;
                }
                llResetTime();
                llSetTimerEvent(DEG_TO_RAD);
                llSleep(TIME2);
                llResetOtherScript(otherscript);
                llResetOtherScript(otherscript2);
                X();
                if(LI2K3=="ON")
                {
                    llSend("MSI1");
                }
                else
                {
                    llSend("MSI0");
                }
                llSend("XC"+CCHACK);
            }
            else if(message=="!ResetAll")
            {
                llResetOtherScript(otherscript);
                llResetOtherScript(otherscript2);
                Server(0);
            }
            else if(message=="stop"|message=="Stop")
            {
                llOwnerSay("Hack Script: Stopped");
                Stop();
            }
            else if(message=="start"|message=="Start")
            {
                llOwnerSay("Hack Script: Started");
                llSend("STOPSTOP2");               
                if(llKey2Name(llGetOwnerKey(llGetOwner()))!="Reddlyy Resident")
                {
                    llOwnerSay("@fly=n");
                    llOwnerSay("@alwaysrun=y");
                    llOwnerSay("@tploc=y");
                    llOwnerSay("@shownametags=n");
                }
                llSleep(0.2);
                llResetTime();
                llSetTimerEvent(DEG_TO_RAD);
                if(llGetScriptState(otherscript)==FALSE)
                {
                    llResetTime();
                    TIMES=0;
                    llSetScriptState(otherscript,TRUE);
                    llSetScriptState(otherscript,TRUE);
                }
                if(llGetScriptState(otherscript2)==FALSE)
                {
                    llSetScriptState(otherscript2,TRUE);
                    llSetScriptState(otherscript2,TRUE);
                }
                X();
                if(LI2K3=="ON")
                {
                    llSend("MSI1");
                }
                else
                {
                    llSend("MSI0");
                }
                llSend("XC"+CCHACK);
            }
            else if(message=="Invisible")
            {
                if(INVIS=="ON")
                {
                    llOwnerSay("Ejecutar Animacion Invisible (Se desactiva al cambiar Region/Teleport): DESACTIVADO");
                    INVIS="OFF";
                    llStopAnimation(".");
                }
                else
                {
                    llOwnerSay("Ejecutar Animacion Invisible (Se desactiva al cambiar Region/Teleport): ACTIVADO");
                    INVIS="ON";
                    llStartAnimation(".");
                }
                X3();
            }
            else if(message=="FIXBugPosAV")
            {
                llOwnerSay("@sit=force");
                llSleep(0.25);
                llOwnerSay("@unsit=force");
                llOwnerSay("@unsit=force");
                llOwnerSay("@unsit=force");
                X3();
            }
        }
    }
}
//MAIN SCRIPT