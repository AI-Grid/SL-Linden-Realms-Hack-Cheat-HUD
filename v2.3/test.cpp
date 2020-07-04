#include <iostream>
#include <Windows.h>
#include <string>
using namespace std;

int main() {
  
	POINT p;
	int x;
	int y;


	while(0==0){
	GetCursorPos(&p);
	x = p.x;
	y = p.y;
	HDC hDC;

    hDC = GetDC(NULL);
	
	cout << GetPixel(hDC, x, y) << endl;

	ReleaseDC(NULL, hDC);  // <- don't forget this

	}
}