#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <Windows.h>
#include <Winuser.h>
#include <ctype.h>
#include <math.h>

float h, s, v;

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

int main(void)
{
    for(;;)
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

        //printf("\nhsv: %f, %f, %f",h,s,v);

        if(h>=0 && h<=20)
        {
            puts("rojo");
        }
        else if(h>20 && h<=40)
        {
            puts("naranja");
        }
        else if(h>40 && h<=63)
        {
            puts("amarillo");
        }
        else if(h>63 && h<=155)
        {
            puts("verde");
        }
        printf("hsv: %f, %f, %f",h,s,v);
        puts("\n");
        Sleep(1000);
    }

}