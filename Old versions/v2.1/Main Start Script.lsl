string otherscript = "Hack";
string otherscript2 = "Hack2";
string xD = "Linden Realms Profesional HackV2.1:";
string MAINTEXTURE = "8c58522d-f1a8-19a9-c4a0-d7d96c3e81f4";
string VARIABLE1="ON";
string VARIABLE2="OFF";
string VARIABLE3="ON";
string ola;
string TIEMPO = "seg.";
string LI2K3="ON";
string SWMONEY = "OFF";
string USERMONEY = "Reddlyy";

key UUIDUSER = "53a0480c-485e-4129-bd4e-f2fa9183d17a";
key name_key_query;

key keys;
integer RUN_SENSOR;
vector HAHAHA;

float TIME2 = 0.1;
float PULSE = 0.8;

integer anim;
integer ST;
integer INTEGERS;
integer Listens;
integer RELEASE;
integer RELEASE2;
integer TIMES;


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
X()
{
    llListenRemove(Listens);
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
    @redoAXA;
    if(llGetInventoryType(otherscript) & INVENTORY_SCRIPT)
    {
        llSleep(0.2);
        if(llGetScriptState(otherscript)%2)
        {
            ola="ON";
        }
        else
        {
            ola="OFF";
        }
    }
    else
    {
        jump redoAXA;
    }
    if(TIMES==0)
    {
        TIEMPO = (string)((integer)llGetTime()) + "seg.";
    }
    Listens = llListen(1,"",llGetOwner(),"");
    llDialog(llGetOwner(),"Linden Realms Profesional HackV2.1"+"\n"+Stringsz(),
    ["Reset","Start","Stop","Velocidad","UserMoney","AutoSendL$",
    "Parte 1/2/3","Parte 4","+JUMP AVI"
    ,"AutoCristales"
    ,"ResetCristales"
    ,"LISTO ->>"
    ],1);
}
string Stringsz()
{
    return(
    "\nBotones como comandos: ON"+
    "\nHack Script Estado: "+ola+
    "\nHack Script Memoria: "+(string)INTEGERS+
    "\nMain Script Memoria: "+(string)llGetUsedMemory()+
    "\nVelocidad Hack (Funciona muy bien con JUMP): "+(string)VARIABLE3+
    "\nTiempo de ejecucion del Hack Script: "+TIEMPO+
    "\nUsuario para envio de Lindens: "+USERMONEY+
    "\nEnviar lindens automaticamente: "+SWMONEY+
    "\nObtener Automaticamente Los Lindens: "+LI2K3+
    "\nMisiones de primer Inicio 1/2/3 (DEFAULT): "+(string)VARIABLE1+
    "\nMision de primer Inicio 4: "+(string)VARIABLE2
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
            }
            ++index;
        }
    }
    avatarsInRegion=[];
}

Stop()
{
    llOwnerSay("@recvim_sec=y");
    SERVIDOR1=0;
    llSend("STOPSTOP2");
    @redoA10;
    if(llGetInventoryType(otherscript) & INVENTORY_SCRIPT)
    {
        llSleep(0.2);
        if(llGetScriptState(otherscript)%2)
        {
            llSetScriptState(otherscript,FALSE);
        }
    }
    else
    {
        jump redoA10;
    }
    @redoA11;
    if(llGetInventoryType(otherscript2) & INVENTORY_SCRIPT)
    {
        llSleep(0.2);
        if(llGetScriptState(otherscript2)%2)
        {
            llSetScriptState(otherscript2,FALSE);
        }
    }
    else
    {
        jump redoA11;
    }
    llSetTimerEvent(0.0);
    llSetText("",<255,255,255>,1.0);
    INTEGERS=0;
    TIMES=1;
    llOwnerSay("@remoutfit:alpha=y");
    llOwnerSay("@detach=y");
}

