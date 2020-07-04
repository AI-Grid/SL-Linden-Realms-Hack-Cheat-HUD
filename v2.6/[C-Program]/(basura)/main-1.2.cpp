#include <stdio.h>
#include <Windows.h>

int main(void) {
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

    printf("%i %i %i", GetRValue(color), GetGValue(color), GetBValue(color));
    return 0;
}
