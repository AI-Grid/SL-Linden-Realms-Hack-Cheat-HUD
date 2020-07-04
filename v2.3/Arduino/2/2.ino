//http://blascarr.com/lessons/tcs3200-color-sensor-calibration/
//http://wiki.secondlife.com/wiki/Viewer_parameters
#include "ListLib.h"
#include <Keyboard.h>

#define Pin_Microfono A0
int CuentaDondeEmpezar = 0;
int CuentaDondeFinalizar = 79;

char ctrlGui = KEY_LEFT_GUI;
char CloseViewer = KEY_LEFT_ALT;
char CloseViewer2 = KEY_F4;
List<char*> list;
List<char*> Claves;
int OK=-1;
int OK2;
int AX;
String COMMANDS;

void Server1()
{
    Serial.println("[Script Started] - Envia algo al serial para empezar con el Linden Realms Hack.");
    Serial.print("Cuenta de donde empieza: ");
    Serial.print(CuentaDondeEmpezar);
    Serial.print(" - ");
    Serial.println(list[CuentaDondeEmpezar]);
    Serial.print("Cuenta de donde finaliza: ");
    Serial.print(CuentaDondeFinalizar);
    Serial.print(" - ");
    Serial.println(list[CuentaDondeFinalizar]);
    Serial.println(" ");
}

void setup() 
{
    Serial.begin(9600);
    Keyboard.begin();
    delay(101);
    Keyboard.releaseAll();
    Serial.println("[Wait Please... Loading...]");
    Serial.println(" ");
    AgregarCuentas();
    AgregarClaves();
    OK2=0;
}

void loop() 
{
    if(Serial.available()>0)
    {
        COMMANDS=Serial.readString();  
    }
    if(COMMANDS.substring(0,1)=="s")
    {
        COMMANDS="";
        OK++;
        if(OK==3)
        {
        OK=0;
        }
        AX=1;
    }
    if(OK==2 & AX==1)
    {
        Serial.begin(9600);
        AX=0;
        Serial.println("[Hack Stopped By User Into Serial]");
        Serial.println(" ");
        OK2=0;
        delay(100);
        Keyboard.releaseAll();
        delay(100);
    }
    else if(OK==1 & AX==1)
    {
        Serial.begin(9600);
        AX=0;
        Serial.println("[Hack Running]");
        Serial.println(" ");
        OK2=1;
    }
    else if(OK==0 & AX==1)
    {
        Serial.begin(9600);
        AX=0;
        Server1();
    }
    if(OK2%2)
    {
        if(CuentaDondeEmpezar==0|analogRead(Pin_Microfono)==1023)
        {
            if(CuentaDondeEmpezar!=0)
            {
                Keyboard.press(CloseViewer);
                Keyboard.press(CloseViewer2);
                delay(100);
                Keyboard.releaseAll();
                delay(100);
            }
            Keyboard.press(ctrlGui);
            Keyboard.press('r');
            delay(100);
            Keyboard.releaseAll();
            delay(100);
            Keyboard.println("cmd");
            delay(500);
            prowrite("C:/Firestorm-releasex64/Firestorm-releasex64.exe --login "
            +(String)list[CuentaDondeEmpezar]
            +" Resident ERROR --noprobe --set InstallLanguage en --no-verify-ssl-cert" 
            ,true);
            delay(500);
            Keyboard.releaseAll();
            delay(101);
            delay(10000);
            prowrite(
              Claves[CuentaDondeEmpezar]
            ,true);
            delay(500);
            Keyboard.releaseAll();
            delay(101);
            CuentaDondeEmpezar++;
        }
        if(CuentaDondeEmpezar>CuentaDondeFinalizar)
        {
            Serial.println("[Hack Stopped By The Finish Account]");
            Serial.println(" ");
            OK2=0;
        }
    }
}