Server()
{
    llSetMemoryLimit(65535);
    llScriptProfiler(PROFILE_SCRIPT_MEMORY);
    llOwnerSay("@recvim_sec=y");
    @redoA3;
    if(llGetInventoryType(otherscript) & INVENTORY_SCRIPT)
    {
        llSleep(0.2);
        if(llGetScriptState(otherscript)%2)
        {
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
            llSetScriptState(otherscript2,FALSE);
        }
    }
    else 
    {
        jump redoA4;
    }
    VARIABLE1="ON";
    VARIABLE2="OFF";
    VARIABLE3="ON";
    ola="";
    TIEMPO="seg.";
    TIME2=0.2;
    PULSE=0.8;
    INTEGERS=0;
    Listens=0;
    RELEASE=0;
    RELEASE2=0;
    TIMES=1;
    SERVIDOR1=0;
    llOwnerSay(xD + " Recuerde de usar el Alpha 'Invisible Avatar', Always Run Enabled, RLV Enabled y Menu Desarrollo Enabled.");
    llOwnerSay("@remoutfit:alpha=y");
    llOwnerSay("@detach=y");
    llSetText("",<255,255,0>,1.0);
    llSetScale(<0.10000,0.10000,0.10000>);
    llListenRemove(Listens);
    llSetTexture(MAINTEXTURE,ALL_SIDES);
    llSetColor(<255,255,0>, ALL_SIDES);
    llSleep(TIME2*2);
    Listens = llListen(1,"",llGetOwner(),"");
    if(SWMONEY=="OFF")
    {
        llRequestPermissions(llGetOwner(),0x4|0x10|0x20|0x400|0x800|0x8000);
    }
    else 
    {
        if(llGetPermissions() & PERMISSION_DEBIT && llGetPermissionsKey()==llGetOwner())
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
    RELEASE2=1;
}

Sensor()
{
    llSensor("","",(PASSIVE|SCRIPTED),96.0,PI);
}

integer SERVIDOR1;

default
{
    state_entry()
    {
        if(RELEASE2==0)
        {
            Server();
        }
    }
    attach(key ID)
    {
        if(ID!=NULL_KEY)
        {
            Server();
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
        if(str=="STOPSSFORCE")
        {
            SERVIDOR1=0;
        }
        if(str=="FORCEDCHANGEREGION")
        {
            SERVIDOR1=1;
        }
        if(llGetSubString(str,0,3)=="kW2a")
        {
            INTEGERS=(integer)llDeleteSubString(str,0,3);
        }
        if(str=="CAMARASENSOR")
        {
            keys=NULL_KEY;
            HAHAHA=ZERO_VECTOR;
            RUN_SENSOR=1;
            Sensor();
        }
        if(str=="CLEANMC")
        {
            keys=NULL_KEY;
            HAHAHA=ZERO_VECTOR;
            RUN_SENSOR=0;
            if(llGetPermissions() & PERMISSION_CONTROL_CAMERA)
            {
                llClearCameraParams();
            }
        }
        if(str=="STOPTOPE")
        {
            Stop();
            if(SWMONEY=="ON")
            {
                llSleep(7.0);
                llTransferLindenDollars(UUIDUSER,50);
                llOwnerSay(xD + " Dinero enviado automaticamente con la configuracion del HUD.");
            }
        }
    }
    sensor(integer detected)
    {
        while(detected--)
        {
            string name = llDetectedName(detected);
            keys = llDetectedKey(detected);
            if(name=="Goggle Rezzer")
            {
                list GRZ = llGetObjectDetails(keys,[OBJECT_POS,OBJECT_OWNER,OBJECT_CREATOR]);
                if(llList2Key(GRZ,2)=="2069bbc2-6c4d-4680-9ec0-7dfe260c2d80" & llList2Key(GRZ,1)=="f2683489-f313-47ee-864b-a69754b18677")
                {
                    HAHAHA=llList2Vector(GRZ,0);
                    Camera(HAHAHA);
                    llSensorRemove();
                }
            }
            //if(name=="Amulet Section")// lr 172
            //{
            //    list GRZ = llGetObjectDetails(keys,[OBJECT_POS,OBJECT_OWNER,OBJECT_CREATOR]);
            //    if(llList2Key(GRZ,2)=="2069bbc2-6c4d-4680-9ec0-7dfe260c2d80" & llList2Key(GRZ,1)=="c83a29e5-a246-4356-8081-46a09c2f8a3f")
            //    {
            //        HAHAHA=llList2Vector(GRZ,0);
            //        Camera(HAHAHA);
            //        llSensorRemove();
            //    }                                
            //}
        }
    }
    changed(integer change)
    {
        if(change & CHANGED_REGION) 
        {
            //llStartAnimation(".");
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
            //llStopAnimation(".");
        }
        if(change & CHANGED_TELEPORT)
        {
            //llStartAnimation(".");
            //llSleep(0.1);
            //llStopAnimation(".");
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
    dataserver(key queryid, string data) 
    {
        if(name_key_query==queryid)
        {
            if(data==NULL_KEY)
            {
                llOwnerSay(xD + " Usuario no encontrado, dataserver ERROR. Intente nuevamente...");
                X();
            }
            else
            {
                UUIDUSER=data;
                llSleep(0.3);
                llOwnerSay(xD + " UserMoney: Usuario "+USERMONEY+" agregado. UUID Key: "+(string)UUIDUSER);
                X();
            }
        }
    }
    listen(integer channel, string name, key id, string message)
    {
        if(llGetOwnerKey(id)==llGetOwner() & channel==-99542)
        {
            USERMONEY=message;
            name_key_query=llRequestUserKey(message);
        }
        if(llGetOwnerKey(id)==llGetOwner() & channel==1)
        {
            if(message=="+JUMP AVI")
            {
                llPushObject(llGetOwner(),<0,0,100>,<0,0,100>,TRUE);
                X();
            }
            if(message=="ResetCristales")
            {
                if(SERVIDOR1%2)
                {
                    llSend("okOKERE");
                    X();
                }
            }
            if(message=="UserMoney")
            {
                Listens = llListen(-99542,"",llGetOwner(),"");
                llSleep(0.3);
                llTextBox(llGetOwner(),"Pon el nombre del usuario para guardarlo, cuando suceda una transferencia de dinero se utilizara: ",-99542);
            }
            if(message=="AutoSendL$")
            {
                if(SWMONEY=="ON")
                {
                    SWMONEY="OFF";
                    llRequestPermissions(llGetOwner(),0x4|0x10|0x20|0x400|0x800|0x8000);
                    X();
                }
                else
                {
                    SWMONEY="ON";
                    if(llGetPermissions() & PERMISSION_DEBIT && llGetPermissionsKey()==llGetOwner())
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
            }
            if(message=="Velocidad")
            {
                if(VARIABLE3=="ON")
                {
                    VARIABLE3="OFF";
                    PULSE=0.0;
                }
                else
                {
                    VARIABLE3="ON";
                    PULSE=0.8;
                }
                X();
            }
            if(message=="AutoCristales")
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
                X();
            }
            if(message=="LISTO ->>")
            {
                llSend("STOPSTOP2");
                SERVIDOR1=0;
                llSend("Zss");
                X();
            }
            if(message=="Parte 1/2/3")
            {
                llSend("ZK=0");
                VARIABLE1="ON";
                VARIABLE2="OFF";
                X();
            }
            if(message=="Parte 4")
            {
                llSend("ZK=1");
                VARIABLE1="OFF";
                VARIABLE2="ON";
                X();
            }
            if(message=="reset"|message=="Reset")
            {
                //llStartAnimation(".");
                llSend("STOPSTOP2");
                llOwnerSay("@recvim_sec=n");
                llSetTimerEvent(0.0);
                llResetTime();
                llSetTimerEvent(DEG_TO_RAD);
                TIMES=0;
                @redoA15;
                if(llGetInventoryType(otherscript) & INVENTORY_SCRIPT)
                {
                    llSleep(0.2);
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
                }
                else
                {
                    jump redoA16;
                }
                llSleep(TIME2);
                llResetOtherScript(otherscript);
                if(VARIABLE1=="OFF")
                {
                    llSend("ZK=1");
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
            }
            if(message=="stop"|message=="Stop")
            {
                Stop();
            }
            if(message=="start"|message=="Start")
            {
                //llStartAnimation(".");
                llSend("STOPSTOP2");               
                if(llKey2Name(llGetOwnerKey(llGetOwner()))!="Reddlyy Resident")
                {
                    llOwnerSay("@recvim_sec=n");
                    llOwnerSay("@remoutfit:alpha=n");
                    llSleep(0.1);
                    llOwnerSay("@detach=n");
                    llSleep(0.1);
                    llOwnerSay("@detach=force");
                    llOwnerSay("@detach=force");
                    llSleep(0.1);
                    llSetTimerEvent(DEG_TO_RAD);
                    llOwnerSay("@detach=y");
                    llSleep(0.1);
                    llOwnerSay("@remoutfit:alpha=y");
                }
                llSleep(0.2);
                if(llGetScriptState(otherscript)==FALSE)
                {
                    llResetTime();
                    TIMES=0;
                    llSetScriptState(otherscript,TRUE);
                }
                if(llGetScriptState(otherscript2)==FALSE)
                {
                    llSetScriptState(otherscript2,TRUE);
                }
                if(VARIABLE1=="OFF")
                {
                    llSend("ZK=1");
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
            }
        }
    }
    timer()
    {
        DetectorLindens();
        if(RUN_SENSOR%2 & HAHAHA!=ZERO_VECTOR)
        {
            if(llList2Key(llGetObjectDetails(keys,[OBJECT_OWNER]),0)==NULL_KEY)
            {
                keys=NULL_KEY;
                HAHAHA=ZERO_VECTOR;
                Sensor();
            }
        }
        //if((llGetAgentInfo(llGetOwnerKey(llGetOwner())) & AGENT_MOUSELOOK && anim==0))
        //{
        //    anim=1;
        //    llStopAnimation(".");
        //}
        //else if((anim%2))
        //{   
        //    anim=0;
        //    llStartAnimation(".");
        //}
    }
}
//MAIN SCRIPT