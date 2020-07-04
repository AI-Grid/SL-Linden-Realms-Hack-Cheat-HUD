string otherscript = "v1.70";
string xD = "Profesional AutoBot - Linden Realms:";
float TIME_DELAY_SECONDS = 15.0;
string COMAS = "Comandos Scripts [IMPORTANTE]: /1reset - /1stop - /1start";
default
{
    attach(key ID)
    {
        if(ID!=NULL_KEY)
        {
        llSetMemoryLimit(65535);
        llScriptProfiler(PROFILE_SCRIPT_MEMORY);
        if(llGetScriptState(otherscript)%2)
        {
            llSetScriptState(otherscript,FALSE);
        }
        llListen(1,"", llGetOwner(),"");
        llOwnerSay(xD+" Proyecto creado por Reddlyy(ErikV7) ft. chichinashi");
        llOwnerSay(xD+" Musica Inspirada: Yogi ft. Ayah Marar - Follow U (Trolley Snatcha Remix)");
        llOwnerSay(xD+" Para facilitar la creación de ALTERS utilizé https://emailtemporal.org/ y https://www.lastpass.com/es/username-generator");
        llOwnerSay(xD+" Espera "+(string)TIME_DELAY_SECONDS+" segundos para que empieze el script...");
        llOwnerSay(xD+" "+COMAS);
        llSleep(TIME_DELAY_SECONDS);
        llSetScriptState(otherscript,TRUE);
        llResetOtherScript(otherscript);
        }
    }
    listen(integer channel, string name, key id, string message)
    {
        if(llGetOwnerKey(id)==llGetOwner() & channel==1)
        {
            if(message=="reset")
            {
                if(llGetScriptState(otherscript)%2)
                {
                    llResetOtherScript(otherscript);
                }
            }
            if(message=="stop")
            {
                if(llGetScriptState(otherscript)%2)
                {
                    llSetScriptState(otherscript,FALSE);
                }
            }
            if(message=="start")
            {
                if(llGetScriptState(otherscript)==FALSE)
                {
                    llSetScriptState(otherscript,TRUE);
                }
            }
        }
    }
}