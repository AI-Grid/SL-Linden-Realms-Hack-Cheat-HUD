/* #include <windows.h>
#include <iostream>
using namespace std;

void GetWindowPos( int *x, int *y ) {
    RECT rect = { NULL };
    if( GetWindowRect( GetConsoleWindow(), &rect ) ) {
        *x = rect.left;
        *y = rect.top;
    }
}

int main(){
    int X, Y;
    GetWindowPos( 0,0);
    return 0;
} */

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <Windows.h>
#include <Winuser.h>
#include <ctype.h>

int main(void)
{

   // for (int i = 0; i < 20; i++)
   // {
  /*      char volatil[500];
        strcpy(volatil,"Firestorm-Releasex64 6.3.9.58205 - Reddlyy");

        HWND hwnd;
        hwnd = FindWindow(NULL,volatil);
        POINT screen_cursor_pos;
        RECT client_rect;
        int cursor_x,cursor_y;

        GetCursorPos(&screen_cursor_pos);
        GetClientRect(hwnd,&client_rect);

        cursor_x=screen_cursor_pos.x-client_rect.left;
        cursor_y=screen_cursor_pos.y-client_rect.top;

        printf("\nX: %d",cursor_x);
        printf("\nY: %d",cursor_y);
        */
        Sleep(5000);

            int cursor_x = 0;
            int cursor_y = 50;
        SetCursorPos(cursor_x, cursor_y);
  //  }

    return 0;
}