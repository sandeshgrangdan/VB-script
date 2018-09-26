<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
         <%
             Dim cars(2)
             cars(0)  = "sandesh"
             cars(1)  = "tamang"
             cars(2)  = "Srijan"
            For Each y in cars
            response.write(y & "<br />")
            next
           %>
    </body>
</html>
