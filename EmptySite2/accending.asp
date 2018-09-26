 <%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body><%
         Dim num(9),min,max

             num(0)  = 32
             num(1)  = 55
             num(2)  = 36
             num(3)  = 9
             num(4)  = 45
             num(5)  = 16
             num(6)  = 10
             num(7)  = 5
             num(8)  = 2


              response.write( "<b>Arranging it :</b><br />" )
              for each x in num
                response.write( x & "," )
              next
             
             
             For y = 0 to 8
               min = num(y)
                   For i = y+1 to 8

                         If num(i) < min then
                              min = num(i)
                              num(i) = num(y)
                              num(y) = min
                              
                         end if
                    next
              next

              response.write( "<br/><b>Accending Order :</b><br />" )
              for each x in num
                response.write( x & "<br />" )
              next

              response.write( "<b>Decending Order :</b><br />" )
              for s = 8 to 0
                response.write( num(s) & " san<br />" )
              next

              For y = 0 to 8
               max = num(y)
                   For i = y+1 to 8

                         If num(i) > max then
                              max = num(i)
                              num(i) = num(y)
                              num(y) = max
                              
                         end if
                    next
              next

              for each x in num
                response.write( x & "<br />" )
              next
              
            
        %>
    </body>
</html>
