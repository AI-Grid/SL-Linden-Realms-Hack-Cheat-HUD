//http://blascarr.com/lessons/tcs3200-color-sensor-calibration/
//http://wiki.secondlife.com/wiki/Viewer_parameters
//https://www.arduino.cc/en/Tutorial/MasterWriter#targetText=Arduino%20or%20Genuino%20boards%20to,are%20used%20to%20accomplish%20this.

/////////// MASTER ARDUINO 

// Luego queda el tema del microfono detector tiempo etc
// Darle starrt al hud con un gesto de keyboard
// El tema del sensor de color hacerle un soporte 3d

/*
Pines:
Mega2560 20 (SDA) | 21 (SCL) | GND | RESET
Leonardo 2  (SDA) | 3  (SCL) | GND | 4
*/

#include <Wire.h>
#include <Keyboard.h>

char ctrldef = KEY_LEFT_CTRL;
char SHIFT = KEY_LEFT_SHIFT;

//Comandos: 's', 'a'
#define Reset 4
#define Pin_Microfono A0
boolean AGREGAR_HUD_NEW_KEYSTORES = true;
String HUD_NAME = "HKV2.3.";
unsigned int DondeEmpezarVARIABLE = 42; // Numero de cuenta por empezar, cuentas guardadas en el script del arduino MEGA.
unsigned int CuentaDondeFinalizar = 49; // Numero de cuenta que finalizara.
void Comandos_Luego_De_Iniciar_Sesion_Avatar() // Muy bueno para nuevos HUDS, quizas agregar teclas para añadir el nuevo HUD. Ctrl + I?
{
  //En el juego cuando apretas la tecla 'm' se centra el click mouse
  delay(15000);
  Keyboard.press(ctrldef);
  Keyboard.press('r');
  delay(100);
  Keyboard.releaseAll();
  delay(100);
  if(AGREGAR_HUD_NEW_KEYSTORES%2)
  {
    Keyboard.press(ctrldef);
    Keyboard.press(SHIFT);
    Keyboard.press('i');
    delay(100);
    Keyboard.releaseAll();
    delay(100);   

    Keyboard.println(HUD_NAME);
    delay(300);
    Keyboard.releaseAll();
    delay(300);     
  }
  delay(25000);
  Keyboard.press(ctrldef);
  Keyboard.press(SHIFT);
  Keyboard.press('r');
  delay(100);
  Keyboard.releaseAll();
  delay(100);
  Keyboard.press('m');
  delay(100);
  Keyboard.releaseAll();
  delay(100); 
  
    //delay(10000); // tiempo del login que tardo
    // // presionar tecla gesture start - activar
}

//Solo un contador (NO ES IMPORTANTE)
unsigned int CuentaDondeEmpezar = 0;
char ctrlGui = KEY_LEFT_GUI;
char CloseViewer = KEY_LEFT_ALT;
char CloseViewer2 = KEY_F4;


int OK=-1;

boolean ray;
boolean OK2;
boolean AX;

String Request;
String COMMANDS;

String RequestInformation(unsigned int Number)
{
    digitalWrite(Reset,LOW);
    delay(200);
    AGAINZ:
    String Request2;
    for(;;)
    {
        digitalWrite(Reset,HIGH);
        Wire.beginTransmission(8);
        Wire.write(("REQUEST"+(String)Number+"FF").c_str());
        Wire.endTransmission();
        if(Request.substring(0,8)=="RECEIVED" & Request.substring(Request.length()-1,Request.length()+1)=="D")
        {
            Request=Request.substring(8,Request.length()-1);
            break;
        }
        Again();
        if(Request.substring(0,8)=="RECEIVED" & Request.substring(Request.length()-1,Request.length()+1)=="D")
        {
            Request=Request.substring(8,Request.length()-1);
            break;
        }
        Again();
        Again();
    }
    Request2 = Request;
    Request="";
    if(Request2=="")
    {
      goto AGAINZ;
    }
    return(Request2);
}

