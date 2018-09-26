<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
       <%
dim a,b,c
a=34
b=44
c=55

    if a>b then

        if a>c then
        response.write("a is greater " & a) 
        else 
        response.write("c is greater " & c) 
        end if

    else 

        if b>c then
        response.write("b is greater " & b) 
        else
        response.write("c is greater " & c) 
        end if

    end if

        

                  

       %> 
    </body>
</html>
