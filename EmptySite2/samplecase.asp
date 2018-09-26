<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        <%
        c=Cint(request.querystring("m3"))
        a=Cint(request.querystring("m1"))
        b=Cint(request.querystring("m2"))
            Select Case c
                 case 1
                 response.write("Addition = " & a+b)
                 case 2
                 response.write("subtraction = " & a-b)
                 case 3
                 response.write("Multiplication = " & a*b)
                 case 4
                 response.write("Division = " & a/b)
                 
             End select
             %>
    </body>
</html>
