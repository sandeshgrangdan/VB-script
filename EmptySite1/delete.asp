<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        <%
        set conn=Server.CreateObject("ADODB.Connection")
            conn.Provider="Microsoft.Jet.OLEDB.4.0"
            conn.Open "D:/test.mdb"
            set rs = Server.CreateObject("ADODB.recordset")
            rs.open "Select * FROM customer",conn
         %>

        <h2>List Database</h2>

        <table border="1" width="100%" >
               <tr>
                    <%
                        for each x in rs.Fields
                          response.write("<th>" & ucase(x.name) &"</th>")
                          next
                    %>
            </tr>
            <% do until rs.EOF %>
              <tr>
                    <form method="post" action="deleDate.asp">
                            <%
                                for each x in rs.Fields
                                  if x.name="customerID" then
                            %>
                            <td>
                                <input type="submit" name="customerID" value="<%x.value%>">
                            </td>
                            <%else%>
                            <td><% response.write(x.value) %></td>
                            <%
                            end if
                            next
                            %>
                    </form>
                        <%rs.MoveNext%>
                </tr>
            <% loop 
           conn.close
           %>
            </table>
               
    </body>
</html>
