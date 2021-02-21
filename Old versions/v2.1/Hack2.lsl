integer A;
integer B;

float SPEED = 0.5; // SPEED FIRST
float TIMER2 = 0.5;
float TIMER3 = 0.5;

vector finalmeta;
vector test;

list pos = [

/* Region BARRIDO
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
*/

//LR 166 - FIRST
<207.06270, 121.90470, 33.58998>,
<203.97330, 83.14226, 44.37601>,
<177.54320, 62.42011, 47.18359>,
<149.66340, 45.14540, 47.98776>,
<118.74220, 38.08360, 47.14722>,
<117.49450, 58.50884, 47.21843>,
<116.92970, 82.99640, 47.46802>,
<81.26814, 90.54796, 47.40375>,
<68.66127, 109.97980, 47.43517>,
<60.40542, 135.83000, 47.97721>,
<54.21893, 166.90630, 47.66426>,
<52.28639, 190.88940, 40.57625>,
<53.63313, 213.82000, 36.62672>,
<66.72683, 222.69480, 36.20720>,
<76.52757, 236.84520, 39.23161>,
<82.24506, 241.35810, 40.64169>,
<103.79650, 239.72510, 43.76917>,
<97.72859, 200.67190, 33.65221>,
<114.48970, 192.48970, 33.35702>,
<149.18210, 173.87520, 33.90932>,
<177.92150, 161.05380, 35.28635>,
<167.74780, 188.15950, 36.64512>,
<202.35040, 190.70940, 47.15454>,
<154.35720, 229.09080, 36.54658>,
<182.54780, 254.92690, 36.06098>,
<182.54780, 260.00000, 36.06098>,

<186.35330, 12.54137, 50.05774>,
<195.87830, 32.25896, 50.08196>,
<193.82920, 58.37637, 50.03783>,
<193.91010, 90.57433, 50.07334>,
<194.25760, 118.81420, 50.04789>,
<178.32350, 114.41400, 50.07826>,
<141.21720, 140.29160, 50.04401>,
<124.49130, 164.54770, 50.03981>,
<109.63350, 146.13730, 50.04084>,
<137.98610, 96.60983, 50.01275>,
<146.64130, 50.85603, 50.07299>,
<232.81250, 17.81922, 50.09128>,
<254.81250, 17.81922, 50.09128>,
<260.0, 17.81922, 50.09128>,

<44.21754, 21.46499, 57.33752>,
<60.30156, 69.46296, 57.17619>,
<52.50202, 91.87811, 57.75840>,
<45.28972, 122.62040, 57.10695>,
<48.58495, 152.49040, 57.12436>,
<60.45473, 179.04790, 57.38628>,
<84.84882, 194.41070, 57.81246>,
<109.65950, 193.80550, 57.43344>,
<156.15270, 160.39650, 57.89534>,
<185.79740, 148.67050, 57.67238>,
<204.13210, 61.22859, 57.20490>,
<198.72570, 13.41580, 57.79675>,
<198.72570, -10.0, 57.79675>,

<200.15100, 240.68640, 50.0>,
<165.77000, 173.23980, 50.0>,
<112.02280, 159.26910, 50.0>,
<89.67052, 141.80860, 50.0>,
<23.18815, 118.39160, 50.0>,
<38.40459, 79.34423, 50.0>,
<87.99603, 96.38289, 57.0>,
<124.69990, 75.30724, 57.0>,
<151.62650, 74.03288, 57.0>,
<186.20830, 24.57173, 50.0>,
<214.21200, 14.90245, 50.0>,
<246.78890, 6.95920, 50.0>,
<260.0, 6.95920, 50.0>,

<40.63087, 17.96940, 50.02510>,
<50.67601, 43.58294, 50.09523>,
<28.51935, 72.79016, 50.06686>,
<40.23674, 111.91390, 50.02673>,
<38.94442, 135.08630, 50.05827>,
<33.43270, 180.84140, 50.09402>,
<54.71522, 200.49220, 50.05317>,
<88.01340, 196.91350, 50.06602>,
<126.83670, 167.34290, 50.08151>,
<115.96230, 126.28350, 50.01832>,
<118.89880, 99.92361, 50.07605>,
<104.66940, 74.89396, 50.00522>,
<87.51409, 54.98374, 50.02116>,
<77.38003, 24.84316, 50.00313>,
<77.38003, -10.0, 50.00313>,

<64.11971, 236.89200, 40.24330>,
<84.77866, 224.94690, 40.59595>,
<89.72079, 197.10690, 40.21781>,
<88.23599, 172.04480, 40.74099>,
<87.09232, 148.48330, 40.09775>,
<91.76913, 119.82300, 40.39384>,
<92.93792, 96.31706, 40.98513>,
<79.53257, 60.37431, 40.17332>,
<56.76044, 46.58113, 40.10851>,
<31.30691, 40.47429, 40.50407>,
<11.61413, 38.38977, 40.24496>,
<-10.0, 38.38977, 40.24496>,

<215,58,50>,
<215,58,38>,

<0,0,0>

];

