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

            cid=Request.Form("CustomerID")
            response.write(cid)
            if request.form("companyname") ="" then
             set rs=Server.CreateObject("ADODB.Connection")
             rs.open "SELECT * FROM WHERE CUStomerID= "& cid,conn
        %>

        <form method="post" action="deleteData.asp">
            <table>
                <%for each x in rs.Fields%>
                <tr>
                    <td><input name="<%x.name%>" value="<%x.value%>"></td>
                    <%next%>
                </tr>
            </table>
            <br><br>
            <input type="Submit" value="Delete Value">
            
        </form>
        <%
             else
             
             sql = "DELETE FROM customer"
             sql = sql & "WHWRE CustomerID=" &cid
             on error resume next
             conn.Execute sql
                if err<>0 then
                     Response.Write("No Update permission")
            
                else
                     Response.Write("Record " & cid & "was Deleted!")
                end if
            end if
            conn.close
        %>
    </body>
</html>
