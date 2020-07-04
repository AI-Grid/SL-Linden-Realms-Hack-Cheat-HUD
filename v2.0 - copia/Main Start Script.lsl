string otherscript = "Hack";
string xD = "Linden Realms Profesional HackV2.0:";

float TIME2 = 0.2;
float PULSE = 0.8;

integer Listens;
integer RELEASE;
integer RELEASE2;

llSend(string M)
{
    llMessageLinked(0xFFFFFFFC,0,M,llGetKey());
}
X()
{
    Listens = llListen(1,"",llGetOwner(),"");
    llDialog(llGetOwner(),"Linden Realms Profesional HackV2.0",
    ["Reset","Start","Stop",
    "Parte 1/2/3","Parte 4","LISTO[CONTINUAR]"],1);
}

default
{
    attach(key ID)
    {
        if(ID!=NULL_KEY)
        {
            llSetMemoryLimit(65535);
            llScriptProfiler(PROFILE_SCRIPT_MEMORY);
            llListenRemove(Listens);
            if(llGetScriptState(otherscript)%2)
            {
                llSetScriptState(otherscript,FALSE);
            }
            llSleep(TIME2*2);
            Listens = llListen(1,"",llGetOwner(),"");
            llOwnerSay(xD+" Proyecto creado por Reddlyy(ErikV7) ft. chichinashi. Toque el HUD para obtener el menu o puede usar comandos ej: /1start");
            llOwnerSay(xD+" Para facilitar la creación de alters utilize https://emailtemporal.org/ y https://www.lastpass.com/es/username-generator");
            llRequestPermissions(llGetOwner(),0x4|0x20|0x400|0x800|0x8000);
            X();
            RELEASE2=1;
        }
    }
    touch_start(integer no)
    {
        if(RELEASE2%2)
        {
            X();
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
            llOwnerSay(xD+" Velocidad al correr/volar activada.");
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
    listen(integer channel, string name, key id, string message)
    {
        if(llGetOwnerKey(id)==llGetOwner() & channel==1)
        {
            if(message=="LISTO[CONTINUAR]")
            {
                llSend("Zss");
            }
            if(message=="Parte 1/2/3")
            {
                llSend("ZK=0");
            }
            if(message=="Parte 4")
            {
                llSend("ZK=1");
            }
            if(message=="reset"|message=="Reset")
            {
                llSetScriptState(otherscript,TRUE);
                llSleep(TIME2);
                llResetOtherScript(otherscript);
            }
            if(message=="stop"|message=="Stop")
            {
                if(llGetScriptState(otherscript)%2)
                {
                    llSetScriptState(otherscript,FALSE);
                }
            }
            if(message=="start"|message=="Start")
            {
                if(llGetScriptState(otherscript)==FALSE)
                {
                    llSetScriptState(otherscript,TRUE);
                }
            }
            X();
        }
    }
}