void AgregarCuentas()
{
    list.Add("keiso00");
    list.Add("keiso01");
    list.Add("keiso02");
    list.Add("keiso03");
    list.Add("keiso04");
    list.Add("keiso05");
    list.Add("keiso06");
    list.Add("keiso07");
    list.Add("keiso08");
    list.Add("keiso09");
    list.Add("keiso010");
    list.Add("keiso011");
    list.Add("keiso012");
    list.Add("keiso013");
    list.Add("keiso14");
    list.Add("keiso15");
    list.Add("keiso016");
    list.Add("keiso017");
    list.Add("keiso018");
    list.Add("keiso019");
    list.Add("keiso020");
    list.Add("keiso021");
    list.Add("keiso022");
    list.Add("keiso023");
    list.Add("keiso024");
    list.Add("keiso025");
    list.Add("keiso026");
    list.Add("keiso027");
    list.Add("keiso028");
    list.Add("keiso029");
    list.Add("keiso030");
    list.Add("keiso031");
    list.Add("keiso032");
    list.Add("keiso033");
    list.Add("keiso034");
    list.Add("keiso035");
    list.Add("keiso036");
    list.Add("keiso037");
    list.Add("keiso038");
    list.Add("keiso039");
    list.Add("keiso040");
    list.Add("keiso041");
    list.Add("keiso042");
    list.Add("keiso043");
    list.Add("keiso044");
    list.Add("keiso045");
    list.Add("keiso046");
    list.Add("keiso047");
    list.Add("keiso048");
    list.Add("keiso049");
    list.Add("keiso050");
    list.Add("keiso051");
    list.Add("keiso052");
    list.Add("keiso053");
    list.Add("keiso054");
    list.Add("keiso055");
    list.Add("keiso056");
    list.Add("keiso057");
    list.Add("keiso058");
    list.Add("keiso059");
    list.Add("keiso060");
    list.Add("keiso061");
    list.Add("keiso062");
    list.Add("keiso063");
    list.Add("keiso064");
    list.Add("keiso065");
    list.Add("keiso066");
    list.Add("keiso067");
    list.Add("keiso068");
    list.Add("keiso069");
    list.Add("keiso070");
    list.Add("keiso071");
    list.Add("keiso072");
    list.Add("keiso073");
    list.Add("keiso074");
    list.Add("keiso075");
    list.Add("keiso076");
    list.Add("keiso077");
    list.Add("keiso078");
    list.Add("keiso079");
}

void AgregarClaves()
{
    Claves.Add("kizo00");
    Claves.Add("kizo01");
    Claves.Add("kizo02");
    Claves.Add("kizo03");
    Claves.Add("kizo04");
    Claves.Add("kizo05");
    Claves.Add("kizo06");
    Claves.Add("kizo07");
    Claves.Add("kizo08");
    Claves.Add("kizo09");
    Claves.Add("kizo010");
    Claves.Add("kizo011");
    Claves.Add("kizo012");
    Claves.Add("kizo013");
    Claves.Add("kizo014");
    Claves.Add("kizo015");
    Claves.Add("kizo016");
    Claves.Add("kizo017");
    Claves.Add("kizo018");
    Claves.Add("kizo019");
    Claves.Add("kizo020");
    Claves.Add("kizo021");
    Claves.Add("kizo022");
    Claves.Add("kizo023");
    Claves.Add("kizo024");
    Claves.Add("kizo025");
    Claves.Add("kizo026");
    Claves.Add("kizo027");
    Claves.Add("kizo028");
    Claves.Add("kizo029");
    Claves.Add("kizo030");
    Claves.Add("kizo031");
    Claves.Add("kizo032");
    Claves.Add("kizo033");
    Claves.Add("kizo034");
    Claves.Add("kizo035");
    Claves.Add("kizo036");
    Claves.Add("kizo037");
    Claves.Add("kizo038");
    Claves.Add("kizo039");
    Claves.Add("kizo040");
    Claves.Add("kizo041");
    Claves.Add("kizo042");
    Claves.Add("kizo043");
    Claves.Add("kizo044");
    Claves.Add("kizo045");
    Claves.Add("kizo046");
    Claves.Add("kizo047");
    Claves.Add("kizo048");
    Claves.Add("kizo049");
    Claves.Add("kizo050");
    Claves.Add("kizo051");
    Claves.Add("kizo052");
    Claves.Add("kizo053");
    Claves.Add("kizo054");
    Claves.Add("kizo055");
    Claves.Add("kizo056");
    Claves.Add("kizo057");
    Claves.Add("kizo058");
    Claves.Add("kizo059");
    Claves.Add("kizo060");
    Claves.Add("kizo061");
    Claves.Add("kizo062");
    Claves.Add("kizo063");
    Claves.Add("kizo064");
    Claves.Add("kizo065");
    Claves.Add("kizo066");
    Claves.Add("kizo067");
    Claves.Add("kizo068");
    Claves.Add("kizo069");
    Claves.Add("kizo070");
    Claves.Add("kizo071");
    Claves.Add("kizo072");
    Claves.Add("kizo073");
    Claves.Add("kizo074");
    Claves.Add("kizo075");
    Claves.Add("kizo076");
    Claves.Add("kizo077");
    Claves.Add("kizo078");
    Claves.Add("kizo079");
}

/*
void setup() 
{
Serial.begin(9600);
for (int a = 0; a < 81; a++) 
{
if(a==0)
{
    Serial.println("list.Add('kizo00');");
    //Serial.println(");");
}
else
{
    String text = "list.Add('kizo0";
    
    text.concat(a);
    text += "');";
    Serial.println(text);
}
}
}
void loop() {}
*/

void prowrite(String text,bool rly)
{
  unsigned int largo = text.length();
  if(largo!=0)
  {
    for(unsigned int i=0;i<=largo-1;i++)
    {
      unsigned int ELVACIOA;
      String resulta = text.substring(i,i+1);
        if(resulta==" ")
        {
          Keyboard.write(' ');
        }
        else
        {
          ELVACIOA=Results(resulta);
          if(ELVACIOA==0)
          {
            if(rly%2)
            {
              Keyboard.println(resulta);
            }
            else
            {
              Keyboard.print(resulta);
            }
          }
          else
          {
            Keyboard.write(ELVACIOA);
          }
        }
    } 
    if(rly%2)
    {
      Keyboard.println(""); 
    }
  }
}

