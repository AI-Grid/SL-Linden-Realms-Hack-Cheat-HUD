/* 
// C Implementation for getpixel() 
#include <graphics.h> 
#include <stdio.h> 
  
// driver code 
int main() 
{ 
    // gm is Graphics mode which is 
    // a computer display mode that 
    // generates image using pixels. 
    // DETECT is a macro defined in 
    // "graphics.h" header file 
    int gd = DETECT, gm, color; 
    char arr[50]; 
  
    // initgraph initializes the 
    // graphics system by loading a 
    // graphics driver from disk 
    initgraph(&gd, &gm, ""); 
  
    // getpixel function 
    color = getpixel(0, 0); 
  
    // sprintf stands for “String print”. 
    // Instead of printing on console, 
    // it store output on char buffer 
    // which are specified in sprintf 
    sprintf(arr, "color of pixel at (0,0) = %d", 
                                       color); 
  
    // outtext function displays text 
    // at current position. 
    outtext(arr); 
  
    getch(); 
  
    // closegraph function closes the 
    // graphics mode and deallocates 
    // all memory allocated by 
    // graphics system . 
    closegraph(); 
  
    return 0; 
} */

#include<windows.h>
#include<stdio.h>

int main(int argc, char** argv)
{
    FARPROC pGetPixel;

    HINSTANCE _hGDI = LoadLibrary("gdi32.dll");
    if(_hGDI)
    {
        pGetPixel = GetProcAddress(_hGDI, "GetPixel");
        HDC _hdc = GetDC(NULL);
        if(_hdc)
        {
            POINT _cursor;
            GetCursorPos(&_cursor);
            COLORREF _color = (*pGetPixel) (_hdc, _cursor.x, _cursor.y);
            int _red = GetRValue(_color);
            int _green = GetGValue(_color);
            int _blue = GetBValue(_color);

            printf("Red: 0x%02x\n", _red);
            printf("Green: 0x%02x\n", _green);
            printf("Blue: 0x%02x\n", _blue);
        }
        FreeLibrary(_hGDI);
    }
    return 0;
}