<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, utility.DB" %>
<%
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("signin.jsp");
        return;
    }
    
    int loggedInUserId = (Integer) session.getAttribute("user_id");
%>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" type="image" href="img/logo_dark.svg" sizes="32x32">
    <title>Home - CodeHub</title>
    <link rel="stylesheet" href="css/reset-css.css">
    <link rel="stylesheet" href="css/navbar.css">
    <script type="text/javascript" src="js/navbar.js"></script>
    <link rel="stylesheet" href="css/dashboard.css">
</head>
<body>
    <%@ include file="navbar.jsp" %>
    
    <div class="dashboard-container">
        
        <%
            Connection con = null;
            PreparedStatement psUserRepos = null;
            ResultSet rsUserRepos = null;
            PreparedStatement psAllRepos = null;
            ResultSet rsAllRepos = null;
            
            try {
                con = DB.getConnection();
        %>

        <div class="left-sidebar">
            <div class="sidebar-header-flex">
                <h3>Top repositories</h3>
                <a href="add_repo.jsp" class="btn-new-repo">
                    <img src="img/repo.svg" alt="New" class="btn-icon">
                    New
                </a>
            </div>

            <%
                String userReposSql = "SELECT id, repo_name, description, visibility FROM repositories WHERE owner_id = ? ORDER BY created_at DESC limit 5";
                psUserRepos = con.prepareStatement(userReposSql);
                psUserRepos.setInt(1, loggedInUserId);
                rsUserRepos = psUserRepos.executeQuery();
                
                while(rsUserRepos.next()) {
                    int repoId = rsUserRepos.getInt("id");
            %>
                    <div class="self-repo-links">
                            <a href="view_repo.jsp?id=<%= repoId %>" class="sidebar-repo-link">
                                <%= rsUserRepos.getString("repo_name") %>
                            </a>
                    </div>
            <%
                }
            %>
        </div>

        <div class="main-feed">
            <h3>Home</h3>
            <%
             
            	String allReposSql = "SELECT r.id, r.repo_name, r.description, r.owner_id, u.username, u.avatar_url FROM repositories r JOIN github_user u ON r.owner_id = u.id WHERE r.visibility = 'public' ORDER BY r.created_at DESC";                psAllRepos = con.prepareStatement(allReposSql);
                rsAllRepos = psAllRepos.executeQuery();
                
                while(rsAllRepos.next()) {
                    String desc = rsAllRepos.getString("description");
                    if (desc == null) desc = "No description provided.";
                    int repoId = rsAllRepos.getInt("id");
                    int repoOwnerId = rsAllRepos.getInt("owner_id"); 
                    
                    String avatarUrl = rsAllRepos.getString("avatar_url");
                    if (avatarUrl == null || avatarUrl.isEmpty()) {
                        avatarUrl = "img/default-avatar.png";
                    }
            %>
                    <div class="repo-card">
                        <a href="profile.jsp?user_id=<%= repoOwnerId %>">
                            <img src="<%= avatarUrl %>" alt="<%= rsAllRepos.getString("username") %>'s avatar" class="repo-card-avatar">
                        </a>
                        
                        <div class="repo-card-content">
                            <div>
                                <a href="profile.jsp?user_id=<%= repoOwnerId %>" class="repo-name-link" style="color: #c9d1d9;">
                                    <%= rsAllRepos.getString("username") %>
                                </a>
                                
                                <span style="color: #8b949e; margin: 0 4px;">/</span>
                                
                                <a href="view_repo.jsp?id=<%= repoId %>" class="repo-name-link">
                                    <%= rsAllRepos.getString("repo_name") %>
                                </a>
                            </div>
                            <div class="repo-desc"><%= desc %></div>
                        </div>
                    </div>
            <%
                }
            %>
        </div>

        <%
            } catch (Exception e) {
            	  e.printStackTrace();
            }
            finally {
              if (rsUserRepos != null)
                try {
                  rsUserRepos.close();
                } catch (SQLException e) {
                }
              if (psUserRepos != null)
                try {
                  psUserRepos.close();
                } catch (SQLException e) {
                }
              if (rsAllRepos != null)
                try {
                  rsAllRepos.close();
                } catch (SQLException e) {
                }
              if (psAllRepos != null)
                try {
                  psAllRepos.close();
                } catch (SQLException e) {
                }
              if (con != null)
                try {
                  con.close();
                } catch (SQLException e) {
                }
            }
        %>
        
    </div>
</body>
</html>