<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        <%
        dim p
        p = 30

        if p>=80 then
            response.write("Distinction")
        elseif p>=60 then
               response.write("First Division")
        elseif p>=40 then
               response.write("Second Division")
        else
               response.write("third Division")
               
        end if


        %>
        
    </body>
</html>
