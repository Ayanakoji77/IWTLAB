<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, utility.DB" %>
<%
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("signin.jsp");
        return;
    }

    int targetUserId;
    if (request.getParameter("user_id") != null) {
        targetUserId = Integer.parseInt(request.getParameter("user_id"));
    } else {
        targetUserId = (Integer) session.getAttribute("user_id");
    }

    ResultSet userRs = null;
    Connection con = null;
    PreparedStatement psRepos = null;
    ResultSet repoRs = null;
    
    try {
        con = DB.getConnection();
        String sql = "SELECT * FROM github_user WHERE id = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, targetUserId);
        userRs = ps.executeQuery();
        
        if (!userRs.next()) {
            response.sendRedirect("dashboard.jsp");
            return;
        }
%>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" type="image" href="img/logo_dark.svg" sizes="32x32">
    <title><%= userRs.getString("username") %> - CodeHub</title>
    <link rel="stylesheet" href="css/reset-css.css">
    <link rel="stylesheet" href="css/navbar.css">
    <script type="text/javascript" src="js/navbar.js"></script>
    <link rel="stylesheet" href="css/profile.css">
</head>
<body>
    <%@ include file="navbar.jsp" %>
    
    <div class="profile-container">
        <div class="profile-sidebar">
            <img src="<%= userRs.getString("avatar_url") != null ? userRs.getString("avatar_url") : "img/default-avatar.png" %>" class="profile-avatar">
            
            <div class="profile-names">
                <span class="profile-fullname"><%= userRs.getString("name") != null ? userRs.getString("name") : userRs.getString("username") %></span>
                <span class="profile-username"><%= userRs.getString("username") %></span>
            </div>
            
            <div class="profile-bio">
                <%= userRs.getString("bio") != null ? userRs.getString("bio") : "No bio provided." %>
            </div>
            
            <% if (targetUserId == (Integer) session.getAttribute("user_id")) { %>
                <a href="edit_profile.jsp" class="btn-edit-profile" style="text-decoration:none; display:block; text-align:center; box-sizing: border-box;">Edit profile</a>
            <% } %>

            <ul class="profile-details">
                <% if(userRs.getString("company") != null) { %>
                    <li>🏢 <%= userRs.getString("company") %></li>
                <% } %>
                <% if(userRs.getString("country") != null) { %>
                    <li>📍 <%= userRs.getString("country") %></li>
                <% } %>
            </ul>
        </div>
        
		<div class="profile-main">
            <% 
              
                String currentTab = request.getParameter("tab");
                if (currentTab == null) currentTab = "overview"; 
            %>

            <div class="profile-tabs">
                <a href="profile.jsp?user_id=<%= targetUserId %>&tab=overview" 
                   class="tab-link <%= currentTab.equals("overview") ? "tab-active" : "tab-inactive" %>">Overview</a>
                
                <a href="profile.jsp?user_id=<%= targetUserId %>&tab=repositories" 
                   class="tab-link <%= currentTab.equals("repositories") ? "tab-active" : "tab-inactive" %>">Repositories</a>
            </div>
            
            <% if (currentTab.equals("overview")) { %>
                <h3>Overview</h3>
                <div class="readme-box" style="margin-top: 15px;">
                    <div class="readme-content" style="padding: 20px;">
                        Welcome to <%= userRs.getString("username") %>'s GitHub profile!
                    </div>
                </div>

            <% } else if (currentTab.equals("repositories")) { %>
                <h3>Repositories</h3>
                <div class="repo-grid">
                    <%
                        String repoSql = "SELECT id, repo_name, description, visibility FROM repositories WHERE owner_id = ? ORDER BY created_at DESC";
                        psRepos = con.prepareStatement(repoSql);
                        psRepos.setInt(1, targetUserId);
                        repoRs = psRepos.executeQuery();
                        
                        while(repoRs.next()) {
                            String desc = repoRs.getString("description");
                            if(desc == null) desc = "";
                            String visibility = repoRs.getString("visibility");
                            if(visibility == null) visibility = "public"; 
                    %>
                            <div class="profile-repo-card">
                                <div class="repo-card-header">
                                    <a href="view_repo.jsp?id=<%= repoRs.getInt("id") %>" class="profile-repo-link">
                                        <%= repoRs.getString("repo_name") %>
                                    </a>
                                    <span class="repo-visibility-badge"><%= visibility %></span>
                                </div>
                                <p class="profile-repo-desc">
                                    <%= desc.isEmpty() ? "No description provided." : desc %>
                                </p>
                            </div>
                    <%
                        }
                    %>
                </div>
            <% } %>
        </div>
    </div>
</body>
</html>
<%
    } catch (Exception e) {
    	  e.printStackTrace();
    }
    finally {
      if (repoRs != null)
        try {
          repoRs.close();
        } catch (SQLException e) {
        }
      if (psRepos != null)
        try {
          psRepos.close();
        } catch (SQLException e) {
        }
      if (userRs != null)
        try {
          userRs.getStatement().close();
          userRs.close();
        } catch (SQLException e) {
        }
      if (con != null)
        try {
          con.close();
        } catch (SQLException e) {
        }
    }
%>