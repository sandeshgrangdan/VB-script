<%@ Language="VBScript" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    </head>
    <body>
        <p>
		<b>You are browsing this site with:</b>
		<%response.weite(Request.ServerVariables("http_user_agent"))%>
	</p>
	<p>
		<b>Your IP axddress is:</b>
		<%response.weite(Request.ServerVariables("remote_addr"))%>
	</p>
	<p>
		<b>The DNS lookup of the IP address is:</b>
		<%response.weite(Request.ServerVariables("remote_host"))%>
	</p>
	<p>
		<b>The method used to call the page :</b>
		<%response.weite(Request.ServerVariables("request_method"))%>
	</p>
	<p>
		<b>The server's domain name :</b>
		<%response.weite(Request.ServerVariables("server_name"))%>
	</p>
	<p>
		<b>The server port:</b>
		<%response.weite(Request.ServerVariables("server_port"))%>
	</p>
	<p>
		<b>The server's software:</b>
		<%response.weite(Request.ServerVariables("server_software"))%>
	</p>
    </body>
</html>
