string COK;

integer A;
integer B;

float SPEED1 = 0.85;//0.044444444;//0.7;
float SPEED2 = 0.15;
float OFFSET2 = -0.1;
float OFFSET3 = 0.2;
//float OFFSET4
float H1 = 0.05;
float H2 = 0.05;
float TIMER2 = 1.0;
float TIMER3 = 0.7;
integer LOL = 210;

list LR3 = ["LR 5","LR 25","LR 45","LR 145","LR 165","LR 185"];

vector finalmeta;
vector test;

list noloop = 
[
    <225.11070, 45.27156, 90.65418>,
    <173.68050, 39.59608, 90.43098>,
    <139.69220, 35.06337, 90.17567>,
    <103.89190, 46.35436, 45.56430>,
    <94,60,60>,
    <62.42292, 88.95752, 45.16331>,
    <62.64774, 109.63710, 45.39857>,
    <36.62313, 157.30040, 45.68987>,
    <81.79018, 180.86690, 45.44891>,
    <119.62930, 202.61710, 45.68902>,
    <121.69730, 232.03740, 45.27982>,
    <182,217,45.2>,
    <196,144,45.2>
];

list pos = [
//LR 166 - FIRST - Primer Pedazo de Forest Realms
<207.06270, 121.90470, 33.58998>,
<203.97330, 83.14226, 44.37601>,
<177.54320, 62.42011, 47.18359>,
<149.66340, 45.14540, 47.98776>,
<118.74220, 38.08360, 47.14722>,
<117.49450, 58.50884, 47.21843>,
<116.92970, 82.99640, 47.46802>,
<81.26814, 90.54796, 47.40375>,

//Go to Time Of Desert
<24, 90, 150.40375>,
<-10.0, 90, 150.40375>,

//Time of Desert
<225.11070, 45.27156, 150.65418>,
<173.68050, 39.59608, 45.43098>,
<139.69220, 35.06337, 45.17567>,
<103.89190, 46.35436, 45.56430>,
    //<86.28094, 54.50562, 28.15166>,
    <94,60,60>,
<62.42292, 88.95752, 45.16331>,
<62.64774, 109.63710, 45.39857>,
<36.62313, 157.30040, 45.68987>,
<81.79018, 180.86690, 45.44891>,
<119.62930, 202.61710, 45.68902>,
<121.69730, 232.03740, 45.27982>,
<84.97099, 252.43140, 45.69100>,
<84.97099, 260.0, 45.69100>,

//Sand of Time 2
<76.09387, 19.78930, 45.88945>,
<69.94662, 56.03041, 45.80716>,
<60.23677, 76.91305, 45.87012>,
<44.07113, 96.18721, 45.97919>,
<37.24153, 117.95130, 45.68359>,
<83.16047, 179.26370, 45.93412>,
<109,173,45>,
<114.59140, 205.62700, 45.20628>,
<159.23900, 225.52010, 45.57093>,
<202.24300, 198.74730, 45.21492>,
<172.72450, 121.55000, 45.78370>,
<194.35430, 59.24458, 55.85027>,
<223.68980, 6.68967, 45.07865>,
<223.68980, -10.0, 150.07865>,

// Go to pedazo de forest Realms
<250,152,150>,
<260.0,152,150>,

/// Un pedazo de Forest Realms
<68.66127, 109.97980, 150.43517>,
<60.40542, 135.83000, 47.97721>,
<54.21893, 166.90630, 47.66426>,
<52.28639, 190.88940, 40.57625>,
<53.63313, 213.82000, 36.62672>,
<66.72683, 222.69480, 36.20720>,
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
<33.43270, 180.84140, 60.09402>,
<54.71522, 200.49220, 60.05317>,
<88.01340, 196.91350, 60.06602>,
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

<185.17400, 65.49997, 61.71744>,
<182.13480, 109.18060, 62.38009>,
<165.33450, 153.12430, 65.67344>,
<133.21610, 195.03920, 66.75014>,
<108.07590, 185.74580, 70.96112>,
<88.80546, 161.74600, 70.37146>,
<64.54684, 142.68410, 68.61354>,
<48.82917, 123.51600, 67.82245>,
<59.10817, 94.34195, 79.52154>,
<111.49260, 97.99940, 77.02693>,
<133.30310, 73.25334, 73.54406>,
<139.37890, 27.82321, 61.34154>,
<149.95460, 5.06278, 54.65660>,
<149.95460, -5.0, 54.65660>,

<125.86980, 249.93640, 56.95389>,
<103.71750, 247.30770, 58.87203>,
<78.70016, 242.11980, 55.07681>,
<47.18739, 237.78010, 53.03855>,
<28.12142, 240.44780, 48.09759>,
<28.12142, 260.0, 48.09759>,

<8.36684, 34.25046, 69.98505>,
<-10.0, 34.25046, 69.98505>,

<234.95430, 56.82526, 68.87923>,
<208.50450, 100.33190, 47.99008>,
<203.51980, 162.43830, 37.54381>,
<208.61510, 186.52000, 33.88907>,
<208.47290, 223.10060, 33.55053>,
<190.96790, 212.34080, 33.70350>,
<171.95180, 172.68180, 31.35089>,
<153.33130, 148.82390, 40.91491>,
<160.36220, 117.38680, 40.88820>,
<156.41900, 65.47306, 43.99291>,
<128.27390, 66.92007, 45.99010>,
<113.39250, 91.61139, 43.10703>,
<91.82133, 72.70723, 47.38964>,
<64.44293, 91.32243, 43.07442>,
<65.26064, 133.57700, 33.77855>,
<72.48517, 150.37020, 36.06319>,
<42.99390, 189.81300, 32.70437>,
<32.23305, 210.16720, 27.69009>,
<36.89362, 228.56310, 22.37452>,
<32.75909, 253.63020, 23.32833>,
<32.75909, 260.0, 23.32833>,

<6.91435, 24.57360, 22.54200>,
<81.26814, 90.54796, 47.40375>,
<116.92970, 82.99640, 47.46802>,
<117.49450, 58.50884, 47.21843>,
<117.49450, 58.50884, 47.21843>,
<118.74220, 38.08360, 47.14722>,
<149.66340, 45.14540, 47.98776>,
<177.54320, 62.42011, 47.18359>,
<203.97330, 83.14226, 44.37601>,
<207.06270, 121.90470, 33.58998>,
<243.62770, 142.96450, 25.80481>,

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
    FXDUKS=0;
    llSetTimerEvent(0.0);
    llSetMemoryLimit(65535);
    llScriptProfiler(PROFILE_SCRIPT_MEMORY);
    llStopMoveToTarget();
    llSend("kW3a"+(string)llGetUsedMemory());
}

