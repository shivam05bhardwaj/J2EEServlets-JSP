<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Conversion Results </h1>
<%
	out.print("Temperature in F");
	out.print(request.getAttribute("outputTemp")+"F <br>");
	
	out.print("Types Of Work Selected" );
 	out.print( "<br>"+request.getAttribute("outputCheckBox")+"<br>");
 
 	out.print("Details about the Requests Object");
 	out.print (request.getHeader("User- Agent")+"<br>");
 	out.print (request.getCookies()+"<br>");
 	out.print (request.getSession()+"<br>");
 	out.print (request.getServerName()+"<br>");
 	out.print (request.getMethod()+"<br>");
 	out.print (request.getInputStream()+"<br>");
 	out.print (request.getContentLength()+"<br>");
 	out.print (request.getIntHeader("Max- Forwards")+"<br>");
 	out.print (request.getLocalPort()+"<br>");
 	out.print (request.getServerPort()+"<br>");
 	out.print (request.getRemotePort()+"<br>");
 	out.print (request.getParameter("Temp")+"<br>");
 	
 	
 	out.print("Details about the Response Object");
 	out.print (response.getBufferSize()+"<br>");
 	out.print (response.getClass()+"<br>");
/*  	out.print (response.getOutputStream()+"<br>");
 */ 	out.print (response.getHeader("Name")+"<br>");
 	out.print (response.getHeader("Name1")+"<br>");
 	out.print (response.getHeader("Name2")+"<br>");

 	out.print (response.getBufferSize()+"<br>");
 	out.print (response.getBufferSize()+"<br>");



 	

 	
 	%>
 
</body>
</html>