key http_request_id;
key owner;

list regiones = ["PaleoQuest A2","PaleoQuest B2","PaleoQuest C2"];
key serverside_x = NULL_KEY;
integer clientside;
integer resultado = -1;
integer i;
integer Listens2;

float DELAY = 0.8;

Server()
{
    if(llGetParcelFlags(llGetPos()) & PARCEL_FLAG_ALLOW_SCRIPTS)
    {
        llSetMemoryLimit(65535);
        llScriptProfiler(PROFILE_SCRIPT_MEMORY);
        owner = llGetOwner();
        i=0;
        llListenRemove(Listens2);
        resultado=-1;
        serverside_x=NULL_KEY;
        Listens2 = llListen(0,"",owner,"");
        llSetTimerEvent(DEG_TO_RAD);
        llSend("kW6b"+(string)llGetUsedMemory());
    }
}

fk()
{
    Listens2 = llListen(0,"",owner,"");
}

RLVTeleportAgent(key LLAVE,string REGION,integer X,integer Y,integer Z)
{   
    llOwnerSay("@accepttp=[:"+(string)LLAVE+"]=add");
    llSleep(DEG_TO_RAD);
    llOwnerSay("@tpto:"+REGION+"/"+(string)X+"/"+(string)Y+"/"+(string)Z+">[;0]=force"); 
}

llSend(string M)
{
    llMessageLinked(0xFFFFFFFC,0,M,llGetKey());
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
    dataserver(key query_id, string data)
    {
        if(query_id == serverside_x)
        {
            if(data == "unknown" & i != 666)
            {
                llOwnerSay("[ANTI-CAGES][WARNING] - Region "+llList2String(regiones,i)+" not exist, changing...");
                i++;
                serverside_x = llRequestSimulatorData(llList2String(regiones,i),DATA_SIM_POS);
            }
            else
            {
                llOwnerSay("[ANTI-CAGES][INFO] - Region "+llList2String(regiones,i)+" selected.");
                resultado=i;
                i=666;
            }
        }
    }
    link_message(integer sender_num, integer num, string str, key id)
    {
        if(str=="OFFCAGE")
        {
            llSetTimerEvent(0.0);
        }
        else if(str=="ONCAGE")
        {
            llSetTimerEvent(DEG_TO_RAD);
        }
        else if(str=="SENSORRUN")
        {
            clientside=1;
            llSensor("","",(ACTIVE),96.0,PI);
        }
        else if(str=="FXDUKPREPARATION")
        {
            clientside=0;
            llSensor("","",(AGENT|SCRIPTED),96.0,PI);
        }
        //HTTP Requests:
        if(str=="HTTP-SW1")
        {
            http_request_id = llHTTPRequest("https://darkerwolf.ddns.net/secondlife/switcher1/variable1.php", [], ""); //Start HUD, iniciara cuando tenga permisos DEBIT
        }
        if(str=="HTTP-SW2")
        {
            http_request_id = llHTTPRequest("https://darkerwolf.ddns.net/secondlife/switcher2/variable1.php", [], ""); //Enter key, llTeleport, ANTI-CAGES, trigger cuando accione el llRLVTeleport
        }
        if(str=="HTTP-SW3")
        {
            http_request_id = llHTTPRequest("https://darkerwolf.ddns.net/secondlife/switcher3/variable1.php", [], ""); //Click Heart Tree / Single Tree / Google Reezer / Amulet Section , trigger despues de unos segundos
        }
        if(str=="HTTP-SW4")
        {
            llOwnerSay("[Color Detection [START]]");
            http_request_id = llHTTPRequest("https://darkerwolf.ddns.net/secondlife/switcher4/variable1.php", [], ""); //Start Diamantes
        }
        if(str=="HTTP-SW5")
        {
            http_request_id = llHTTPRequest("https://darkerwolf.ddns.net/secondlife/switcher5/variable1.php", [], ""); //Termino el HUD, cierre de firestorm
        }
        if(str=="HTTP-SW6")
        {
            http_request_id = llHTTPRequest("https://darkerwolf.ddns.net/secondlife/switcher6/variable1.php", [], ""); //Apretar M
        }
    }
    http_response(key request_id, integer status, list metadata, string body)
    {
        if (request_id != http_request_id) return;
    }
    listen(integer channel, string name, key id, string message)
    {
        if(llGetOwnerKey(id)==owner & channel==0)
        {
            if(message=="ax")
            {
                llSend("axwqae6e");//reset
                fk();
            }
            else if(message=="bx")
            {
                llSend("bxqwerq");//listo
                fk();
            }
            else if(message=="tx")//diamante es ese
            {
                llSend("stopXD");
                fk();
            }
            //el finish con las teclas
        }
    }
    sensor(integer detectedX)
    {
        integer detected = detectedX;
        if(clientside==1)
        {
            integer ke = 0;
            while(detected--)
            {
                string name = llDetectedName(detected);
                if(name=="Very Giant Lava Ball - Mountain")
                {
                    //llOwnerSay("[Detected]");
                    llSend("SENSORRUN");
                    ke=1;
                }
            }
            if(ke==0)
            {
                //llOwnerSay("[No Detected]");
                llSend("GORUN");
            }
        }
        else
        {
            integer ke = 0;
            integer detected2 = detected;
            list PAD;
            list PAD2;
            while(detected--)
            {
                string name = llDetectedName(detected);
                string keyss = llDetectedKey(detected);
                if(ke==0 & name=="LR - Payout Pad - Weekly - Amulet")
                {
                    PAD = llGetObjectDetails(keyss,[OBJECT_POS]);
                    ke+=1;
                }
                if(ke==1 & name=="LR - Payout Pad - Weekly - Amulet")
                {
                    PAD2 = llGetObjectDetails(keyss,[OBJECT_POS]);
                    ke+=1;
                    jump break;                   
                }
            }
            @break;
            if(ke==2)
            {
                llOwnerSay("[PADS DETECTED]");
                while(detected2--)
                {
                    string keyss = llDetectedKey(detected2);
                    if(llGetAgentSize(keyss)) 
                    {
                        list PERSONA = llGetObjectDetails(keyss,[OBJECT_POS]);
                        float ok = (float)llVecDist((vector)llList2Vector(PERSONA,0),(vector)llList2Vector(PAD,0));
                        float ok2 = (float)llVecDist((vector)llList2Vector(PERSONA,0),(vector)llList2Vector(PAD2,0));
                        if(ok<3.5 & ok2<3.5) //3.0 el minimo
                        {
                            ke+=1;
                            jump break2;
                        }        
                    }     
                }
            }
            @break2;
            if(ke==3)
            {
                llOwnerSay("[Waiting to PAD...]");
                llSend("FXDUKPREPARATION");
            }
            else
            {
                llOwnerSay("[PAD Ready]");
                llSend("FXDUK");
            }
        }
        detected = 0;
        detectedX = 0;
        llSensorRemove();
    }
    timer()
    {
        if(resultado==0xFFFFFFFF | resultado>llGetListLength(regiones))
        {
            if(resultado>llGetListLength(regiones))
            {
                i=0;
            }
            serverside_x = llRequestSimulatorData(llList2String(regiones,i),DATA_SIM_STATUS);
        }
        else
        {
            key testsB = llList2Key(llGetObjectDetails(owner,[OBJECT_ROOT]),0);
            if(testsB!=NULL_KEY & testsB!=owner & testsB!=llGetOwnerKey(owner))
            {
                RLVTeleportAgent(owner,llList2String(regiones,resultado),0,0,0);
                llSleep(DELAY);
                llSend("HTTP-SW2");
            }
        }
    }
}
//HACK3 SCRIPT