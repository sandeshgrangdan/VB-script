<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        <%
            a = Cint(request.querystring("m1"))
            b = Cint(request.querystring("m2"))
            c = Cint(request.querystring("m3"))
            d = Cint(request.querystring("m4"))
            dim p
            p = (a+b+c+d)/400*100

            response.write("Percent :" & p &"<br>" )
            
            if (p < 40) then
                 response.write("Third Division" )
                elseif(p < 60) then
                 response.write("Second Division" )
                elseif (p < 80) then
                 response.write("first Division" )
                else 
                response.write("Distinction" )
            end if
        %>
    </body>
</html>
INSERT INTO table_name () VALUES ()