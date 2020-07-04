//DESERT TIME CAJAS //-Revisar y guardar posiciones posible para recolectar la tercer pieza en el campo surtido y en Desert region tmb
//http://maps.secondlife.com/secondlife/LR%20182/189/175/32
//http://maps.secondlife.com/secondlife/LR%202/167/219/25
//httpmaps.secondlife.comsecondlifeLR%20221876942
//http://maps.secondlife.com/secondlife/LR%2022/160/33/23
//http://maps.secondlife.com/secondlife/LR%2022/36/89/24
//http://maps.secondlife.com/secondlife/LR%2022/216/191/23
//Amulet

//TARGET FOLLOW Amulet Section MISSION LR 192 - RECORDAR QUE NO DEBE HABER OTRAS PERSONAS PARA QUE NO INTERFIERAN Y PENSAR QUE SE LO TOCO OTRO
//AGREGAR MAS AUTOMATIZACION AL SCRIPT CON CAMARAS Y DETECTAR POSICION DE LA COMPUERTA LAVA
//-Arbol para que haga click, recordar la altura <210.72560, 142.86670, 25.04010> - PARA LA CAMARA ?
//-Obtener una camara espejo para grabar las regiones y ver donde esta el diamante verde
//AGREGAR QUE DIGA UNA  AYUDA AL RECOLECTAR LOS DIAMANTES  CTRL + SHIFT + R
//Y REVISAR SI EL ARBOL DE TREE CUANDO CHOCAS CONTRA EL LE DAS LOS DIAMANTES
    //REGION LR 2 NO FUNCIONA AGREGAR UNA NO EXCEPCION
    //USARLO COMO QUE CAMBIO EL LR NO SIGNIFICA TAL: Linden Realms 3, funciona| Dyna Mole [16:55] Linden Realms Portal: Now sending to: Linden Realms 3 -Controlar que la region sea Region misma que funcione
    //A VECES FUNCIONA MAL EN LA LAVA - si el usuario se sienta detectado resetear el script
    //-mejorar la pos de la lava
    //-tiene que detectar los lindens y detectar si esta en el LR 2 - si uno de los dos teletransportar a portal park y esperar un new linden realms
    //agregarle una naimacion que sea invisible
    //agregar eso de que si detecta el teleporter en una region con teleport teletransportar asi no se pierde tiempo
//-mejorar eso de que se queda pegado en la region para resolverlo debe sentarse y volver a unsit
//-detectar la posicion de la ultima region la plataforma
//agregar eso de que elegir el otro weekly si es que hay uno ahi
//ENVES DEL RADAR QUE SEA POR COLLISION Y SI ES EL OBJETO QUE DETECTO AHI RECIEN RESETEA EL SCRIPT

string otherscript = "Hack";
string otherscript2 = "Hack2";
string xD = "Linden Realms Profesional HackV2.0:";
string MAINTEXTURE = "8c58522d-f1a8-19a9-c4a0-d7d96c3e81f4";
string VARIABLE1="ON";
string VARIABLE2="OFF";
string VARIABLE3="ON";
string ola;
string TIEMPO = "seg.";
string LI2K3="OFF";

string USERMONEY = "Reddlyy";
key UUIDUSER = "53a0480c-485e-4129-bd4e-f2fa9183d17a";
//key INVISIBLEANIM = "73263347-eb99-3de6-818f-47a749db0f74";
key name_key_query;
string SWMONEY = "OFF";

float TIME2 = 0.2;
float PULSE = 0.8;