llSend(string M)
{
    llMessageLinked(0xFFFFFFFC,0,M,llGetKey());
}

list Boxes = [
<224,2,100>,

<53.86840, 158.02270, 100>,
<53.86840, 158.02270, 28.81841>,
<53.86840, 158.02270, 100>,

<146.16490, 158.90610, 100>,
<146.16490, 158.90610, 30.42920>,
<146.16490, 158.90610, 100>,

<187.84520, 68.16219, 100>,
<187.84520, 68.16219, 50.55542>,
<187.84520, 68.16219, 100>,

<166.93430, 219.29380, 100>,
<166.93430, 219.29380, 30.19455>,
<166.93430, 219.29380, 100>,

<187.88240, 174.86230, 100>,
<187.88240, 174.86230, 37.0>,
<187.88240, 174.86230, 100>,

<128.96990, 76.33781, 100>,
<128.96990, 76.33781, 24.84792>,
<128.96990, 76.33781, 100>,

<160,33,100>,
<160,33,27>,
<160,33,100>,

<36,86,100>,
<36,86,27>,
<36,86,100>,

<216,191,100>,
<216,191,27>,
<216,191,100>,

<92.36569, 99.48085, 100>,
<91, 101, 27>,
<92.36569, 99.48085, 100>,

<107.00680, 134.10600, 100>,
<107.00680, 134.10600, 40.60895>,
<107.00680, 134.10600, 100>,

<105.84550, 196.01010, 100>,
<105.84550, 196.01010, 35.85440>,
<105.84550, 196.01010, 100>,

<95.91953, 69.16455, 100>,
<95.91953, 69.16455, 28.65027>,
<95.91953, 69.16455, 100>,

//<1,1,1>,
<0,0,0>
];

