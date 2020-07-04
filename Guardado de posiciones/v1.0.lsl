list MASTER;

xd()
{
      llSay(0,"Start HUD");
    llSetMemoryLimit(65536);
    llScriptProfiler(1);
    llListen(1, "", llGetOwner(), "");
}

default
{
    attach(key ID)   {
    if(ID!=NULL_KEY)
    ´   {
      xd();
    }
    }
    state_entry()
    {
        xd();
        }
    touch_start(integer total_number)
    {
       string region = (string)llEscapeURL(llGetRegionName());
        string posicion = (string)llGetPos();
        MASTER += [region + ",," + posicion];
        llOwnerSay("Saved." + (string) posicion);
    }
    listen(integer channel, string name, key id, string message)
    {
         if(message=="n" && channel==1 && llGetOwnerKey(id)==llGetOwner())
        {
         llOwnerSay((string)llDumpList2String(MASTER,"|"));
         }
    }
}