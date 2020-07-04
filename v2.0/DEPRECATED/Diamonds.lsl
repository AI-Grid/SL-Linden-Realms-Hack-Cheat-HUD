list NAMES;
list KEYS;
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
integer A;
list pos = [
<223.97192, 32.21698, 140.03759>,
<159.89975, 32.21698, 140.03759>,
<96.06195, 32.21698, 140.03759>,
<32.15552, 32.21698, 140.03759>,

<32.15552, 96.35973, 140.03759>,
<95.26624, 96.35973, 140.09953>,
<158.45551, 96.35973, 140.09953>,
<222.48045, 96.35973, 140.09953>,

<222.48045, 160.47844, 140.09953>,
<158.43590, 160.47844, 140.09953>,
<93.87511, 160.47844, 140.09953>,
<29.93888, 160.47844, 140.09953>,

<29.93888, 224.46426, 140.00000>,
<93.49574, 224.46426, 140.00000>,
<157.35327, 224.46426, 140.00000>,
<221.23390, 224.46426, 140.00000>,

<0,0,0>
];

float SPEED = 5.1;
vector finalmeta;
integer B;
integer WAIT;
float OFFSETZ = 10;
default
{
    state_entry()
    {
        NAMES=[];
        KEYS=[];
        finalmeta=ZERO_VECTOR;
        A=0;
        B=0;
        llSensorRepeat("","",PASSIVE,96.0,PI,0.1);
        llSetTimerEvent(DEG_TO_RAD);
    }
    timer()
    {
        if(B==0)
        {
            finalmeta = llList2Vector(pos,A);
            if((finalmeta==ZERO_VECTOR))
            {
                //llOwnerSay((string)llDumpList2String(KEYS,","));
                //llOwnerSay((string)llDumpList2String(NAMES,","));
                llStopMoveToTarget();
                llSensorRemove();
                llSetTimerEvent(0);
                llStopMoveToTarget();
            }
            else
            {
                MoveTarget(finalmeta,llGetOwner(),SPEED);
                float ok = (float)llVecDist((vector)llGetPos(),(vector)finalmeta);
                if(ok<=1.5)
                {
                    llSleep(0.5);
                    finalmeta=<finalmeta.x,finalmeta.y,llGround(ZERO_VECTOR)+OFFSETZ>;
                    B=1;
                }
            }
        }
        else
        {
            MoveTarget(finalmeta,llGetOwner(),SPEED);
            float ok = (float)llVecDist((vector)llGetPos(),(vector)finalmeta);
            if(ok<=2.0)
            {
                llSleep(0.5);
                B=0;
                A+=1;
            }             
        }
    }
    sensor(integer detected)
    {
        while(detected--)
        {
            string name = llDetectedName(detected);
            string keys = llDetectedKey(detected);
            if(name=="Object")
            {
                NAMES+=name;
                KEYS+=keys;
            }
        }
    }
}
