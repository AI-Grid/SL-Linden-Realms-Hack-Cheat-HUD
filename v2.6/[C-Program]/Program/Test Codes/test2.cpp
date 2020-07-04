//Click en el medio de la pantalla
#include <windows.h>

int main(void){
//initialize objects for cursor manipulation
HANDLE hStdout;
COORD destCoord;
hStdout = GetStdHandle(STD_OUTPUT_HANDLE);

//position cursor at start of window
destCoord.X = 0;
destCoord.Y = 0;
SetConsoleCursorPosition(hStdout, destCoord);
}