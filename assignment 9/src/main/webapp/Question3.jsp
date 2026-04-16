<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Question3</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	int x = 0;
	
	for(int i = 2; i < num;i++)
	{
		if(num % i == 0)
		{
			x = 1;
			break;
		}
	}
	
	if(x == 0)
	{
	 	out.print("Prime");
	}
	else
	{
		out.print("Composite");
	}
%>
</body>
</html>