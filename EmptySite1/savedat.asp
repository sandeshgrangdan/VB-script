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

            sql ="INSERT INTO customer (CustomerID,CompanyName,ContactName,Address,City,PostalCode,Country)"
            sql = sql & " VALUES ('" &Request.Form("custid")& "', '" &Request.Form("companyname")& "', '" &Request.Form("contactname")& "', '" &     Request.Form("add")& "', '" &Request.Form("city")& "', '" &Request.Form("postalcode")& "', '" &Request.Form("country")& "')"
         
            conn.Execute sql,recaffected               
       on error resume next
         'conn.Execute sql,recaffected
            if err<>0 then
            Response.Write("No Update permission")
            
            else
            
            Response.Write("<h3>" & recaffected & "record added  </h3>")
            end if
            conn.close

        %>
        
    </body>
</html>
