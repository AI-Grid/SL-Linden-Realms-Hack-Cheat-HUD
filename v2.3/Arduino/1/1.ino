//http://blascarr.com/lessons/tcs3200-color-sensor-calibration/
//http://wiki.secondlife.com/wiki/Viewer_parameters
//acer otro serial para arduino leonardo ya que setup no funciona para serial
#include "ListLib.h"
#include <Keyboard.h>

int CuentaDondeEmpezar = 0;
int CuentaDondeFinalizar = 79;

char ctrlGui = KEY_LEFT_GUI;
char CloseViewer = KEY_LEFT_ALT;
char CloseViewer2 = KEY_F4;
List<char*> list;
List<char*> Claves;
int OK;
int OK2;

void setup() 
{
    Serial.begin(9600);
    Keyboard.begin();
    delay(101);
    Keyboard.releaseAll();
    Serial.println("[Wait Please... Loading...]");
    AgregarCuentas();
    AgregarClaves();
    OK2=0;
    OK=1;
    Serial.println(" ");
    Serial.println("[Script Started] - Envia algo al serial para empezar con el Linden Realms Hack.");
    Serial.print("Cuenta de donde empieza: ");
    Serial.println(list[CuentaDondeEmpezar]);
    Serial.print("Cuenta de donde finaliza: ");
    Serial.println(list[CuentaDondeFinalizar]);
    Serial.println(" ");
}

void loop() 
{
    if(OK%2)
    {
        if(Serial.available()>0) 
        {
            if(Serial.read()!=0)
            {
                if(OK2%2)
                {
                    Serial.println("[Hack Stopped By User Into Serial]");
                    OK2=0;
                    delay(100);
                    Keyboard.releaseAll();
                    delay(100);
                }
                else
                {
                    Serial.println("[Hack Running]");
                    OK2=1;
                }
                OK=0;
                return;
            }
        }
    }
    if(OK2%2)
    {
        if(CuentaDondeEmpezar==0) //o | si detecta otro sonido del hud que termino para pasar a otra cuenta
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
            //Abrir cmd y poner comando para abrir viewer con user y pass //Serial.println(list[CuentaDondeEmpezar]); // Guardar lista claves
            CuentaDondeEmpezar++;
        }
        if(CuentaDondeEmpezar>CuentaDondeFinalizar)
        {
            Serial.println("[Hack Stopped By The Finish Account]");
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
    ;
}

/*
void setup() 
{
Serial.begin(960");
for (int a = 0; a < 81; a++) 
{
if(a==0)
{
    Serial.println("list.Add("keiso00");");
    //Serial.println(");");
}
else if(a==14 )
{
    Serial.println("list.Add("keiso14");");
}
else if(a==15)
{
    Serial.println("list.Add("keiso15");");
}
else
{
    String text = "list.Add("keiso0";
    
    text.concat(");
    text += "");";
    Serial.println(tex");
}
}
}
void loop() {}
*/