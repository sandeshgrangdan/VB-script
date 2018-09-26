<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <%
        dim h
        h = hour(now())

        response.write("<p>" & now())
        response.write("</p>")

        if h<12 then 
        response.write("Good Morning !")

        else
         response.write("Good Day!")

         end if


         dim m1,m2,m3

          m1= 60
          m2=30
          m3=25 

          dim result,avg
          result = (m1+m2+m3)/300*100
          avg = (m1+m2+M3)/3

          if result<40 then 
              response.write("<p>" & avg)
              response.write("</p>")

           response.write("Fail")
          else 
            response.write("Pass")

            end if

            if m1>m2   then 
            response.write("<p>" & m1 )
            response.write("m1 is greater")
            response.write("</p>")

            else if m1>m3 then
            response.write("<p>" & m1 )
            response.write("m1 is greater")
            response.write("</p>")

            else if m2>m3 then
            response.write("<p>" & m2 )
            response.write("m2 is greater")
            response.write("</p>")
             
            else
            response.write("<p>" & m2 )
            response.write("m3 is greater")
            response.write("</p>")


           

            end if


    %>
    <body>
        
    </body>
</html>
