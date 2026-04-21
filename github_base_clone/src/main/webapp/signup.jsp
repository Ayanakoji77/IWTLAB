<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="utility.DB" %> <%
	String serverMessage = "";
	if(request.getMethod().equalsIgnoreCase("POST")) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String country = request.getParameter("country");
		String emailPrefs = request.getParameter("email-preferences");
		
		boolean wantsEmails = (emailPrefs != null && emailPrefs.equals("on"));

		try {
			Connection con = DB.getConnection();
			String sql = "INSERT INTO github_user (email, password, username, country, email_preferences) VALUES (?, ?, ?, ?, ?)";
			
			PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, email);
			ps.setString(2, password);
			ps.setString(3, username);
			ps.setString(4, country);
			ps.setBoolean(5, wantsEmails);
			
			int i = ps.executeUpdate();
			if(i > 0) {
				ResultSet rs = ps.getGeneratedKeys();
				if(rs.next()) {
					int userId = rs.getInt(1);
					session.setAttribute("user_id", userId);
					response.sendRedirect("dashboard.jsp");
					return; 
				}
			} else {
                serverMessage = "Account creation failed. Please try again.";
            }
		} catch (Exception e) {
			System.out.println(e);
			serverMessage = "Something went wrong: " + e.getMessage();
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/reset-css.css">
<link rel="stylesheet" href="css/signup.css">
<script type="text/javascript" src="js/signup.js"></script>
<link rel="icon" type="image" href="img/logo_dark.svg" sizes="32x32">
<title>SignUp For CodeHub - CodeHub </title>
</head>
<body>
	<header class="header">
		<div class="header-black"></div>
		<div class="header-text"><span>Already have an account?</span> <a href="signin.jsp">Sign in &rarr;</a></div>
	</header>
	<div class="main-container">
		<div class="left-side">
			<div class="main-centre">
				<div class="title-container"> 
					<h1>Create Your Free Account</h1> 
				</div>
				
				<div class="subtitle-container">
					<p>Explore CodeHub's core features for individuals and organizations.</p>
				</div>
				
				<details style="cursor: pointer;" class="feature-details">
					<summary>See what's included</summary>
					<div class="hidden-content">
						<ul class="feature-list">
							<li>
								<div class="feature-text">
									<strong>Access to GitHub Copilot</strong>
									<p>Increase your productivity and accelerate software development.</p>
								</div>
							</li>
							<li>
								<div class="feature-text">
									<strong>Unlimited repositories</strong>
									<p>Collaborate securely on public and private projects.</p>
								</div>
							</li>
						</ul>
					</div>
				</details>
				
				<div class="image-container">
					<img src="img/signup.webp" alt="CodeHub Mascots" style="max-width: 100%; height: auto;">
				</div>					
			</div>
		</div>
		<div class="right-side">
			<div class="signup-wrapper">
				<div class="sign-up-box">
					<div class="signup-header">
						<label>Sign up on CodeHub</label>
					</div>
					<div class="social-buttons">
						<button class="btn-social"> <img src="img/google_logo.svg" alt="Google">Continue With Google</button>
						<button class="btn-social"> <img src="img/apple_logo.svg" alt="Apple">Continue With Apple</button>
					</div>					
					<div class="divider"> <label> OR </label></div>
					<div class="form-container">
					
					<form  method="post"  action="signup.jsp" onsubmit="formValidator(event)">
					
						  <% if(!serverMessage.isEmpty()) { %>
							  <div style="color: red; margin-bottom: 10px; font-size: 14px; font-weight: bold;">
								  <%= serverMessage %>
							  </div>
						  <% } %>

						  <div id="message" style="margin-bottom: 10px;"></div>
					 
						  <div>
							<label for="email">Email</label>
							<input type="text" name="email" id="email" placeholder="Enter your email">
						  </div>
						  
						 <div>
							<label for="password">Password</label>
							<input type="password" name="password" id="password" placeholder="Password">
							<p style="color:rgb(88, 99, 91); font-size:12px; line-height:18px; font-weight:400; overflow-wrap:break-word;">Password should be at least 15 characters OR at least 8 characters including a number and a lowercase letter.</p>
						 </div>
						  
						  <div>
							<label for="username">Username</label>
							<input type="text" name="username" id="username" placeholder="Username">
							<p style="color:rgb(88, 99, 91); font-size:12px; line-height:18px; font-weight:400; overflow-wrap:break-word;">Username may only contain alphanumeric characters or single hyphens.</p>
						 </div>
							
						<div>
							  <label for="country">Your Country and Origin</label>
							  <select id="country" name="country">
								<option value="" selected disabled>-- Select Your Country --</option>
								<option value="United States">United States</option>
								<option value="United Kingdom">United Kingdom</option>
								<option value="India">India</option>
								<option value="Canada">Canada</option>
								<option value="Australia">Australia</option>
								<option value="Germany">Germany</option>
								<option value="France">France</option>
								<option value="Japan">Japan</option>
								<option value="Brazil">Brazil</option>
								<option value="South Africa">South Africa</option>
							  </select>
							  <p style="color:rgb(88, 99, 91); font-size:12px; line-height:18px; font-weight:400; overflow-wrap:break-word;">For compliance reasons, we're required to collect country information.</p>
						  </div>
						  
						  <div>
							<div class="checkbox-group">
							<input type="checkbox" name="email-preferences" id="email-preferences">
							<label for="email-preferences">Receive occasional product updates and announcements</label>				
							</div>
						</div>
						  <div>
							<input type="submit" value="Create Your Account">
							  <p style="color:rgb(88, 99, 91); font-size:12px; line-height:18px; font-weight:400; overflow-wrap:break-word; margin-top:10px;">By creating an account, you agree to the Terms of Service. For more information about CodeHub's privacy practices, see the GitHub Privacy Statement.</p>
						  </div>
					</form>
				 </div>
					
				</div>
			</div>
		</div>
	</div>

</body>
</html>