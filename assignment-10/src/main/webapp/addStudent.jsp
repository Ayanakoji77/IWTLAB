<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.* , utility.DB1"%>
<%@ include file="navbar.jsp" %> 
<%
	String message = "";
	String name = request.getParameter("name");
	if(name != null)
	{
		String email = request.getParameter("email");
		String course = request.getParameter("course");
		int age = Integer.parseInt(request.getParameter("age"));
		float cgpa = Float.parseFloat(request.getParameter("cgpa"));
		Connection con = DB1.getConnection();
		String qry = "insert into college_db(name, email,course,age, cgpa) values(?,?,?,?,?)";
		PreparedStatement ps  = con.prepareStatement(qry);
		
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3, course);
		ps.setInt(4, age);
		ps.setFloat(5, cgpa);
		
		int i = ps.executeUpdate();
	
		if(i == 1)
		{
			message = "REcord Insertion Successfull";
		}
		ps.close();
		con.close();
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div><h2>Add New Student</h2></div>
	<div class = "addstudent">
		<form class = "addForm" method="POST" action="addStudent.jsp" >
			Name:<input type="text" name="name" id="name"><br>
			Email:<input type="text" name="email" id="email"><br>
			Course:<input type="text" name = "course" id="course"><br>
			Age:<input type="text" name ="age" id="age"><br>
			CGPA:<input type="text" name ="cgpa" id="cgpa"><br>
			<input type="submit" value="ENter Details">
		</form>
	</div>
	<p> <%=message %></p>
</body>
</html>