String RequestInformationClaves(unsigned int Number)
{
    digitalWrite(Reset,LOW);
    delay(200);
    XZAGAINZ:
    String xRequest2;
    for(;;)
    {
        digitalWrite(Reset,HIGH);
        Wire.beginTransmission(8);
        Wire.write(("REQUES2"+(String)Number+"OO").c_str());
        Wire.endTransmission();
        if(Request.substring(0,8)=="RECEIVE2" & Request.substring(Request.length()-1,Request.length()+1)=="X")
        {
            Request=Request.substring(8,Request.length()-1);
            break;
        }
        Again();
        if(Request.substring(0,8)=="RECEIVE2" & Request.substring(Request.length()-1,Request.length()+1)=="X")
        {
            Request=Request.substring(8,Request.length()-1);
            break;
        }
        Again();
        Again();
    }
    xRequest2 = Request;
    Request="";
    if(xRequest2=="")
    {
      goto XZAGAINZ;
    }
    return(xRequest2);
}

void Server1()
{
    CuentaDondeEmpezar=DondeEmpezarVARIABLE;
    Serial.println("[Script Started] - Envia algo al serial para empezar con el Linden Realms Hack.");
    Serial.print("Cuenta de donde empieza: ");
    Serial.print(CuentaDondeEmpezar);
    Serial.print(" - ");
    Serial.println(RequestInformation(CuentaDondeEmpezar));
    Serial.print("Cuenta de donde finaliza: ");
    Serial.print(CuentaDondeFinalizar);
    Serial.print(" - ");
    Serial.println(RequestInformation(CuentaDondeFinalizar));
    Serial.println(" ");
}

void receiveEvent(int howMany) 
{
  while (1 < Wire.available()) { // loop through all but the last
    char c = Wire.read(); // receive byte as a character
    Request+=c;         // print the character
  }
  Again();
}

void setup() 
{
    Serial.begin(9600);
    pinMode(Reset,OUTPUT);
    pinMode(Pin_Microfono,INPUT);
    digitalWrite(Reset,HIGH);
    Again();
    Keyboard.begin();
    delay(101);
    Keyboard.releaseAll();
    OK2=0;
}

void Again()
{
    Wire.begin(9);
    Wire.onReceive(receiveEvent);
}

void loop() 
{
    digitalWrite(Reset,HIGH);
    if(Serial.available()>0)
    {
      COMMANDS=Serial.readString();  
      if(COMMANDS=="a"|COMMANDS=="s"|COMMANDS.substring(0,1)=="a"|COMMANDS.substring(0,1)=="s")
      {
        if(COMMANDS.substring(0,1)!="s" & COMMANDS!="s")
        {
          COMMANDS="";
        }
        ray=1;
      }
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
        if(ray%2|COMMANDS.substring(0,1)=="a"|CuentaDondeEmpezar==DondeEmpezarVARIABLE)//analogRead(Pin_Microfono)==1023|COMMANDS=="a")
        {
          if(CuentaDondeEmpezar!=0 & ray!=1 & COMMANDS.substring(0,1)!="a" & COMMANDS!="a")
          {
            Keyboard.press(CloseViewer);
            Keyboard.press(CloseViewer2);
            delay(100);
            Keyboard.releaseAll();
            delay(100);
          }
          ray=0;
          Keyboard.press(ctrlGui);
          Keyboard.press('r');
          delay(100);
          Keyboard.releaseAll();
          delay(100);
          Keyboard.println("cmd");
          delay(500);
          agaX:
          delay(25);
          String clave = RequestInformationClaves(CuentaDondeEmpezar);
          if(clave==""|clave==" ")
          {
            Serial.println("[ERROR] Intentando conseguir de vuelta la clave...");
            delay(25);
            goto agaX;
          }
          aGeX:
          delay(25);
          String usuario = RequestInformation(CuentaDondeEmpezar);
          if(usuario==""|usuario==" ")
          {
            Serial.println("[ERROR] Intentando conseguir de vuelta el usuario...");
            delay(25);
            goto aGeX;
          }
          prowrite("C:/Firestorm-releasex64/Firestorm-releasex64.exe --noprobe --set InstallLanguage es --no-verify-ssl-cert --login "
          +usuario
          +" Resident K Wengen/18/226/86"
          +" & exit" 
          ,true);
          delay(500);
          Keyboard.releaseAll();
          delay(101);
          delay(11000);
          prowrite(clave,true);
          delay(1000);
          Keyboard.releaseAll();
          delay(101);
          Serial.println("Usuario Logeado Como: "+(String)usuario);
          Comandos_Luego_De_Iniciar_Sesion_Avatar();
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