integer Started;
integer ST;
integer INTEGERS;
integer Listens;
integer RELEASE;
integer RELEASE2;
integer TIMES;

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
    if(llGetScriptState(otherscript)%2)
    {
        ola="ON";
    }
    else
    {
        ola="OFF";
    }
    if(TIMES==0)
    {
        TIEMPO = (string)((integer)llGetTime()) + "seg.";
    }
    Listens = llListen(1,"",llGetOwner(),"");
    llDialog(llGetOwner(),"Linden Realms Profesional HackV2.0"+"\n"+Stringsz(),
    ["Reset","Start","Stop","Velocidad","UserMoney","AutoSendL$",
    "Parte 1/2/3","Parte 4","LISTO ->>"
    ,"AutoLindens"
    //,"ChanRegion ->>"
    ],1);
}
string Stringsz()
{
    return(
    "\nPor: Reddlyy(ErikV7) ft. chichinashi"+
    "\nBotones como comandos: ON"+
    "\nHack Script State: "+ola+
    "\nHack Script Memory: "+(string)INTEGERS+
    "\nMain Script Memory: "+(string)llGetUsedMemory()+
    "\nVelocidad Hack (Funciona muy bien con JUMP): "+(string)VARIABLE3+
    "\nTiempo de ejecucion del Hack Script: "+TIEMPO+
    "\nUsuario para envio de Lindens: "+USERMONEY+
    "\nEnviar lindens automaticamente: "+SWMONEY+
    "\nObtener Automaticamente Los Lindens: "+LI2K3+
    "\nMisiones de primer Inicio 1/2/3 (DEFAULT): "+(string)VARIABLE1+
    "\nMision de primer Inicio 4: "+(string)VARIABLE2
    //"\n"+
    //"\nCreación de alters: https://emailtemporal.org/ https://www.lastpass.com/es/username-generator"+
    //"\n"
    );
}

Stop()
{
    if(llGetScriptState(otherscript)%2)
    {
        llSetScriptState(otherscript,FALSE);
    }
    if(llGetScriptState(otherscript2)%2)
    {
        llSetScriptState(otherscript2,FALSE);
    }
    llSetText("",<255,255,255>,1.0);
    llSetTimerEvent(0.0);
    INTEGERS=0;
    TIMES=1;
  //  llStopAnimation(INVISIBLEANIM);
}

Server()
{
    llSetMemoryLimit(65535);
    llScriptProfiler(PROFILE_SCRIPT_MEMORY);
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
    Started=0;
    llSetTimerEvent(0.0);
    llSetText("",<255,255,255>,1.0);
    llSetScale(<0.10000,0.10000,0.10000>);
    llListenRemove(Listens);
    llSetTexture(MAINTEXTURE,ALL_SIDES);
    llSetColor(<255,0,255>, ALL_SIDES);
    if(llGetScriptState(otherscript)%2)
    {
        llSetScriptState(otherscript,FALSE);
    }
    if(llGetScriptState(otherscript2)==0)
    {
        llSetScriptState(otherscript2,TRUE);
    }
    llSleep(TIME2*2);
    Listens = llListen(1,"",llGetOwner(),"");
    if(SWMONEY=="OFF")
    {
        llRequestPermissions(llGetOwner(),0x4|0x10|0x20|0x400|0x800|0x8000);
        X();
    }
    else 
    {
        if(llGetPermissions() & PERMISSION_DEBIT && llGetPermissionsKey()==llGetOwner())
        {
            llSetTimerEvent(0.0);
           // llStopAnimation(INVISIBLEANIM);
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
        if(llGetSubString(str,0,3)=="kW2a")
        {
            INTEGERS=(integer)llDeleteSubString(str,0,3);
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
    changed(integer change)
    {
        if (change & CHANGED_REGION) 
        {
            Listens = llListen(1,"",llGetOwner(),"");
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
            if(Started==0)
            {
                llSetTimerEvent(0.0);
            //    llStopAnimation(INVISIBLEANIM);
            }
        }
        if(perm & PERMISSION_DEBIT && ST%2)
        {
            if(Started==0)
            {
                llSetTimerEvent(0.0);
           //     llStopAnimation(INVISIBLEANIM);
            }
            ST=0;
            X();
        }
    }
    control(key id, integer level, integer edge)
    {
        if(level & CONTROL_FWD && PULSE!=0.0)
        {
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
                    if(llGetPermissions() & PERMISSION_DEBIT && llGetPermissionsKey()==llGetOwner()){X();}else
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
  //          if(message=="ChanRegion ->>")
  //          {
  //              llSend("FORCEDCHANGEREGION");
  //          }
            if(message=="AutoLindens")
            {
                if(LI2K3=="ON")
                {
                    LI2K3="OFF";
                    llSend("MSI0");
                }
                else
                {
                    LI2K3="ON";
                    llSend("MSI1");
                }
            }
            if(message=="LISTO ->>")
            {
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
                llSetTimerEvent(DEG_TO_RAD);
                Started=1;
                llResetTime();
                TIMES=0;
                llSetScriptState(otherscript,TRUE);
                llSetScriptState(otherscript2,TRUE);
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
                llSetTimerEvent(DEG_TO_RAD);
                Started=1;
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
      //  llStartAnimation(INVISIBLEANIM);
    }
}