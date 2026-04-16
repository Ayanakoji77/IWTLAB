<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Question2</title>
</head>
<body>
<form method="post" action="details.jsp">
<% String empid = request.getParameter("empid");
String name = request.getParameter("name");
String mobile = request.getParameter("mobile");
String email = request.getParameter("email");
String  gender= request.getParameter("gender");
String  birth = request.getParameter("birth");
String address = request.getParameter("address");
String country = request.getParameter("country");
/*String  lan = request.getParameter("lan1");
lan = " " + lan + request.getParameter("lan2");
lan = " " + lan + request.getParameter("lan3");*/
%>
<span>Empid:</span>
<%
	out.print(empid);
%><br>
<span>Name:</span>
<%
	out.print(name);
%><br>
<span>Mobile:</span>
<%
	out.print(mobile);
%><br>
<span>Email:</span>
<%
	out.print(email);
%><br>
<span>Gender:</span>
<%
	out.print(gender);
%><br>
<span>Birth:</span>
<%
	out.print(birth);
%><br>
<span>Address:</span>
<%
	out.print(address);
%><br>
<span>Country:</span>
<%
	out.print(country);
%><br>

</form>
</body>
</html>