#include <windows.h>
#include <winuser.h>

/*
#ifdef __STDC_ALLOC_LIB__
#define __STDC_WANT_LIB_EXT2__ 1
#else
#define _POSIX_C_SOURCE 200809L
#endif*/
 
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

char usuario[] = "";


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

//void DecToHexStr(int dec, char *str)
//{ 
//    sprintf(str, "%X", dec); 
//}

  
int main()
{
    INPUT ip;


    printf("\nIntroduzca el usuario: ");
    scanf("%s", &usuario);

    printf("OK");

    char str1[] = "start /b cmd.exe /c C:/Firestorm-releasex64/Firestorm-releasex64.exe --noprobe --set InstallLanguage es --no-verify-ssl-cert --login ";
    strcat(str1,&usuario[0]);
    strcat(str1," Resident K Wengen/18/226/86 & exit");
    system(str1);

    Sleep(10000);

    // Set up a generic keyboard event.
    ip.type = INPUT_KEYBOARD;
    ip.ki.wScan = 0; // hardware scan code for key
    ip.ki.time = 0;
    ip.ki.dwExtraInfo = 0;

    // Press the "K" key
    ip.ki.wVk = 0x4b; // virtual-key code for the "a" key
    ip.ki.dwFlags = 0; // 0 for key press
    SendInput(1, &ip, sizeof(INPUT));
 
    // Release the "k" key
    ip.ki.dwFlags = KEYEVENTF_KEYUP; // KEYEVENTF_KEYUP for key release
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

    printf("\nClave Asignada: kizo");



    /*    ip.ki.wVk = 55;
    ip.ki.dwFlags = 0;
    SendInput(1, &ip, sizeof(INPUT));
    ip.ki.dwFlags = KEYEVENTF_KEYUP;
    SendInput(1, &ip, sizeof(INPUT));
*/


   /* int a;

    for (a = 0; a < 100; ++a)
    {
          printf("%d ", a);
        ip.ki.wVk = a;
        ip.ki.dwFlags = 0;
        SendInput(1, &ip, sizeof(INPUT));
        ip.ki.dwFlags = KEYEVENTF_KEYUP;
        SendInput(1, &ip, sizeof(INPUT));       
    }
*/
    int caracteres_variable = 5;//kizo
    int i;
    for (i = 0; i < strlen(usuario); ++i)
    {
        if(i>caracteres_variable-1)
        {
            int size_output = 1;//caracteres que saldran
            char *result = strndup(usuario+i,size_output);//como un substring
            //char result[] = usuario.substr(i,i);
    printf(&result[0]);

/*
48=0
49=1
50=2
51=3
52=4
53=5
54=6
55=7
56=8
57=9
*/
//55=7
            //ip.ki.wVk = 0x00;
            int value = 48 + atoi(result);
            /*if(value==0)
            {
                printf("\nok2");
            }*/

            /*char hex[] = "";
            DecToHexStr(result, hex);
            printf("\n");
            printf(hex);*/
            /*
            char *str = &result[0];
            if(*str == '\0')
            {
                ip.ki.wVk = 0x00;
            }
            if(*str == '\1')
            {
                ip.ki.wVk = 0x01;
            }
            if(*str == '\2')
            {
                printf("\nOK");
                ip.ki.wVk = 0x02;
            }
            if(*str == '\3')
            {
                ip.ki.wVk = 0x03;
            }
            if(&str[0]=="4")
            {
                ip.ki.wVk = 0x04;
            }
            if(&str[0]=="5")
            {
                ip.ki.wVk = 0x05;
            }
            if(&str[0]=="6")
            {
                ip.ki.wVk = 0x06;
            }
            if(&str[0]=="7")
            {
                ip.ki.wVk = 0x07;
            }
            if(&str[0]=="8")
            {
                ip.ki.wVk = 0x08;
            }
            if(&str[0]=="9")
            {
                ip.ki.wVk = 0x09;
            }
*/
    //printf(&we[0]);/*
            //int hexa = atoi(&we[0]);
            //ip.ki.wVk = intReturnHexaDec(&result[0]);
            ip.ki.wVk = value;
            ip.ki.dwFlags = 0;
            SendInput(1, &ip, sizeof(INPUT));
            ip.ki.dwFlags = KEYEVENTF_KEYUP;
            SendInput(1, &ip, sizeof(INPUT));
        }   
    }
    //return 0;
    
    //printf("%s\n",&usuario[0]);
    printf("\nListo.\n");

    main();

    //goto main;
    //return 0;
}

//"C:/Firestorm-releasex64/Firestorm-releasex64.exe --noprobe --set InstallLanguage es --no-verify-ssl-cert --login "+usuario+" Resident K Wengen/18/226/86"+" & exit" 
