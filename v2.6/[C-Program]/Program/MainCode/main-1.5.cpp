/*
Compilar con codeblocks este mismo codigo
Para agarrar los diamantes correctamente, setear graficos bajos y dibujar brillo intensidad 3, con RenderGlowMinLuminance en value 0.400, el defecto es 1.0, desabilitar teleporte con 2 clicks

> Settings > Compiler > Linker settings
C:\MinGW\lib\libbgi.a ==== -lbgi -lgdi32 -lcomdlg32 -luuid -loleaut32 -lole32
C:\MinGW\lib\libcurldll.a
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
*/

#include <math.h>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <Windows.h>
#include <Winuser.h>
#include <ctype.h>
#include <math.h>
#include <unistd.h>
#include <curl/curl.h>

float h, s, v;
int cursor_x = 0;
int cursor_y = 0;

void LeftClick()
{
  INPUT    Input={0};
  // left down
  Input.type      = INPUT_MOUSE;
  Input.mi.dwFlags  = MOUSEEVENTF_LEFTDOWN;
  ::SendInput(1,&Input,sizeof(INPUT));

  // left up
  ::ZeroMemory(&Input,sizeof(INPUT));
  Input.type      = INPUT_MOUSE;
  Input.mi.dwFlags  = MOUSEEVENTF_LEFTUP;
  ::SendInput(1,&Input,sizeof(INPUT));
}

static size_t WriteCallback(void *contents, size_t size, size_t nmemb, void *userp)
{
    ((std::string*)userp)->append((char*)contents, size * nmemb);
    return size * nmemb;
}

char *strndup(char *str, int chars)
{
    char *buffer;
    int n;

    buffer = (char *) malloc(chars +1);
    if (buffer)
    {
        for (n = 0; ((n < chars) && (str[n] != 0)) ; n++) buffer[n] = str[n];
        buffer[n] = 0;
    }

    return buffer;
}

bool isRunning(LPCSTR pName)
{
	HWND hwnd;
	hwnd = FindWindow(NULL, pName);
	if(( hwnd == GetForegroundWindow()) && IsWindowVisible(hwnd)){
		return true;
	} else {
		return false;
	}
}

float max(float a, float b, float c)
{
   return ((a > b)? (a > c ? a : c) : (b > c ? b : c));
}

float min(float a, float b, float c)
{
   return ((a < b)? (a < c ? a : c) : (b < c ? b : c));
}

void rgb_to_hsv(float r, float g, float b)
{
   h=0.0;
   s=0.0;
   v=0.0;
   r /= 255.0;
   g /= 255.0;
   b /= 255.0;
   float cmax = max(r, g, b);
   float cmin = min(r, g, b);
   float diff = cmax-cmin;
   if (cmax == cmin)
      h = 0;
   else if (cmax == r)
      h = fmod((60 * ((g - b) / diff) + 360), 360.0);
   else if (cmax == g)
      h = fmod((60 * ((b - r) / diff) + 120), 360.0);
   else if (cmax == b)
      h = fmod((60 * ((r - g) / diff) + 240), 360.0);
      if (cmax == 0)
         s = 0;
      else
         s = (diff / cmax) * 100;
   v = cmax * 100;
}

void string2hexString(char* input, char* output)
{
    int loop;
    int i;
    i=0;
    loop=0;
    while(input[loop] != '\0')
    {
        sprintf((char*)(output+i),"%02X", input[loop]);
        loop+=1;
        i+=2;
    }
    output[i++] = '\0';
}

void smart_key(char* text)
{
    INPUT ipa;
    ipa.type = INPUT_KEYBOARD;
    ipa.ki.wScan = 0;
    ipa.ki.time = 0;
    ipa.ki.dwExtraInfo = 0;
    for (int i = 0; i < strlen(text); i++)
    {
        char keyz = text[i];
        keyz = toupper(keyz);
        int outword = (int)keyz;
        ipa.ki.wVk = outword;
        ipa.ki.dwFlags = 0;
        SendInput(1, &ipa, sizeof(INPUT));
        ipa.ki.wVk = outword;
        ipa.ki.dwFlags = KEYEVENTF_KEYUP;
        SendInput(1, &ipa, sizeof(INPUT));
    }
}

