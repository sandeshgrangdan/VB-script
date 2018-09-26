<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        <%
            if( Session.Contents.count = 0 ) then
               response.write("Error in Session")
            else 
              LocalArray =Session("StoredArray")
                if(LocalArray(0)="admin" and LocalArray(1)="admin") then
                  response.redirect("marksheet.asp")
                else
                response.write("Error")
                end if
             end if
        %>
    </body>
</html>
