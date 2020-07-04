//revisar velocidades cuidado con el sensor //parece que va bien solo que un poco rapido y ir por diamantes lo mas rrapido posible en las regiones LR 28 Y LR 24
//cuando agarra el diamante , levantar la misma altitud o sea los 65.0 de altura en la misma posicio n

integer A;
integer B;
integer C;

float SPEED = 0.044444444; // SPEED FIRST
float SPEED2 = 0.044444444; // SPEED SENSOR
float SPEED3 = 0.044444444; // SLEEP SENSOR
float SPEED4 = 0.044444444; // SLEEP FIRST

vector finalmeta;

list pos = [
<223.97192, 32.21698, 80.00000>,
<159.89975, 32.21698, 80.00000>,
<96.06195, 32.21698, 80.00000>,
<32.15552, 32.21698, 80.00000>,
<32, 96, 65>,
<95.26624, 96.35973, 80.00000>,
<158.45551, 96.35973, 80.00000>,
<222.48045, 96.35973, 80.00000>,
<222.48045, 160.47844, 80.00000>,
<158.43590, 160.47844, 80.00000>,
<93.87511, 160.47844, 80.00000>,
<29.93888, 160.47844, 80.00000>,
<29.93888, 224.46426, 80.00000>,
<93.49574, 224.46426, 80.00000>,
<157.35327, 224.46426, 80.00000>,
<221.23390, 224.46426, 80.00000>,
<0,0,0>
];

MoveTarget(vector Pos,key WHOS,float SPEEDZX)
{
    if(Pos!=ZERO_VECTOR)
    do
    {
        llPushObject(WHOS,(Pos-llGetPos())*(llVecDist(llGetPos(),Pos)),ZERO_VECTOR,FALSE);
        if(Pos!=ZERO_VECTOR)
        llMoveToTarget(Pos,SPEEDZX);
    }
    while(llVecDist(Pos,llGetPos()) > 40.0);
    if(Pos!=ZERO_VECTOR)
    llMoveToTarget(Pos,SPEEDZX);
}

StartServer2()
{
    llSetTimerEvent(0.0);
    llStopMoveToTarget();
    finalmeta=ZERO_VECTOR;
    A=0;
    B=0;
    C=0;
    llSetTimerEvent(0.0);
    llStopMoveToTarget();
}

RLVTeleportAgent(key LLAVE,string REGION,integer X,integer Y,integer Z)
{   
    llOwnerSay("@accepttp=[:"+(string)LLAVE+"]=add");
    llSleep();
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
        StartServer2();
    }
    attach(key ID)
    {
        if(ID!=NULL_KEY)
        {
            StartServer2();
        }
    }
    link_message(integer sender_num, integer num, string str, key id)
    {
        if(str=="RecollectDiamonds")
        {
            finalmeta=ZERO_VECTOR;
            A=0;
            B=0;
            C=0;
            llSetTimerEvent(DEG_TO_RAD);
        }
    }
    timer()
    {
        if(B==0)
        {
            finalmeta = llList2Vector(pos,A);
            if((finalmeta==ZERO_VECTOR))
            {
                llStopMoveToTarget();
                llSetTimerEvent(0);
                llOwnerSay("Recoleccion de los diamantes: Listo.");
                StartServer2();
                llSend("FORCEDCHANGEREGION");
            }
            else
            {
                MoveTarget(finalmeta,llGetOwner(),SPEED);
                float ok = (float)llVecDist((vector)llGetPos(),(vector)finalmeta);
                if(ok<=1.5)
                {
                    B=1;
                }
            }
        }
        else if(B==1)
        {
            llSleep(SPEED4);
            llSensor("","",(PASSIVE|SCRIPTED),96.0,PI);
            B=2;            
        }
    }
    collision_start(integer num)
    {
        //detecctar si se esta tocando con algun objeto
        //apagar todo de este script
        //si se queda atascado teletransportar a la region que esta o volver hacer como
        //luego volver a empezar pero con una lista que bloquea ese diamante
    }
    sensor(integer detected)
    {
        while(detected--)
        {
            C = 0;
            string name = llDetectedName(detected);
            string keys = llDetectedKey(detected);
            vector ZXA = llList2Vector(llGetObjectDetails(keys,[OBJECT_POS]),0);
            if(<ZXA.x,ZXA.y,0>!=<1.00000,1.00000,0>)
            {
                vector OKEZ = ZXA;
                ZXA=<ZXA.x,ZXA.y,80.00000>;
                string MEMORYHAHA = llList2String(llGetObjectDetails(keys,[OBJECT_SCRIPT_MEMORY]),0);
                if(llGetOwnerKey(keys)!=NULL_KEY)
                {
                    if(name=="LR - Floor"|name=="LR - Collision"|name=="LR - Grass")
                    {
                        if(MEMORYHAHA=="81920")
                        {
                            llResetTime();
                            llResetTime();
                            integer okastest;
                            @returns;
                            okastest+=1;
                            if(okastest<300 | C==3 | llGetOwnerKey(keys)!=NULL_KEY | llGetTime()<6.0 | llList2Vector(llGetObjectDetails(keys,[OBJECT_POS]),0)==ZERO_VECTOR)
                            {
                                if(ZXA!=ZERO_VECTOR)
                                {
                                    MoveTarget(ZXA,llGetOwner(),SPEED2);
                                    float ok = (float)llVecDist((vector)llGetPos(),(vector)ZXA);
                                    if(ok<=0.6)
                                    {
                                        if(C%2)
                                        {
                                            llSleep(SPEED3);
                                            C=3;
                                        }
                                        else if(C==0)
                                        {
                                            C=1;
                                            llSleep(SPEED3);
                                            ZXA=OKEZ;
                                            jump returns;
                                        }
                                    }      
                                    else
                                    {
                                        if(llGetTime()<6.0)
                                        jump returns;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        A+=1;
        B=0;
    }
    no_sensor()
    {
        A+=1;
        B=0;
    }
}