int Results(String result)
{
  unsigned int ELVACIO;
  if(result=="!"){ELVACIO=33;}
  if(result=="¨"){ELVACIO=34;}
  if(result=="·"){ELVACIO=35;}
  if(result=="$"){ELVACIO=36;}
  if(result=='%'){ELVACIO=37;}
  if(result=="/"){ELVACIO=38;}
  if(result=="´"){ELVACIO=39;}
  if(result==")"){ELVACIO=40;}
  if(result=="="){ELVACIO=41;}
  if(result=="("){ELVACIO=42;}
  if(result=="¿"){ELVACIO=43;}
  if(result==","){ELVACIO=44;}
  if(result=="'"){ELVACIO=45;}
  if(result=="."){ELVACIO=46;}
  if(result=="-"){ELVACIO=47;}
  if(result=="0"){ELVACIO=48;}
  if(result=="1"){ELVACIO=49;}
  if(result=="2"){ELVACIO=50;}
  if(result=="3"){ELVACIO=51;}
  if(result=="4"){ELVACIO=52;}
  if(result=="5"){ELVACIO=53;}
  if(result=="6"){ELVACIO=54;}
  if(result=="7"){ELVACIO=55;}
  if(result=="8"){ELVACIO=56;}
  if(result=="9"){ELVACIO=57;}
  if(result=="Ñ"){ELVACIO=58;}
  if(result=="ñ"){ELVACIO=59;}
  if(result==";"){ELVACIO=60;}
  if(result=="¡"){ELVACIO=61;}
  if(result==":"){ELVACIO=62;}
  if(result=="_"){ELVACIO=63;}
  if(result=="A"){ELVACIO=65;}
  if(result=="B"){ELVACIO=66;}
  if(result=="C"){ELVACIO=67;}
  if(result=="D"){ELVACIO=68;}
  if(result=="E"){ELVACIO=69;}
  if(result=="F"){ELVACIO=70;}
  if(result=="G"){ELVACIO=71;}
  if(result=="H"){ELVACIO=72;}
  if(result=="I"){ELVACIO=73;}
  if(result=="J"){ELVACIO=74;}
  if(result=="K"){ELVACIO=75;}
  if(result=="L"){ELVACIO=76;}
  if(result=="M"){ELVACIO=77;}
  if(result=="N"){ELVACIO=78;}
  if(result=="O"){ELVACIO=79;}
  if(result=="P"){ELVACIO=80;}
  if(result=="Q"){ELVACIO=81;}
  if(result=="R"){ELVACIO=82;}
  if(result=="S"){ELVACIO=83;}
  if(result=="T"){ELVACIO=84;}
  if(result=="U"){ELVACIO=85;}
  if(result=="V"){ELVACIO=86;}
  if(result=="W"){ELVACIO=87;}
  if(result=="X"){ELVACIO=88;}
  if(result=="Y"){ELVACIO=89;}
  if(result=="Z"){ELVACIO=90;}
  if(result=="`"){ELVACIO=91;}
  if(result=="ç"){ELVACIO=92;}
  if(result=="+"){ELVACIO=93;}
  if(result=="&"){ELVACIO=94;}
  if(result=="?"){ELVACIO=95;}
  if(result=="º"){ELVACIO=96;}
  if(result=="a"){ELVACIO=97;}
  if(result=="b"){ELVACIO=98;}
  if(result=="c"){ELVACIO=99;}
  if(result=="d"){ELVACIO=100;}
  if(result=="e"){ELVACIO=101;}
  if(result=="f"){ELVACIO=102;}
  if(result=="g"){ELVACIO=103;}
  if(result=="h"){ELVACIO=104;}
  if(result=="i"){ELVACIO=105;}
  if(result=="j"){ELVACIO=106;}
  if(result=="k"){ELVACIO=107;}
  if(result=="l"){ELVACIO=108;}
  if(result=="m"){ELVACIO=109;}
  if(result=="n"){ELVACIO=110;}
  if(result=="o"){ELVACIO=111;}
  if(result=="p"){ELVACIO=112;}
  if(result=="q"){ELVACIO=113;}
  if(result=="r"){ELVACIO=114;}
  if(result=="s"){ELVACIO=115;}
  if(result=="t"){ELVACIO=116;}
  if(result=="u"){ELVACIO=117;}
  if(result=="v"){ELVACIO=118;}
  if(result=="w"){ELVACIO=119;}
  if(result=="x"){ELVACIO=120;}
  if(result=="y"){ELVACIO=121;}
  if(result=="z"){ELVACIO=122;}
  if(result=="^"){ELVACIO=123;}
  if(result=="Ç"){ELVACIO=124;}
  if(result=="*"){ELVACIO=125;}
  if(result=="ª"){ELVACIO=126;}
  return(ELVACIO);
}
