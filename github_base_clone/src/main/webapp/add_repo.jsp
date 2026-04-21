<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.io.File" %>
<%@ page import="utility.DB" %>
<%
  
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("signin.jsp");
        return;
    }

    String serverMessage = "";
    int ownerId = (Integer) session.getAttribute("user_id");

    if(request.getMethod().equalsIgnoreCase("POST")) {
        String repoName = request.getParameter("repoName");
        String description = request.getParameter("description");
        String visibility = request.getParameter("visibility");

        if(repoName != null && !repoName.trim().isEmpty()) {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            try {
                con = DB.getConnection();
                
               
                String username = "unknown_user";
                String userSql = "SELECT username FROM github_user WHERE id = ?";
                ps = con.prepareStatement(userSql);
                ps.setInt(1, ownerId);
                rs = ps.executeQuery();
                if(rs.next()) {
                    username = rs.getString("username");
                }
                rs.close();
                ps.close();

                
                String fsPath = "/home/sbehera/codehub_repos/" + username + "/" + repoName + ".git";
                File repoDir = new File(fsPath);

                
                ProcessBuilder mkdirPb = new ProcessBuilder("mkdir", "-p", fsPath);
                Process mkdirProc = mkdirPb.start();
                int mkdirExit = mkdirProc.waitFor();

                if (mkdirExit == 0) {
                
                    ProcessBuilder gitInitPb = new ProcessBuilder("git", "init", "--bare");
                    gitInitPb.directory(repoDir); 
                    Process gitProc = gitInitPb.start();
                    int gitExit = gitProc.waitFor();

                    if (gitExit == 0) {
                       
                        String insertSql = "INSERT INTO repositories (owner_id, repo_name, description, visibility, fs_path) VALUES (?, ?, ?, ?, ?)";
                        ps = con.prepareStatement(insertSql);
                        ps.setInt(1, ownerId);
                        ps.setString(2, repoName);
                        ps.setString(3, description);
                        ps.setString(4, visibility);
                        
                    
                        ps.setString(5, fsPath); 

                        int i = ps.executeUpdate();
                        if(i > 0) {
                            response.sendRedirect("dashboard.jsp");
                            return; 
                        } else {
                            serverMessage = "Database insertion failed.";
                        }
                    } else {
                        serverMessage = "Failed to initialize Git repository. Check terminal git permissions.";
                    }
                } else {
                    serverMessage = "Failed to create directory. Ensure Tomcat/Java has write access to the folder.";
                }
            } catch (Exception e) {
            	  e.printStackTrace();
            	  serverMessage = "System Error: " + e.getMessage();
            	}
            	finally {
            	  if (rs != null)
            	    try {
            	      rs.close();
            	    } catch (SQLException e) {
            	    }
            	  if (ps != null)
            	    try {
            	      ps.close();
            	    } catch (SQLException e) {
            	    }
            	  if (con != null)
            	    try {
            	      con.close();
            	    } catch (SQLException e) {
            	    }
            	}
        } else {
            serverMessage = "Repository name is required.";
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image" href="img/logo_dark.svg" sizes="32x32">
    <title>Create a New Repository - CodeHub</title>
    <link rel="stylesheet" href="css/reset-css.css">
    <link rel="stylesheet" href="css/navbar.css">
    <script type="text/javascript" src="js/navbar.js"></script>
    <link rel="stylesheet" href="css/add_repo.css">
</head>
<body>
    <%@ include file="navbar.jsp" %>
    
    <div class="page-wrapper">
        <div class="header-section">
            <h2>Create a new repository</h2>
            <div class="subtext">A repository contains all project files, including the revision history.</div>
        </div>

        <% if(!serverMessage.isEmpty()) { %>
            <div class="error-msg"><%= serverMessage %></div>
        <% } %>

        <div class="form-card">
            <form method="post" action="add_repo.jsp">
                
                <div class="form-group" style="max-width: 350px;">
                    <label for="repoName">Repository name *</label>
                    <input type="text" id="repoName" name="repoName" required>
                </div>

                <div class="form-group">
                    <label for="description">Description <span class="optional-text">(optional)</span></label>
                    <textarea id="description" name="description" rows="4"></textarea>
                </div>

                <div class="divider"></div>

                <div class="form-group" style="max-width: 250px;">
                    <label for="visibility">Visibility *</label>
                    <select id="visibility" name="visibility">
                        <option value="public">Public - Anyone on the internet can see this repository.</option>
                        <option value="private">Private - You choose who can see and commit to this repository.</option>
                    </select>
                </div>

                <div class="divider"></div>

                <div class="action-footer">
                    <button type="submit" class="btn-submit">Create repository</button>
                </div>
                
            </form>
        </div>
    </div>

</body>
</html>