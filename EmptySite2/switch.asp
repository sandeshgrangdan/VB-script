<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        <%
            d=weekday(date)
            Select Case d
                 case 1
                 response.write("Sunday")
                 case 2
                 response.write("Monday")
                 case 3
                 response.write("Tuesday")
                 case 4
                 response.write("Wednesday")
                 case 5
                 response.write("Thuesday")
                 case 6
                 response.write("Friday")
                 case 7
                 response.write("Satudray")
             End select
        %>
        
    </body>
</html>
