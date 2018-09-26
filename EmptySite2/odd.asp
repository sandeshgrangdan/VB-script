<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        <%
            
           for i = 1 to 100
             if i mod 2 <> 0 then 
               response.write(i &"<br />")
             end if
            next

        %>
        
    </body>
</html>
