Server()
{
    llSetMemoryLimit(65535);
    llScriptProfiler(PROFILE_SCRIPT_MEMORY);
    llSetTimerEvent(DEG_TO_RAD);
}

RLVTeleportAgent(key LLAVE,string REGION,integer X,integer Y,integer Z)
{   
    llOwnerSay("@accepttp=[:"+(string)LLAVE+"]=add");
    llSleep(DEG_TO_RAD);
    llOwnerSay("@tpto:"+REGION+"/"+(string)X+"/"+(string)Y+"/"+(string)Z+">[;0]=force"); 
}



default
{
    state_entry()
    {
        Server();
    }
    attach(key ID)
    {
        if(ID!=NULL_KEY)
        {
            Server();
        }
    }
    timer()
    {
        key testsB = llList2Key(llGetObjectDetails(llGetOwner(),[OBJECT_ROOT]),0);
        if(
        testsB!=NULL_KEY 
        & testsB!=llGetOwner() 
        & testsB!=llGetOwnerKey(llGetOwner()) 
        & testsB!="8b372101-d957-d716-f6d6-e8b2de504e5c" 
        & testsB!="e1a0300f-6938-a189-af8e-0065b0402110" 
        & testsB!="f68a9f42-a9dc-8ea8-0753-a6dcd0ec6280" 
        & testsB!="f8cdb211-99a9-4bd2-d6b6-976be992ba60" 
        & testsB!="b39ae46a-a93a-afb3-7adb-b72007c2f802"
        & testsB!="c425de23-d523-e637-37a5-ec78eeee2a25"
        & testsB!="a8671c3f-d644-b199-8c4f-8a2e673ac37a"
        & testsB!="830f3990-1b2b-ee62-fcd6-9ac933349493"
        & testsB!="0b28754e-8094-0566-0d64-0ad5265e4c75"
        & testsB!="c425de23-d523-e637-37a5-ec78eeee2a25")//estas uuid provinen del sit de la lava
        {
            RLVTeleportAgent(llGetOwner(),"PaleoQuest A14",0,0,0);
            llSleep(DEG_TO_RAD+1);
        }
    }
}

/*
    llOwnerSay(la_concha_De_tu_madre+"8b372101-d957-d716-f6d6-e8b2de504e5c"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"e1a0300f-6938-a189-af8e-0065b0402110"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"f68a9f42-a9dc-8ea8-0753-a6dcd0ec6280"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"f8cdb211-99a9-4bd2-d6b6-976be992ba60"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"b39ae46a-a93a-afb3-7adb-b72007c2f802"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"c425de23-d523-e637-37a5-ec78eeee2a25"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"a8671c3f-d644-b199-8c4f-8a2e673ac37a"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"830f3990-1b2b-ee62-fcd6-9ac933349493"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"0b28754e-8094-0566-0d64-0ad5265e4c75"+laputa);
    llOwnerSay(la_concha_De_tu_madre+"c425de23-d523-e637-37a5-ec78eeee2a25"+laputa);
*/
//HACK3 SCRIPT