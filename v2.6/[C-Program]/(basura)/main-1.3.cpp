//Ejecutar con codeblocks

#include <stdio.h>
#include <Windows.h>
#include <unistd.h> //usleep
#include <Winuser.h> //windows functions

bool isRunning(LPCSTR pName)
{
	HWND hwnd;
	hwnd = FindWindow(NULL, pName);
	//if (IsWindow(hwnd) == WS_BORDER) {
	if(( hwnd == GetForegroundWindow()) && IsWindowVisible(hwnd)){
		return true;
	} else {
		return false;
	}
	/*HWND hwnd;
	hwnd = FindWindow(NULL, pName);
	if (hwnd != 0) {
		return true;
	} else {
		return false;
	}*/
}

int main(void)
{
    //tomar la posicion de la ventana y tomar la posicion del centro de la ventana el medio centro asi con el script enfoco el diamante
    //en el medio
    //el nombre de la ventana cambia al iniciar sesion 
    while(1)
    {
        if(isRunning("Firestorm-Releasex64 6.3.9.58205 - keiso00")==true)
        {
            POINT p;
            COLORREF color;
            HDC hDC;
            BOOL b;
            // Get the device context for the screen
            hDC = GetDC(NULL);
            if (hDC == NULL)
                return 3;
            // Get the current cursor position
            b = GetCursorPos(&p);
            if (!b)
                return 2;
            // Retrieve the color at that position
            color = GetPixel(hDC, p.x, p.y);
            if (color == CLR_INVALID)
                return 1;
            // Release the device context again
            ReleaseDC(GetDesktopWindow(), hDC);
            printf("[RGB(%i,%i,%i)] - [Pos X:%i / Pos Y:%i]", GetRValue(color), GetGValue(color), GetBValue(color), p.x, p.y);
            puts("\t");
            Sleep(2000);
        }
        else
        {
            if(GetAsyncKeyState(0x43)) // C key
            {
                puts("> Bye!");
                break;
            }
        }
    }
    return 0;
}
