//Main HTTP Request Script
key http_request_id;

llSend(string M)
{
    llMessageLinked(0xFFFFFFFC,0,M,llGetKey());
}
 
default
{
    link_message(integer sender_num, integer num, string str, key id)
    {
        if(str=="HTTP-SW1")
        {
            llOwnerSay("HTTP-SW1");
            http_request_id = llHTTPRequest("https://darkerwolf.ddns.net/secondlife/switcher1/variable1.php", [], "");
        }
    }
    http_response(key request_id, integer status, list metadata, string body)
    {
        if (request_id != http_request_id) return;
    }
}