<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        Welcome
        <%
            response.write(request.form("m1") &" " & request.form("m2"))
            
            a=Cint(request.form("m1"))
            b=Cint(request.form("m2"))
            response.write(a+b)
            
        %>
        
    </body>
</html>
