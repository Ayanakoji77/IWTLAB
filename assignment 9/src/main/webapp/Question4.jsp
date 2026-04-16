<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Question4</title>
</head>
<body>
<%
	int age = Integer.parseInt(request.getParameter("age"));
	int wei = Integer.parseInt(request.getParameter("weight"));
	int hei = Integer.parseInt(request.getParameter("height"));
	String gender = request.getParameter("gender");
	if(gender.equals("M"))
	{
		double result = (10 * wei) + (6.25 * hei) - (5 * age) + 5;
		out.print("BMR male:"+ result);
	}
	else if(gender.equals("F"))
	{
		double result = (10 * wei) + (6.25 * hei) - (5 * age) - 161;
		out.print("BMR female:"+ result);
	}
%>
</body>
</html>