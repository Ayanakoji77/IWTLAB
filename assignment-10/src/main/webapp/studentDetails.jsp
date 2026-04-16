<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.* , utility.DB1"%>
<%@ include file="navbar.jsp" %> 
<%

	String message = "";
	int sid = Integer.parseInt(request.getParameter("sid"));
	Connection con = DB1.getConnection();
	String qry = "select * from college_db where = ?";
	PreparedStatement ps  = con.prepareStatement(qry);
	ps.setInt(1, sid);

	ResultSet rs =  ps.executeQuery();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=%>
</body>
</html>