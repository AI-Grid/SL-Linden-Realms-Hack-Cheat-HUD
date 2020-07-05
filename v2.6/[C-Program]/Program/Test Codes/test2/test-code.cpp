/*
#include <stdio.h>
#include <curl/curl.h>
#include <string.h>

int main(void) {

    puts("\t");

    CURL* curl;



    curl = curl_easy_init();

    curl_easy_setopt(curl, CURLOPT_URL, "http://192.168.3.38/secondlife/datos/switcher1-variable-url.txt");



    CURLcode res;
    res = curl_easy_perform(curl);
    char str[100]; 
    strcpy(str,(char)res);
  //  if(str=="1")
   // {
        printf("\n>> test: %s\n",str);
   // }


    curl_easy_cleanup(curl);
    puts("\t");

    return 0;
}
*/

#include <iostream>
#include <string>
#include <curl/curl.h>


static size_t WriteCallback(void *contents, size_t size, size_t nmemb, void *userp)
{
    ((std::string*)userp)->append((char*)contents, size * nmemb);
    return size * nmemb;
}

int main(void)
{
  CURL *curl;
  CURLcode res;
  std::string readBuffer;

  curl = curl_easy_init();
  if(curl) {
    curl_easy_setopt(curl, CURLOPT_URL, "http://192.168.3.38/secondlife/datos/switcher1-variable-url.txt");
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
    res = curl_easy_perform(curl);
    curl_easy_cleanup(curl);

    if(readBuffer=="1")
    {
        puts("ok");
    }
    else
    {
        puts("no");
    }
    
  }
  return 0;
}