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
            
            response.write(request.querystring("fname"))
            response.write("" &request.querystring("lname"))

            a = Cint(request.querystring("m1"))
            b = Cint(request.querystring("m2"))
            c = Cint(request.querystring("m3"))
            d = Cint(request.querystring("m4"))
            response.write("Total =" &a+b+c+d)
            response.write("<br />Average =" & (a+b+c+d)/4)
        %>
        
    </body>
</html>
 