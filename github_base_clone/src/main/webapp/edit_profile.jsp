<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, utility.DB" %>
<%
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("signin.jsp");
        return;
    }
    int userId = (Integer) session.getAttribute("user_id");
    Connection con = null; ResultSet rs = null;
    String name = "", bio = "", company = "", country = "" , avatarUrl = "";
    try {
        con = DB.getConnection();
        PreparedStatement ps = con.prepareStatement("SELECT name, bio, company, country , avatar_url FROM github_user WHERE id = ?");
        ps.setInt(1, userId);
        rs = ps.executeQuery();
        if(rs.next()) {
            name = rs.getString("name") != null ? rs.getString("name") : "";
            bio = rs.getString("bio") != null ? rs.getString("bio") : "";
            company = rs.getString("company") != null ? rs.getString("company") : "";
            country = rs.getString("country") != null ? rs.getString("country") : "";
            avatarUrl = rs.getString("avatar_url") != null ? rs.getString("avatar_url") : "";
        }
    } catch(Exception e) {System.out.print(e); }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <link rel="icon" type="image" href="img/logo_dark.svg" sizes="32x32">
    <link rel="stylesheet" href="css/reset-css.css">
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/edit_profile.css">
    <script src="js/navbar.js"></script>
</head>
<body>
    <%@ include file="navbar.jsp" %>
    
    <div class="edit-container">
        <h2>Public profile</h2>
        <hr style="border: 1px solid #30363d; margin-bottom: 20px;">
        
        <form action="edit_profile_action.jsp" method="post">
            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" value="<%= name %>">
            </div>
            <div class="form-group">
                <label>Bio</label>
                <textarea name="bio" rows="4"><%= bio %></textarea>
            </div>
            <div class="form-group">
                <label>Company</label>
                <input type="text" name="company" value="<%= company %>">
            </div>
            <div class="form-group">
                <label>Location (Country)</label>
                <input type="text" name="country" value="<%= country %>">
            </div>
            <div class="form-group">
                <label>Avatar Image Link (URL)</label>
                <input type="text" name="avatar_url" placeholder="https://example.com/my-photo.jpg" value="<%= avatarUrl %>">
            </div>
            <button type="submit" class="btn">Update profile</button>
            <a href="profile.jsp" style="color: #58a6ff; margin-left: 10px; text-decoration: none;">Cancel</a>
        </form>
    </div>
</body>
</html>