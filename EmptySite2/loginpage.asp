<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        <%
            dim a
            dim b
            dim array(2)

            a = request.form("m1")
            b = request.form("m2")
            INSERT INTO login (uses_name , password) VALUES (a , b);
                
           if( a="admin" and b="admin") then
                array(0)= a
                array(1)= b
            Session("StoredArray") = array
                   response.redirect("session.asp")
               else
                    response.write("Error")
            end if
        %>
    </body>
</html>
