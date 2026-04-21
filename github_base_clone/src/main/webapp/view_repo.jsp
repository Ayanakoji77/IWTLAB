<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, utility.DB, java.io.File" %>
<%
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("signin.jsp");
        return;
    }

    int loggedInUserId = (Integer) session.getAttribute("user_id");

    String repoIdStr = request.getParameter("id");
    if (repoIdStr == null || repoIdStr.isEmpty()) {
        response.sendRedirect("dashboard.jsp");
        return;
    }
    
    int repoId = Integer.parseInt(repoIdStr);
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    String repoName = "";
    String ownerName = "";
    String description = "";
    String fsPath = "";
    String visibility = "";
    int ownerId = 0; 
    
    try {
        con = DB.getConnection();
        String sql = "SELECT r.repo_name, r.description, r.fs_path, r.visibility, r.owner_id, u.username FROM repositories r JOIN github_user u ON r.owner_id = u.id WHERE r.id = ?";
        ps = con.prepareStatement(sql);
        ps.setInt(1, repoId);
        rs = ps.executeQuery();
        
        if (rs.next()) {
            repoName = rs.getString("repo_name");
            ownerName = rs.getString("username");
            description = rs.getString("description");
            fsPath = rs.getString("fs_path");
            visibility = rs.getString("visibility");
            ownerId = rs.getInt("owner_id"); 
        } else {
            response.sendRedirect("dashboard.jsp");
            return;
        }
%>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" type="image" href="img/logo_dark.svg" sizes="32x32">
    <title><%= ownerName %>/<%= repoName %> - CodeHub</title>
    <link rel="stylesheet" href="css/reset-css.css">
    <link rel="stylesheet" href="css/navbar.css">
    <script type="text/javascript" src="js/navbar.js"></script>
    <link rel="stylesheet" href="css/view_repo.css">
</head>
<body>
    <%@ include file="navbar.jsp" %>
    
    <div class="repo-container">
       <div class="repo-header">
            <div class="repo-title">
                <span><%= ownerName %></span> / <%= repoName %> 
                <span class="repo-visibility-badge"><%= visibility %></span>
            </div>
            <div class="repo-actions">
                <% if (loggedInUserId == ownerId) { %>
                    <a href="create_file.jsp?id=<%= repoId %>" class="btn-secondary">Add file</a>
                <% } %>
                <button class="btn-primary">Code</button>
                <% if (loggedInUserId == ownerId) { %>
                    <a href="delete.jsp?id=<%= repoId %>" class="btn-danger" onclick="return confirm('Are you sure you want to delete this repository? This action cannot be undone.');">Delete</a>
                <% } %>
            </div>
        </div>
        
        <p class="repo-description">
            <%= description != null ? description : "No description provided." %>
        </p>

        <div class="file-explorer">
            <div class="file-header">
                <div><%= ownerName %> Initial commit</div>
                <div class="file-header-time">Just now</div>
            </div>
            
            <%
                File directory = new File(fsPath);
                File[] files = directory.listFiles();
                
                if (files != null && files.length > 0) {
                    for (int i = 0; i < files.length; i++) {
                        File currentFile = files[i];
                        boolean isDir = currentFile.isDirectory();
            %>
                        <div class="file-row">
                            <span class="file-icon"><%= isDir ? "📁" : "📄" %></span>
                            <span class="file-name <%= isDir ? "file-folder" : "" %>">
                                <%= currentFile.getName() %>
                            </span>
                        </div>
            <%
                    }
                } else {
            %>
                    <div class="file-row">
                        <span class="file-name text-muted">Repository is empty or path is inaccessible.</span>
                    </div>
            <%
                }
            %>
        </div>
        
        <div class="readme-box">
            <div class="readme-header">
                📄 README.md
            </div>
            <div class="readme-content">
                <h2><%= repoName %></h2>
                <p><%= description != null ? description : "Welcome to the repository." %></p>
            </div>
        </div>

    </div>
</body>
</html>
<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch(SQLException e) {}
        if (ps != null) try { ps.close(); } catch(SQLException e) {}
        if (con != null) try { con.close(); } catch(SQLException e) {}
    }
%>