void resaltar()
{
    printf("\n>> Press 'X' to start, or press 'C' for exit.\n");
}

void SaveCursorPos(LPCSTR pName)
{
    HWND hwnd;
    hwnd = FindWindow(NULL,pName);
    POINT screen_cursor_pos;
    RECT client_rect;
    GetCursorPos(&screen_cursor_pos);
    GetClientRect(hwnd,&client_rect);
    cursor_x=screen_cursor_pos.x-client_rect.left;
    cursor_y=screen_cursor_pos.y-client_rect.top;
}

int main(void)
{
    //Switcher1:
    char main_switch1[] = "http://192.168.3.38/secondlife/datos/switcher1-variable-url.txt";
    char php0_switch1[] = "http://192.168.3.38/secondlife/switcher1/variable0.php";
    //////////////

    //Switcher2:
    char main_switch2[] = "http://192.168.3.38/secondlife/datos/switcher2-variable-url.txt";
    char php0_switch2[] = "http://192.168.3.38/secondlife/switcher2/variable0.php";
    //////////////

    //Switcher3:
    char main_switch3[] = "http://192.168.3.38/secondlife/datos/switcher3-variable-url.txt";
    char php0_switch3[] = "http://192.168.3.38/secondlife/switcher3/variable0.php";
    //////////////

    //Switcher4:
    char main_switch4[] = "http://192.168.3.38/secondlife/datos/switcher4-variable-url.txt";
    char php0_switch4[] = "http://192.168.3.38/secondlife/switcher4/variable0.php";
    //////////////

    //Switcher5:
    char main_switch5[] = "http://192.168.3.38/secondlife/datos/switcher5-variable-url.txt";
    char php0_switch5[] = "http://192.168.3.38/secondlife/switcher5/variable0.php";
    //////////////

    //Switcher6:
    char main_switch6[] = "http://192.168.3.38/secondlife/datos/switcher6-variable-url.txt";
    char php0_switch6[] = "http://192.168.3.38/secondlife/switcher6/variable0.php";
    //////////////

    char textin[] = "ErikV7 Hud"; //El nombre del HUD sin signos sin puntos exclamaciones,etc.
    char stringx[500] = "Firestorm-Releasex64 6.3.9.58205 - "; //El programa que se ejecutara en una carpeta en C:/ no en program files

    unsigned int diamantes = 0;
    unsigned int rojo = 0; //10 rojos
    unsigned int amarillos = 0; //5 amarillos
    unsigned int naranjas = 0; //3 naranjas
    unsigned int verdes = 0; //1 verde
    //unsigned int azules = 0;
    unsigned int slr = 0;
    unsigned int manual = 0;
    unsigned int LOL = 0;
    unsigned int apretarm = 0;
    unsigned int starthud = 0;
    unsigned int cages = 0;
    unsigned int click = 0;
    unsigned int terminarhud = 0;
    unsigned int newhud = 0;
    unsigned int newhud2 = 0;
    char volatil[500];
    int status = 0;
    int run_one_time = 0;
    int run_one_time2 = 0;

    CURL* curl;
    CURLcode res;
    CURLcode result;
    std::string readBuffer;

    printf("=========================================================");
    printf("\n>> Linden Realms Cheat/Hack - C/C++ Software by ErikV7 <<");
    printf("\n=========================================================");
    printf("\n>> Once started, please do not left out firestorm windows.");
    resaltar();
    while(1)
    {
        if(status==1 && isRunning(volatil)==false)
        {
            status=0;
            puts("\t");
            resaltar();
        }
        if(isRunning(volatil)==true)
        {
            INPUT ip;
            ip.type = INPUT_KEYBOARD;
            ip.ki.wScan = 0;
            ip.ki.time = 0;
            ip.ki.dwExtraInfo = 0;
            status=1;
            if(run_one_time==0)
            {
                Sleep(3000);
                printf("\n>> [Started]");
                /////////////////////////////////////////// RUN MODE
                // Press the key
                ip.ki.wVk = 0x11;
                ip.ki.dwFlags = 0;
                SendInput(1, &ip, sizeof(INPUT));
                // Press the key
                ip.ki.wVk = 0x52;
                ip.ki.dwFlags = 0;
                SendInput(1, &ip, sizeof(INPUT));
                // Releases the key ///////////////
                ip.ki.wVk = 0x11;
                ip.ki.dwFlags = KEYEVENTF_KEYUP;
                SendInput(1, &ip, sizeof(INPUT));
                ///////////////////////////////////
                ip.ki.wVk = 0x52;
                ip.ki.dwFlags = KEYEVENTF_KEYUP;
                SendInput(1, &ip, sizeof(INPUT));
                ///////////////////////////////////////////

                if(manual==0)
                {
                    ip.ki.wVk = 0x4D;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    Sleep(5000);
                    ip.ki.wVk = 0x4D;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    Sleep(3000);
                    SaveCursorPos(volatil);
                    Sleep(1000);
                    puts("\n>> Middle Cursor position SAVED, you can move mouse now.");
                }

                if(newhud==1)
                {
                    Sleep(1000);
                    /////////////////////////////////////////// INVENTARIO si tiene el hud puesto no
                    // Press the key
                    ip.ki.wVk = 0x11;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    // Press the key
                    ip.ki.wVk = 0x49;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    // Releases the key ///////////////
                    ip.ki.wVk = 0x11;
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    ///////////////////////////////////
                    ip.ki.wVk = 0x49;
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    ///////////////////////////////////////////
                    newhud=0;
                    newhud2=1;
                    Sleep(1000);
                    smart_key(textin);
                    puts(">> Debes solo añadirte el HUD y aceptar los permisos.");
                }
                run_one_time=1;
            }
            if(starthud==1)
            {
                if(run_one_time2==0)
                {
                    //no loop here, run one time
                    Sleep(1000);
                    if(newhud2==1)
                    {
                        /////////////////////////////////////////// CERRAR INVENTARIO
                        // Press the key
                        ip.ki.wVk = 0x11;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        // Press the key
                        ip.ki.wVk = 0x49;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        // Releases the key ///////////////
                        ip.ki.wVk = 0x11;
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        ///////////////////////////////////
                        ip.ki.wVk = 0x49;
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        ///////////////////////////////////////////
                        newhud2=0;
                    }

                    if(manual==1)
                    {
                        /////////////////////////////////////////// WIREFRAME
                        // Press the key
                        ip.ki.wVk = 0x11;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        // Press the key
                        ip.ki.wVk = 0xA0;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        // Press the key
                        ip.ki.wVk = 0x52;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        // Releases the key ///////////////
                        ip.ki.wVk = 0x11;
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        ///////////////////////////////////
                        ip.ki.wVk = 0xA0;
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        ///////////////////////////////////
                        ip.ki.wVk = 0x52;
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        /////////////////////////////////////////// */
                    }
                    else
                    {
                        puts(">> HUD Iniciando...");

                        /////////////////////////////////////////// abrir chat
                        // Press the key
                        ip.ki.wVk = 0x11;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        // Press the key
                        ip.ki.wVk = 0x54;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        // Releases the key ///////////////
                        ip.ki.wVk = 0x11;
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        ///////////////////////////////////
                        ip.ki.wVk = 0x54;
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        ///////////////////////////////////////////
                        Sleep(1000);
                        char textin2[] = "ax";
                        smart_key(textin2);
                        Sleep(1000);
                        ip.ki.wVk = 0x0D;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));

                        /////////////////////////////////////////// cerrar chat
                        // Press the key
                        ip.ki.wVk = 0x11;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        // Press the key
                        ip.ki.wVk = 0x54;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        // Releases the key ///////////////
                        ip.ki.wVk = 0x11;
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        ///////////////////////////////////
                        ip.ki.wVk = 0x54;
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        ///////////////////////////////////////////

                        puts(">> HUD Iniciado");
                        puts(">> Presiona W para parar el agarrar diamantes.");
                    }
                    run_one_time2=1;
                }
                if(manual==0)
                {
                    if(diamantes==1)
                    {
                        if(slr==1)
                        {
                            SetCursorPos(cursor_x, cursor_y);
                            Sleep(6000);
                            slr=0;
                        }
                        //if((rojo>=10 && amarillos>=5 && naranjas>=3 && verdes>=1) || (GetAsyncKeyState(0x57)))
                        if((amarillos>=5 && naranjas>=3 && verdes>=1) || (GetAsyncKeyState(0x57)))
                        {
                            puts(">> Recolleccion Finalizada, apagando... OK");
                            //Switcher4:
                            ip.ki.wVk = 0x57;
                            ip.ki.dwFlags = 0;
                            SendInput(1, &ip, sizeof(INPUT));
                            ip.ki.dwFlags = KEYEVENTF_KEYUP;
                            SendInput(1, &ip, sizeof(INPUT));
                            curl = curl_easy_init();
                            readBuffer="";
                            if(curl)
                            {
                                curl_easy_setopt(curl, CURLOPT_URL, php0_switch4);
                                curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                                curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                                res = curl_easy_perform(curl);
                                curl_easy_cleanup(curl);
                            }
                            //////////////
                            diamantes=0;
                        }
                        else
                        {
                            SetCursorPos(cursor_x, cursor_y);

                            if(LOL==1)
                            {
                                POINT p;
                                COLORREF color;
                                HDC hDC;
                                BOOL b;

                                hDC = GetDC(NULL);
                                if (hDC == NULL)
                                    return 3;

                                b = GetCursorPos(&p);
                                if (!b)
                                    return 2;

                                color = GetPixel(hDC, p.x, p.y);
                                if (color == CLR_INVALID)
                                    return 1;

                                ReleaseDC(GetDesktopWindow(), hDC);
                                int R = GetRValue(color);
                                int G = GetGValue(color);
                                int B = GetBValue(color);

                                rgb_to_hsv(R, G, B);

                                if(h!=0.0)
                                {
                                    if((h>0.0 && h<=3) || (h>=358.0 && h<=359.9))
                                    {
                                        puts(">> Rojo");
                                        ip.ki.wVk = 0x51;
                                        ip.ki.dwFlags = 0;
                                        SendInput(1, &ip, sizeof(INPUT));
                                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                                        SendInput(1, &ip, sizeof(INPUT));
                                        rojo+=1;
                                    }
                                    else if(h>59 && h<=61 && s>=61)//62
                                    {
                                        puts(">> Naranja");
                                        ip.ki.wVk = 0x51;
                                        ip.ki.dwFlags = 0;
                                        SendInput(1, &ip, sizeof(INPUT));
                                        Sleep(100);
                                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                                        SendInput(1, &ip, sizeof(INPUT));
                                        naranjas+=1;
                                    }
                                    else if(h>59 && h<=61)
                                    {
                                        puts(">> Amarillo");
                                        ip.ki.wVk = 0x51;
                                        ip.ki.dwFlags = 0;
                                        SendInput(1, &ip, sizeof(INPUT));
                                        Sleep(100);
                                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                                        SendInput(1, &ip, sizeof(INPUT));
                                        amarillos+=1;
                                    }
                                    else if(h>90 && h<=101)
                                    {
                                        puts(">> Verde");
                                        ip.ki.wVk = 0x51;
                                        ip.ki.dwFlags = 0;
                                        SendInput(1, &ip, sizeof(INPUT));
                                        Sleep(100);
                                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                                        SendInput(1, &ip, sizeof(INPUT));
                                        verdes+=1;
                                    }
                                }
                                LeftClick();
                                Sleep(1500);
                                LeftClick();
                            }
                            else
                            {
                                LeftClick();
                                LeftClick();
                                LeftClick();
                            }
                        }
                    }
                    else
                    {
                        curl = curl_easy_init();
                        readBuffer="";
                        if(curl) {
                            curl_easy_setopt(curl, CURLOPT_URL, main_switch4);
                            curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                            curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                            res = curl_easy_perform(curl);
                            curl_easy_cleanup(curl);
                            if(readBuffer.find("1") != std::string::npos && diamantes==0)
                            {
                                rojo=0;
                                amarillos=0;
                                verdes=0;
                                naranjas=0;
                                slr=1;
                                diamantes=1;
                            }
                            else
                            {
                                diamantes=0;
                            }
                        }
                    }
                }
                if(terminarhud==1)
                {
                    /////////////////////////////////////////// cerrar aplicacion
                    // Press the key
                    ip.ki.wVk = 0x11;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    // Press the key
                    ip.ki.wVk = 0x51;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    // Releases the key ///////////////
                    ip.ki.wVk = 0x11;
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    ///////////////////////////////////
                    ip.ki.wVk = 0x51;
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    ///////////////////////////////////////////

                    //Switcher1:
                    curl = curl_easy_init();
                    readBuffer="";
                    if(curl)
                    {
                        curl_easy_setopt(curl, CURLOPT_URL, php0_switch1);
                        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                        res = curl_easy_perform(curl);
                        curl_easy_cleanup(curl);
                    }
                    //////////////

                    //Switcher2:
                    curl = curl_easy_init();
                    readBuffer="";
                    if(curl)
                    {
                        curl_easy_setopt(curl, CURLOPT_URL, php0_switch2);
                        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                        res = curl_easy_perform(curl);
                        curl_easy_cleanup(curl);
                    }
                    //////////////

                    //Switcher3:
                    curl = curl_easy_init();
                    if(curl)
                    {
                        curl_easy_setopt(curl, CURLOPT_URL, php0_switch3);
                        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                        res = curl_easy_perform(curl);
                        curl_easy_cleanup(curl);
                    }
                    //////////////

                    //Switcher4:
                    curl = curl_easy_init();
                    readBuffer="";
                    if(curl)
                    {
                        curl_easy_setopt(curl, CURLOPT_URL, php0_switch4);
                        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                        res = curl_easy_perform(curl);
                        curl_easy_cleanup(curl);
                    }
                    //////////////

                    //Switcher5:
                    curl = curl_easy_init();
                    readBuffer="";
                    if(curl)
                    {
                        curl_easy_setopt(curl, CURLOPT_URL, php0_switch5);
                        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                        res = curl_easy_perform(curl);
                        curl_easy_cleanup(curl);
                    }
                    //////////////

                    //Switcher6:
                    curl = curl_easy_init();
                    readBuffer="";
                    if(curl)
                    {
                        curl_easy_setopt(curl, CURLOPT_URL, php0_switch6);
                        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                        res = curl_easy_perform(curl);
                        curl_easy_cleanup(curl);
                    }
                    //////////////

                    starthud=0;
                    cages=0;
                    click=0;
                    terminarhud=0;
                    diamantes = 0;
                    rojo = 0;
                    amarillos = 0;
                    naranjas = 0;
                    apretarm = 0;
                    verdes = 0;
                    //azules = 0;
                }
                else
                {
                    curl = curl_easy_init();
                    readBuffer="";
                    if(curl) {
                        curl_easy_setopt(curl, CURLOPT_URL, main_switch5);
                        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                        res = curl_easy_perform(curl);
                        curl_easy_cleanup(curl);
                        if(readBuffer.find("1") != std::string::npos)
                        {
                            terminarhud=1;
                        }
                        else
                        {
                            terminarhud=0;
                        }
                    }
                }
                if(manual==0)
                {
                    if(click==1)
                    {
                        SetCursorPos(cursor_x, cursor_y);
                        click=0;
                        LeftClick();
                        Sleep(100);
                        LeftClick();
                        Sleep(100);
                        LeftClick();
                        Sleep(100);
                        LeftClick();
                        Sleep(100);
                        LeftClick();
                        Sleep(1000);
                        Sleep(1000);
                        /////////////////////////////////////////// abrir chat
                        // Press the key
                        ip.ki.wVk = 0x11;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        // Press the key
                        ip.ki.wVk = 0x54;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        // Releases the key ///////////////
                        ip.ki.wVk = 0x11;
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        ///////////////////////////////////
                        ip.ki.wVk = 0x54;
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        ///////////////////////////////////////////
                        Sleep(1000);
                        char textin2[] = "bx";
                        smart_key(textin2);
                        Sleep(1000);
                        ip.ki.wVk = 0x0D;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        Sleep(1000);
                        smart_key(textin2);
                        Sleep(1000);
                        ip.ki.wVk = 0x0D;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        Sleep(1000);
                        /////////////////////////////////////////// cerrar chat
                        // Press the key
                        ip.ki.wVk = 0x11;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        // Press the key
                        ip.ki.wVk = 0x54;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        // Releases the key ///////////////
                        ip.ki.wVk = 0x11;
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        ///////////////////////////////////
                        ip.ki.wVk = 0x54;
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        ///////////////////////////////////////////

                        //Switcher3:
                        curl = curl_easy_init();
                        readBuffer="";
                        if(curl)
                        {
                            curl_easy_setopt(curl, CURLOPT_URL, php0_switch3);
                            curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                            curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                            res = curl_easy_perform(curl);
                            curl_easy_cleanup(curl);
                        }
                        //////////////
                    }
                    else
                    {
                        curl = curl_easy_init();
                        readBuffer="";
                        if(curl) {
                            curl_easy_setopt(curl, CURLOPT_URL, main_switch3);
                            curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                            curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                            res = curl_easy_perform(curl);
                            curl_easy_cleanup(curl);
                            if(readBuffer.find("1") != std::string::npos)
                            {
                                click=1;
                            }
                            else
                            {
                                click=0;
                            }
                        }
                    }
                    if(apretarm==1)
                    {
                        ip.ki.wVk = 0x4D;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        apretarm=0;
                        //Switcher6:
                        curl = curl_easy_init();
                        readBuffer="";
                        if(curl)
                        {
                            curl_easy_setopt(curl, CURLOPT_URL, php0_switch6);
                            curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                            curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                            res = curl_easy_perform(curl);
                            curl_easy_cleanup(curl);
                        }
                        //////////////
                    }
                    else
                    {
                        curl = curl_easy_init();
                        readBuffer="";
                        if(curl) {
                            curl_easy_setopt(curl, CURLOPT_URL, main_switch6);
                            curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                            curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                            res = curl_easy_perform(curl);
                            curl_easy_cleanup(curl);
                            if(readBuffer.find("1") != std::string::npos)
                            {
                                apretarm=1;
                            }
                            else
                            {
                                apretarm=0;
                            }
                        }
                    }
                    if(cages==1)
                    {
                        ip.ki.wVk = 0x0D;
                        ip.ki.dwFlags = 0;
                        SendInput(1, &ip, sizeof(INPUT));
                        ip.ki.dwFlags = KEYEVENTF_KEYUP;
                        SendInput(1, &ip, sizeof(INPUT));
                        cages=0;
                        //Switcher2:
                        curl = curl_easy_init();
                        readBuffer="";
                        if(curl)
                        {
                            curl_easy_setopt(curl, CURLOPT_URL, php0_switch2);
                            curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                            curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                            res = curl_easy_perform(curl);
                            curl_easy_cleanup(curl);
                        }
                        //////////////
                    }
                    else
                    {
                        curl = curl_easy_init();
                        readBuffer="";
                        if(curl) {
                            curl_easy_setopt(curl, CURLOPT_URL, main_switch2);
                            curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                            curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                            res = curl_easy_perform(curl);
                            curl_easy_cleanup(curl);
                            if(readBuffer.find("1") != std::string::npos)
                            {
                                cages=1;
                            }
                            else
                            {
                                cages=0;
                            }
                        }
                    }
                }
            }
            else
            {
                curl = curl_easy_init();
                readBuffer="";
                if(curl) {
                    curl_easy_setopt(curl, CURLOPT_URL, main_switch1);
                    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                    res = curl_easy_perform(curl);
                    curl_easy_cleanup(curl);
                    if(readBuffer.find("1") != std::string::npos)
                    {
                        starthud=1;
                    }
                    else
                    {
                        starthud=0;
                    }
                }
            }
        }
        else
        {
            if(GetAsyncKeyState(0x43)) // C key //https://docs.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes
            {
                printf("\n>> Good bye.");
                break;
            }
            else if(GetAsyncKeyState(0x58))
            {
                //Switcher1:
                curl = curl_easy_init();
                readBuffer="";
                if(curl)
                {
                    curl_easy_setopt(curl, CURLOPT_URL, php0_switch1);
                    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                    res = curl_easy_perform(curl);
                    curl_easy_cleanup(curl);
                }
                //////////////

                //Switcher2:
                curl = curl_easy_init();
                readBuffer="";
                if(curl)
                {
                    curl_easy_setopt(curl, CURLOPT_URL, php0_switch2);
                    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                    res = curl_easy_perform(curl);
                    curl_easy_cleanup(curl);
                }
                //////////////

                //Switcher3:
                curl = curl_easy_init();
                readBuffer="";
                if(curl)
                {
                    curl_easy_setopt(curl, CURLOPT_URL, php0_switch3);
                    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                    res = curl_easy_perform(curl);
                    curl_easy_cleanup(curl);
                }
                //////////////

                //Switcher4:
                curl = curl_easy_init();
                readBuffer="";
                if(curl)
                {
                    curl_easy_setopt(curl, CURLOPT_URL, php0_switch4);
                    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                    res = curl_easy_perform(curl);
                    curl_easy_cleanup(curl);
                }
                //////////////

                //Switcher5:
                curl = curl_easy_init();
                readBuffer="";
                if(curl)
                {
                    curl_easy_setopt(curl, CURLOPT_URL, php0_switch5);
                    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                    res = curl_easy_perform(curl);
                    curl_easy_cleanup(curl);
                }
                //////////////

                //Switcher6:
                curl = curl_easy_init();
                readBuffer="";
                if(curl)
                {
                    curl_easy_setopt(curl, CURLOPT_URL, php0_switch6);
                    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
                    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
                    res = curl_easy_perform(curl);
                    curl_easy_cleanup(curl);
                }
                //////////////

                INPUT ip;
                ip.type = INPUT_KEYBOARD;
                ip.ki.wScan = 0;
                ip.ki.time = 0;
                ip.ki.dwExtraInfo = 0;
                char usuario[500];
                char password[500];
                printf("\n>> Introduzca el usuario: ");
                scanf("%s", &usuario);
                if(strstr(usuario, "keiso0") != NULL)
                //if(&usuario.find("keiso0") != std::string::npos)
                {
                    printf("==================================\n");
                    printf(">> Modo Manual (SI=1/NO=0): ");
                    scanf("%d", &manual);
                    printf(">> Va a recolectar diamantes normalmente o a lo loco? (normalmente=1 / loco=0): ");
                    scanf("%d", &LOL);
                    printf(">> Buscar en el inventario un nuevo HUD? Incluye preguntas del permiso (SI=1/NO=0): ");
                    scanf("%d", &newhud);
                    char str1x[500] = "start /b cmd.exe /c C:/Firestorm-releasex64/Firestorm-releasex64.exe --noprobe --set InstallLanguage es --no-verify-ssl-cert --login ";
                    strcat(str1x,&usuario[0]);
                    strcat(str1x," Resident K Wengen/18/226/86 & exit");
                    system(str1x);
                    Sleep(13000);
                    ip.ki.wVk = 0x4b;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.wVk = 0x49;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.wVk = 0x5a;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.wVk = 0x4f;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    printf(">> Clave Asignada: kizo");
                    int caracteres_variable = 5;
                    int i;
                    for (i = 0; i < strlen(usuario); ++i)
                    {
                        if(i>caracteres_variable-1)
                        {
                            int size_output = 1;
                            char *result = strndup(usuario+i,size_output);
                            printf(&result[0]);
                            int value = 48 + atoi(result);
                            ip.ki.wVk = value;
                            ip.ki.dwFlags = 0;
                            SendInput(1, &ip, sizeof(INPUT));
                            ip.ki.dwFlags = KEYEVENTF_KEYUP;
                            SendInput(1, &ip, sizeof(INPUT));
                        }
                    }
                }
                else
                {
                    printf(">> Introduzca el password: ");
                    scanf("%s", &password);
                    printf("==================================\n");
                    printf(">> Modo Manual (SI=1/NO=0): ");
                    scanf("%d", &manual);
                    printf(">> Va a recolectar diamantes normalmente o a lo loco? (normalmente=1 / loco=0): ");
                    scanf("%d", &LOL);
                    printf(">> Buscar en el inventario un nuevo HUD? Incluye preguntas del permiso (SI=1/NO=0): ");
                    scanf("%d", &newhud);
                    char str1x[500] = "start /b cmd.exe /c C:/Firestorm-releasex64/Firestorm-releasex64.exe --noprobe --set InstallLanguage es --no-verify-ssl-cert --login ";
                    strcat(str1x,&usuario[0]);
                    strcat(str1x," Resident K Wengen/18/226/86 & exit");
                    system(str1x);
                    Sleep(13000);
                    ip.ki.wVk = 0x4b;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.wVk = 0x49;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.wVk = 0x5a;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.wVk = 0x4f;
                    ip.ki.dwFlags = 0;
                    SendInput(1, &ip, sizeof(INPUT));
                    ip.ki.dwFlags = KEYEVENTF_KEYUP;
                    SendInput(1, &ip, sizeof(INPUT));
                    printf(">> Clave Asignada: %s",password);
                    smart_key(password);
                }
                puts("\t");
                strcpy(volatil,stringx);
                strcat(volatil,usuario);
                printf(">> Software Foreground Window Name: %s",&volatil[0]);
                puts("\t");
                Sleep(1000);
                ip.ki.wVk = 0x0D;
                ip.ki.dwFlags = 0;
                SendInput(1, &ip, sizeof(INPUT));
                ip.ki.dwFlags = KEYEVENTF_KEYUP;
                SendInput(1, &ip, sizeof(INPUT));
                puts(">> Debes acomodar la ventana del firestorm en el inicio de sesion, no antes ni despues de logear. Luego no se debe tocar la ventana en el caso de no manual.");
                run_one_time=0;
                run_one_time2=0;
                newhud2=0;
                diamantes = 0;
                rojo = 0;
                amarillos = 0;
                apretarm=0;
                naranjas = 0;
                verdes = 0;
                //azules = 0;
            }
        }
    }
    return 0;
}