integer OXO;

ProLAVA(list pos,float SPEED2X,float dists)
{
    finalmeta = llList2Vector(pos,A);
    if((finalmeta==ZERO_VECTOR))
    {
        llStopMoveToTarget();
        llStopMoveToTarget();
        llStopMoveToTarget();
        finalmeta=ZERO_VECTOR;
        A=0;
    }
    else
    {
        MoveTarget(finalmeta,llGetOwner(),SPEED2X);
        float ok = (float)llVecDist((vector)llGetPos(),(vector)finalmeta);
        if(ok<=dists)
        {
            if(OXO%2 & finalmeta.z != 100.0)
            {
                llSleep(2.0);
            }
            A+=1;
        }
    }
}

ProLAVA2(list pos,float SPEED2X,float dists)
{
    finalmeta=llList2Vector(pos,A);
    if(finalmeta==ZERO_VECTOR)
    {
        llStopMoveToTarget();
        finalmeta=ZERO_VECTOR;
        A=0;
    }
    else
    {
        MoveTarget2(finalmeta,llGetOwner(),SPEED2X);
        if(llVecDist(llGetPos(),finalmeta)<=dists)
        {
            A+=1;
        }
    }
}
MoveTarget2(vector Pos,key WHOS,float SPEEDZX)
{
    do
    {
        llPushObject(WHOS,(Pos-llGetPos())*(llVecDist(llGetPos(),Pos)),ZERO_VECTOR,FALSE);
        llMoveToTarget(Pos,SPEEDZX);
    }
    while(llVecDist(Pos,llGetPos()) > 40.0);
    llMoveToTarget(Pos,SPEEDZX);
}

list POSRegion12F = [

<227.69390, 233.1, 45.23352>,
<225.69390, 233.1, 45.23352>,
<227.69390, 233.2, 45.23352>,
<225.69390, 233.2, 45.23352>,
<227.69390, 233.3, 45.23352>,
<225.69390, 233.3, 45.23352>,
<227.69390, 233.4, 45.23352>,
<225.69390, 233.4, 45.23352>,
<227.69390, 233.5, 45.23352>,
<225.69390, 233.5, 45.23352>,
<227.69390, 233.6, 45.23352>,
<225.69390, 233.6, 45.23352>,
<227.69390, 233.7, 45.23352>,
<225.69390, 233.7, 45.23352>,
<227.69390, 233.8, 45.23352>,
<225.69390, 233.8, 45.23352>,
<227.69390, 233.9, 45.23352>,
<225.69390, 233.9, 45.23352>,

<227.69390, 234.1, 45.23352>,
<225.69390, 234.1, 45.23352>,
<227.69390, 234.2, 45.23352>,
<225.69390, 234.2, 45.23352>,
<227.69390, 234.3, 45.23352>,
<225.69390, 234.3, 45.23352>,
<227.69390, 234.4, 45.23352>,
<225.69390, 234.4, 45.23352>,
<227.69390, 234.5, 45.23352>,
<225.69390, 234.5, 45.23352>,
<227.69390, 234.6, 45.23352>,
<225.69390, 234.6, 45.23352>,
<227.69390, 234.7, 45.23352>,
<225.69390, 234.7, 45.23352>,
<227.69390, 234.8, 45.23352>,
<225.69390, 234.8, 45.23352>,
//<227.69390, 234.9, 45.23352>,
//<225.69390, 234.9, 45.23352>,

//<227.69390, 235.0, 45.23352>,
//<225.69390, 235.0, 45.23352>,

//<227.69390, 235.1, 45.23352>,
//<225.69390, 235.1, 45.23352>,

<226.46560, 234.37460, 46.28009>,
<226.46560, 234.37460, 45.58009>,
<226.46560, 234.37460, 46.28009>,
<226.46560, 234.37460, 45.58009>,
<0,0,0>
];

