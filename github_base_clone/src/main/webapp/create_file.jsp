<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, utility.DB" %>
<%
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("signin.jsp"); return;
    }

    String repoIdStr = request.getParameter("id");
    if (repoIdStr == null) {
        response.sendRedirect("dashboard.jsp"); return;
    }
    
    int repoId = Integer.parseInt(repoIdStr);
    String repoName = "";
    
    try (Connection con = DB.getConnection()) {
        PreparedStatement ps = con.prepareStatement("SELECT repo_name FROM repositories WHERE id = ? AND owner_id = ?");
        ps.setInt(1, repoId);
        ps.setInt(2, (Integer) session.getAttribute("user_id"));
        ResultSet rs = ps.executeQuery();
        if(rs.next()) {
            repoName = rs.getString("repo_name");
        } else {
            response.sendRedirect("dashboard.jsp"); return;
        }
    } catch (Exception e) { e.printStackTrace(); }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Create New File</title>
    <link rel="stylesheet" href="css/reset-css.css">
    <link rel="stylesheet" href="css/navbar.css">
	<link rel="stylesheet" href="css/create_file.css">
	<script src="js/navbar.js"></script>
</head>
<body>
    <%@ include file="navbar.jsp" %>
    
    <div class="create-container">
        <h2 style="color: #58a6ff; margin-bottom: 20px;"><%= repoName %> <span style="color:#8b949e; font-weight:normal;">/ Create new file</span></h2>
        
        <form action="create_file_action.jsp" method="post">
            <input type="hidden" name="repo_id" value="<%= repoId %>">
            
            <div class="file-header">
                <input type="text" name="filename" class="file-name-input" placeholder="Name your file..." required>
            </div>
            
            <div class="editor-container">
                <textarea name="content" class="editor-textarea" placeholder="Enter file contents here..." required></textarea>
            </div>
            
            <button type="submit" class="btn-success">Commit new file</button>
            <a href="view_repo.jsp?id=<%= repoId %>" style="color: #58a6ff; text-decoration: none; margin-left: 15px;">Cancel</a>
        </form>
    </div>
</body>
</html>