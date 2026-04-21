<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, utility.DB" %>
<% 
	String message = "";
	if(request.getMethod().equalsIgnoreCase("POST")) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			Connection con = DB.getConnection();
		
			String sql = "SELECT * FROM github_user WHERE email = ? AND password = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
			
				session.setAttribute("user_id", rs.getInt("id"));
				session.setAttribute("username", rs.getString("username"));
				response.sendRedirect("dashboard.jsp");
				return; 
			} else {
				message = "Invalid email or password.";
			}
		} catch (Exception e) {
			System.out.println(e);
			message = "Something went wrong: " + e.getMessage();
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/reset-css.css">
    <link rel="stylesheet" href="css/signin.css">
    <link rel="icon" type="image" href="img/logo_dark.svg" sizes="32x32">
    <title>Sign in TO CodeHub</title>
</head>
<body>
    <header class="header"></header>	

    <div class="signin-wrapper">
        <div class="logo">
            <img src="img/logo_light.svg" alt="CodeHub Logo">
        </div>
        <div class="signin-title">
            <span>Sign in to CodeHub</span>
        </div>
        
        <div class="form-container">
            <form action="signin.jsp" method="post">
                <div class="input-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" placeholder="Enter your email" required> 	
                </div>
                
                <div class="input-group">
                    <div class="label-row">
                        <label for="password">Password</label>
                        <a href="construct.jsp" class="forgot-password">Forgot password?</a>
                    </div>
                    <input type="password" name="password" id="password" placeholder="Password" required> 
                </div>
                
                <div class="input-group">
                    <input type="submit" value="Sign in">
                </div>
            </form>
        </div>

        <div class="divider"> 
            <label>OR</label>
        </div>

        <div class="social-buttons">
            <button class="btn-social">
                <img src="img/google_logo.svg" alt="Google">Continue With Google
            </button>
            <button class="btn-social">
                <img src="img/apple_logo.svg" alt="Apple">Continue With Apple
            </button>
        </div>
        
        <div class="signup-prompt">
            New to GitHub? <a href="signup.jsp">Create an account</a>
        </div>
    </div>

    <footer class="footer">
    	<a href="construct.jsp">Terms</a>
    	<a href="construct.jsp">Privacy</a>   
    	<a href="construct.jsp">Docs</a>   
    	<a href="construct.jsp">Contact GitHub Support</a>   
    	<a href="construct.jsp">Manage Cookies</a>   
    	<a href="construct.jsp">Do not share my personal information</a>     
    </footer>
</body>
</html>