float SPEED_LINDEN_REALMS45 = 0.05;
float SPEED_LINDEN_REALMS5 = 0.5;
float XDXD = 3.0;
integer FXDUKS;
string CCHACK = "ON";
string xD = "Linden Realms Profesional HackV2.3:";
integer bahls;

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
    changed(integer c)
    {
        if(c & CHANGED_REGION) 
        {
            llSleep(1.0);
            if(bahls%2)
            {
                llOwnerSay("@setenv_daytime:0.0=force");
            }
        }
    }
    sensor(integer detected)
    {
        if(CCHACK=="OFF")
        {
            while(detected--)
            {
                string name = llDetectedName(detected);
                key keys = llDetectedKey(detected);
                if(name=="Amulet")
                {
                    list GRZ = llGetObjectDetails(keys,[OBJECT_OWNER,OBJECT_CREATOR]);
                    if(llList2Key(GRZ,0)=="f2683489-f313-47ee-864b-a69754b18677" & llList2Key(GRZ,1)=="2069bbc2-6c4d-4680-9ec0-7dfe260c2d80")
                    {
                        llSend("HEREHEHE");
                    }
                }
            }
        }
        else
        {
            while(detected--)
            {
                string name = llDetectedName(detected);
                if(name=="LR - Floor"|name=="LR - Collision"|name=="LR - Grass")
                {
                    string keys = llDetectedKey(detected);
                    list DIAMANTE = llGetObjectDetails(keys,[OBJECT_POS,OBJECT_SCRIPT_MEMORY]);
                    DIAMANTE = llGetObjectDetails(keys,[OBJECT_POS,OBJECT_SCRIPT_MEMORY]);
                    vector ZXA = llList2Vector(DIAMANTE,0);
                    ZXA = llList2Vector(DIAMANTE,0);
                    vector ORIGINAL = ZXA;
                    if(<ZXA.x,ZXA.y,0>!=<1.00000,1.00000,0> & llList2String(DIAMANTE,1)=="81920" & llGetOwnerKey(keys)!=NULL_KEY & ZXA!=ZERO_VECTOR)
                    {
                        float OFFSET = 40.0;//50.0
                        //float OFFSET2 = 0.5;
                        //float OFFSET3 = 0.4;

//
//OFFSET QUE ANDAN BIEN OJO CON EL FLOAT SPEED TAMBIEN. 40% AGARRA DIAMANTES
             //           float OFFSET2 = 0.49;
             //           float OFFSET3 = 0.49;
//EL MEJOR FLOAT OFFSET ES ESTE: (90% AGARRA MAS DIAMANTES / TODOS?)
              //          float OFFSET2 = 0.48;
              //          float OFFSET3 = 0.48;
//
     

     //PROBLEMAS EN LA LAVA









                      //  float OFFSET3 = 0.45;
//float OFFSET3 = 0.5;
                        ZXA = <ZXA.x,ZXA.y,ZXA.z+OFFSET2>;

                        vector OKEZ = llGetPos(); // Posicion del recorrido
                        vector DOWN = ZXA; // Posicion del Diamante

                        ZXA=<ZXA.x,ZXA.y,OKEZ.z+OFFSET>; // Posicion del diamante pero con Z arriba alturarizado
                      //  if(ZXA.z < OKEZ.z)
                       // {
                       //     ZXA=DOWN;
                       // }
                        //llResetTime();
                        integer RAKE;
                        integer tis;
                        @returns;
                        tis+=1;
                      //  llOwnerSay((string)tis);
                        if(llGetOwnerKey(keys)!=NULL_KEY & tis<LOL) //no debe ser llgetownerkey
                        //if(llList2Vector(llGetObjectDetails(keys,[OBJECT_POS]),0)!=ORIGINAL) wtf no anda
                        //if(tis<timerHAHA & llList2Vector(llGetObjectDetails(keys,[OBJECT_POS]),0)!=ORIGINAL)
                        {
                            //llOwnerSay("ok"+(string)RAKE+" "+(string)ZXA);
                            if(RAKE==0)
                            {
                                MoveTarget2(ZXA,llGetOwner(),SPEED2);
                                if(llVecDist(llGetPos(),ZXA)<OFFSET3)
                                {
                                    llMoveToTarget(DOWN,SPEED2);
                                    llSleep(H1);
                                    RAKE=1;
                                    jump returns;
                                }      
                                else
                                {
                                    jump returns;
                                }
                            }
                            else if(RAKE==1)
                            {
                                MoveTarget2(DOWN,llGetOwner(),SPEED2);
                                if(llVecDist(llGetPos(),DOWN)<OFFSET3)
                                {
                                    llMoveToTarget(DOWN,SPEED2);
                                                                    //MoveTarget2(DOWN,llGetOwner(),SPEED);
                                    llSleep(H2);
                                    RAKE=2;
                                    jump returns;
                                }      
                                else
                                {
                                    jump returns;
                                }
                            }
                            else
                            {
                                MoveTarget2(ZXA,llGetOwner(),SPEED2);
                                if(llVecDist(llGetPos(),ZXA)<OFFSET3)
                                {
                                    ;
                                }      
                                else
                                {
                                    jump returns;
                                }
                            }
                        }
                        RAKE=0;
                        @backback;
                        MoveTarget2(OKEZ,llGetOwner(),SPEED2);
                        if(llVecDist(llGetPos(),OKEZ)<OFFSET3)
                        {
                            ;
                        }      
                        else
                        {
                            jump backback;
                        }
                    }
                }
            }    
            A+=1; 
        }
    }
    no_sensor()
    {
        if(CCHACK=="ON")
        {
            A+=1;
        }
    }
    link_message(integer sender_num, integer num, string str, key id)
    {
        if(str=="FXDUK")
        {
            FXDUKS=1;
            llSetTimerEvent(DEG_TO_RAD);
        }
        if(str=="YALPTM")
        {
            FXDUKS=0;
        }
        if(llGetSubString(str,0,3)=="RAY1")
        {
            FXDUKS=0;
            finalmeta=(vector)llDeleteSubString(str,0,3);
        }
        if(llGetSubString(str,0,3)=="RAY2")
        {
            FXDUKS=0;
            A=(integer)llDeleteSubString(str,0,3);
        }
        if(llGetSubString(str,0,3)=="RAY3")
        {
            FXDUKS=0;
            OXO=(integer)llDeleteSubString(str,0,3);
        }
        if(str=="BNBNX")
        {
            bahls=1;
        }
        if(str=="RAY")
        {
            FXDUKS=0;
            ProLAVA(Boxes,SPEED_LINDEN_REALMS5,XDXD);
        }
        if(str=="SensorRO")
        {
            FXDUKS=0;
            llSensorRepeat("","",(PASSIVE|SCRIPTED),20.0,PI,0.1);
        }
        if(str=="XSTOPX")
        {
            FXDUKS=0;
            llStopMoveToTarget();
        }
        if(str=="stopnowsensor")
        {
            FXDUKS=0;
            llSensorRemove();
        }
        if(str=="okOKERE")
        {
            FXDUKS=0;
            llOwnerSay("-- AutoCristales reseteado, buscando posicion cercana, no se mueva por favor.");
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
            llOwnerSay("-- AutoCristales Iniciado...");
            finalmeta=ZERO_VECTOR;
            A=RESULT;
            COK=llGetRegionName();
            llSetTimerEvent(DEG_TO_RAD);
        }
        if(llGetSubString(str,0,1)=="XC")
        {
            CCHACK=llDeleteSubString(str,0,1);
        }
        if(llGetSubString(str,0,4)=="OFFSE")
        {
            llOwnerSay("No esta funcionando. Desabilitado dentro del script.");
        //    OFFSET2 = (float)llDeleteSubString(str,0,4);
       //     OFFSET3 = (float)llDeleteSubString(str,0,4);
        }
        if(str=="FORCEDCHANGEREGION")
        {
            FXDUKS=0;
            finalmeta=ZERO_VECTOR;
            A=0;
            COK=llGetRegionName();
            llSetTimerEvent(DEG_TO_RAD);
        }
        if((str=="STOPSTOP" & B%2))
        {
            bahls=0;
            FXDUKS=0;
            B=0;
            B=0;
            llOwnerSay("[DEBUG] Se ha parado el AutoCristales por el usuario, use el boton ResetPaseo para volver, en el caso de volver debe estar lo mas cerca posible.");
            llOwnerSay("@setenv_daytime:0.5=force");//bahls=
            llStopMoveToTarget();
            llSetTimerEvent(0);
            llStopMoveToTarget();
            StartServer2();
        }
        if((str=="STOPSTOP2" & B%2))
        {
            FXDUKS=0;
            llSend("ResetXB");
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
        /*vector posD = llGetPos();
        float okN = llGetTime();
        float okNN = llGetTime() - okN;
        if(llGetPos()==posD & okNN>4.0)
        {
            llSay(1,"+X FORCED");
            llSay(1,"+Z FORCED");
            llSay(1,"+X FORCED");
            llSay(1,"+Z FORCED");
        }*/
        if(FXDUKS%2)
        {
            ProLAVA2(POSRegion12F,0.044444444,0.6);
            if(finalmeta==ZERO_VECTOR)
            {
                finalmeta=ZERO_VECTOR;
                finalmeta=ZERO_VECTOR;
                A=0;
                A=0;
                FXDUKS=0;
                llSleep(0.5);
                llStopMoveToTarget();
                llStopMoveToTarget();
                llStopMoveToTarget();
                llOwnerSay(xD+" Obteniendo los Lindens & Apagando script...");
                llOwnerSay(xD+" Puede usar el hud en otro alter y seguir. Fin del juego.");
                llSend("STOPTOPE");
                llSetTimerEvent(0.0);
            }
        }
        else
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
                if(CCHACK=="OFF")
                {
                    finalmeta = llList2Vector(pos,A);
                }
                else
                {
                    finalmeta = llList2Vector(noloop,A);
                }
                if(finalmeta==ZERO_VECTOR)
                {
                    if(CCHACK=="OFF")
                    {
                        llStopMoveToTarget();
                        llSetTimerEvent(0);
                        llStopMoveToTarget();
                        llSend("ResetXB");
                        llOwnerSay("Recoleccion de los diamantes: AutoCristales Finalizado.");
                        StartServer2();
                    }
                    else
                    {
                        A=0;
                    }
                }
                else
                {
                    if(CCHACK=="OFF")
                    {
                        MoveTarget2(finalmeta,llGetOwner(),SPEED1);
                    }
                    else if(~llListFindList(LR3,(list)llGetRegionName()))
                    {
                        MoveTarget2(finalmeta,llGetOwner(),SPEED2);
                    }
                    if(llVecDist(llGetPos(),finalmeta)<=1.5)
                    {
                        if(CCHACK=="OFF")
                        {
                            llSleep(TIMER2);
                            A+=1;
                        }
                        else
                        {
                            llSensor("","",(ACTIVE|PASSIVE|SCRIPTED),0x7FFFFFFF,PI);
                        }
                    }
                }
            }
        }
    }
}
//HACK2 SCRIPT