MoveTarget(vector Pos,key WHOS,float SPEEDZX)
{
    if(test==ZERO_VECTOR)
    {
        llSleep(TIMER3);
        if(Pos!=ZERO_VECTOR)
        do
        {
            if(llGetRegionName()!=COK)
            {
                Pos=ZERO_VECTOR;
                COK=llGetRegionName();
                llStopMoveToTarget();
                A+=1;
                return;
            }
            else
            {
                llPushObject(WHOS,(Pos-llGetPos())*(llVecDist(llGetPos(),Pos)),ZERO_VECTOR,FALSE);
                if(Pos!=ZERO_VECTOR)
                llMoveToTarget(Pos,SPEEDZX);
            }
        }
        while(llVecDist(Pos,llGetPos()) > 40.0);
        if(Pos!=ZERO_VECTOR)
        llMoveToTarget(Pos,SPEEDZX);
    }
}

StartServer2()
{
    llSetTimerEvent(0.0);
    llStopMoveToTarget();
    finalmeta=ZERO_VECTOR;
    A=0;
    llSetTimerEvent(0.0);
    llStopMoveToTarget();
}

RLVTeleportAgent(key LLAVE,string REGION,integer X,integer Y,integer Z)
{   
    llOwnerSay("@accepttp=[:"+(string)LLAVE+"]=add");
    llSleep(0.5);
    llOwnerSay("@tpto:"+REGION+"/"+(string)X+"/"+(string)Y+"/"+(string)Z+">[;0]=force"); 
}

llSend(string M)
{
    llMessageLinked(0xFFFFFFFC,0,M,llGetKey());
}

string COK;

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
        if(str=="okOKERE")
        {
            llOwnerSay("-- AutoLindens reseteado, no se mueva por favor.");
            vector posicionowner = llGetPos();
            integer OKLIST = llGetListLength(pos);
            list TEST;
            integer i;
            for(i=0; i<OKLIST; i++)
            {
                TEST+=(list)((float)llVecDist((vector)posicionowner,(vector)llList2Vector(pos,i)));
            }
            float results = llListStatistics(LIST_STAT_MIN,TEST);
            integer RESULT = llListFindList(TEST,(list)[results]);
            llOwnerSay("-- AutoLindens Iniciado...");
            finalmeta=ZERO_VECTOR;
            A=RESULT;
            COK=llGetRegionName();
            llSetTimerEvent(DEG_TO_RAD);
        }
        if(str=="FORCEDCHANGEREGION")
        {
            finalmeta=ZERO_VECTOR;
            A=0;
            COK=llGetRegionName();
            llSetTimerEvent(DEG_TO_RAD);
        }
        if((str=="STOPSTOP" & B%2))
        {
            B=0;
            B=0;
            llOwnerSay("-- Se ha parado el AutoLindens por el usuario, use el boton RESET para volver ---");
            llOwnerSay("-- BUG DETECTED: DEBE ESTAR LO MAS CERCA POSIBLE DE DONDE HA PARADO EL AUTOLINDENS. ---");
            llStopMoveToTarget();
            llSetTimerEvent(0);
            llStopMoveToTarget();
            StartServer2();
        }
        if((str=="STOPSTOP2" & B%2))
        {
            B=0;
            B=0;
            llStopMoveToTarget();
            llSetTimerEvent(0);
            llStopMoveToTarget();
            StartServer2();
        }
    }
    timer()
    {
        if(llGetRegionName()!=COK)
        {
            COK=llGetRegionName();
            llStopMoveToTarget();
            A+=1;
        }
        else
        {
            B=1;
            finalmeta = llList2Vector(pos,A);
            if((finalmeta==ZERO_VECTOR))
            {
                llStopMoveToTarget();
                llSetTimerEvent(0);
                llStopMoveToTarget();
                llOwnerSay("Recoleccion de los diamantes: AutoLindens Finalizado.");
                StartServer2();
            }
            else
            {
                MoveTarget(finalmeta,llGetOwner(),SPEED);
                float ok = (float)llVecDist((vector)llGetPos(),(vector)finalmeta);
                if(ok<=1.5)
                {
                    llSleep(TIMER2);
                    A+=1;
                }
            }
        }
    }
}
//HACK2 SCRIPT