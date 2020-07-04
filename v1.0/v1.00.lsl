// Cuando inicia sesion, la placa debe apretar la tecla M y ahì comenzar a usar este script.
float TIME_DELAY_SECONDS = 30.0; // Cuando este listo ahi recien ejecutar el script, dependera de este tiempo del float.
string xD = "Profesional AutoBot - Linden Realms:";

integer RLV_Channel = 549845;
integer listenHandle;
integer RLV;

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
    llOwnerSay("@fly=n");
    llOwnerSay("@alwaysrun=y");
    llOwnerSay("@tploc=y");
    llOwnerSay("@shownametags=n");
    llOwnerSay("@showhovertextall=n");
    llOwnerSay(xD+" Done.");
    PermissionsCheck();
}

Loops()
{
    llOwnerSay(xD+" Started OK.");
    llSetTimerEvent(DEG_TO_RAD);
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
    timer()
    {
        if(RLV%2)
        {
            RLV=0;
            llOwnerSay(xD+" You don't have RLV enabled. Please enable it from options and re-attach object.");
            llListenRemove(listenHandle);
            llSetTimerEvent(0.0);
        }
    }
}