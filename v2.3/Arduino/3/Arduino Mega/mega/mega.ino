/////////// SLAVE ARDUINO

#include "ListLib.h"
#include <Wire.h>

#define LED_DELAY 500

String COMMANDS;
unsigned int TIMER1;
boolean led;

List<char*> list;
List<char*> Claves;

void TIMERS(unsigned int T)
{
    if(T==0)
    {
        TIMER1 = millis()+LED_DELAY;
    }
}

void setup() 
{
    Serial.begin(9600);
    Again();
    pinMode(LED_BUILTIN,OUTPUT);
    TIMERS(0);
    AgregarCuentas();
    AgregarClaves();
}

void Again()
{
    Wire.begin(8);
    Wire.onReceive(receiveEvent);
}

void receiveEvent(int howMany) 
{
  while (1 < Wire.available())
  {
    char c = Wire.read();
    COMMANDS+=c;
  }
  Again();
}

void loop() 
{
    if(COMMANDS.substring(0,7)=="REQUEST" & COMMANDS.substring(COMMANDS.length()-1,COMMANDS.length()+1)=="F")
    {
        unsigned int ok = COMMANDS.substring(7,COMMANDS.length()-1).toInt();
        Wire.beginTransmission(9);
        Wire.write(("RECEIVED"+(String)list[ok]+"DD").c_str());
        Wire.endTransmission();
        Again();
        Again();
        COMMANDS="";
    }
    if(COMMANDS.substring(0,7)=="REQUES2" & COMMANDS.substring(COMMANDS.length()-1,COMMANDS.length()+1)=="O")
    {
        unsigned int ok = COMMANDS.substring(7,COMMANDS.length()-1).toInt();
        Wire.beginTransmission(9);
        Wire.write(("RECEIVE2"+(String)Claves[ok]+"XX").c_str());
        Wire.endTransmission();
        Again();
        Again();
        COMMANDS="";
    }
    if(millis()>=TIMER1)
    {
        if(led%2)
        {
            led=0;
            digitalWrite(LED_BUILTIN,LOW);
        }
        else
        {
            led=1;
            digitalWrite(LED_BUILTIN,HIGH);
        }
        TIMERS(0);
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
#include <Wire.h>
void setup() {
Wire.begin(9); // join i2c bus (address optional for master)
}

byte x = 0;

void loop() {
Wire.beginTransmission(8); // transmit to device #8
Wire.write("REQUEST7FF");        // sends five bytes
Wire.endTransmission();    // stop transmitting
delay(100);
}
*/