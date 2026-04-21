 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, utility.DB" %>
<%
  
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("signin.jsp");
        return;
    }


    int UserId = (int)session.getAttribute("user_id");
    String userAvatar = "img/default-avatar.png";

    Connection navCon = null;
    PreparedStatement navPs = null;
    ResultSet navRs = null;

    try {
        navCon = DB.getConnection();
        String avatarSql = "SELECT avatar_url FROM github_user WHERE id = ?";
        navPs = navCon.prepareStatement(avatarSql);
        navPs.setInt(1, UserId);
        navRs = navPs.executeQuery();

        if (navRs.next()) {
            String dbAvatar = navRs.getString("avatar_url");
            if (dbAvatar != null && !dbAvatar.trim().isEmpty()) {
                userAvatar = dbAvatar;
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (navRs != null) try { navRs.close(); } catch (SQLException e) {}
        if (navPs != null) try { navPs.close(); } catch (SQLException e) {}
        if (navCon != null) try { navCon.close(); } catch (SQLException e) {}
    }
%>

<%

	String currentPath = request.getRequestURI(); 
	
	String pageTitle = "Dashboard"; 
	String navLink = "dashboard.jsp";
	

	if (currentPath.matches("(?i).*home.*")) {
	    
	    pageTitle = "Dashboard";
	    navLink = "home.jsp";
	} 
	else if (currentPath.matches("(?i).*repositor.*")) {
	    
	    pageTitle = "Repositories";
	    navLink = "repositories.jsp";
	} 
	else if (currentPath.matches("(?i).*profile.*")) {
	    
	    pageTitle = "Profile";
	    navLink = "profile.jsp";
	}
	else if (currentPath.matches("(?i).*add.*")) {
	    
	    pageTitle = "Add Repository";
	    navLink = "add_repo.jsp";
	}
%>

<nav class="navbar">
    <div class="nav-left">
        <button class="icon-btn" onclick="toggleSidebar()" aria-label="Menu">
        	<img src="img/three-bars.svg" alt="menu">
        </button>
        
        <a href="<%=navLink%>" class="logo-link">
        	<img src="img/logo_light.svg" class="logo-nav" alt="codehub">
        </a>
        
        <a href="<%=navLink%>" class="dashboard-text"><%=pageTitle %></a>
    </div>

    <div class="nav-middle">
        <div class="searchbar">
            <svg class="search-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16">
                <path fill="#6c6f72" d="M10.68 11.74a6 6 0 0 1-7.922-8.982 6 6 0 0 1 8.982 7.922l3.04 3.04a.749.749 0 0 1-.326 1.275.749.749 0 0 1-.734-.215ZM11.5 7a4.499 4.499 0 1 0-8.997 0A4.499 4.499 0 0 0 11.5 7Z"></path>
            </svg>
            
            <div class="search-input-wrapper">
                <span class="placeholder-text">Type <span class="slash-box">/</span> to search</span>
                <input type="text" id="searchInput">
            </div>
        </div>
    </div>

   		<div class="nav-right">  
		    <div class="action-buttons">
		        <button class="icon-btn right-btn">
		            <img src="img/copilot.svg" alt="Copilot" class="nav-icon">
		        </button>
		        <button class="icon-btn right-btn">
		           <span> <a href="add_repo.jsp">+</a></span>
		        </button>
		        <button class="icon-btn right-btn">
		            <img src="img/dot.svg" alt="Issues" class="nav-icon">
		        </button>
		        <button class="icon-btn right-btn">
		            <img src="img/git-pull-request.svg" alt="Pull Requests" class="nav-icon">
		        </button>
		        <button class="icon-btn right-btn">
		            <img src="img/inbox.svg" alt="Inbox" class="nav-icon">
		            <span class="notification-dot"></span>
		        </button>
		    </div>
		
		    <div class="profile-menu-container">
		        <button class="profile-btn" onclick="toggleProfileMenu()">
		            <img src="<%= userAvatar %>" alt="Profile" class="profile-pic">
		        </button>
		
		        <div class="profile-dropdown" id="profileDropdown">
		            <div class="dropdown-header">
		                <img src="<%= userAvatar %>" alt="Profile" class="dropdown-avatar">
		                <div class="dropdown-user-info">
		                    <span class="dropdown-username"><%=session.getAttribute("username") %></span>
		                </div>
		            </div>
		            
		            <div class="dropdown-divider"></div>
		            
		            <a href="profile.jsp" class="dropdown-item">
		               <img src="img/smiley.svg" alt="Inbox" class="nav-icon">
		                Profile
		            </a>
		            
		            <a href="profile.jsp?user_id=<%=UserId %>&tab=repositories" class="dropdown-item">
		              <img src="img/repo.svg" alt="Inbox" class="nav-icon">
		                Repositories
		            </a>
		             <a href="logout.jsp" class="dropdown-item">
		              <img src="img/sign-out.svg" alt="Inbox" class="nav-icon">
		                Sign Out
		            </a>
		        </div>
		    </div>
		</div>
        
</nav>

<div class="sidebar" id="leftSidebar">
    <div class="sidebar-header">
        <a href="dashboard.jsp" class="sidebar-logo">
            <img src="img/logo_light.svg" alt="codehub" class="logo-nav">
        </a>
        <button class="icon-btn close-btn" onclick="toggleSidebar()">
            <img src="img/cross.svg" alt="Close" class="nav-icon">
        </button>
    </div>
    
    <div class="sidebar-content">
        <a href="dashboard.jsp" class="sidebar-item">
            <img src="img/home.svg" alt="Home" class="nav-icon">
            Home
        </a>
        
        <a href="profile.jsp?user_id=<%=UserId %>&tab=repositories" class="dropdown-item">
            <img src="img/repo.svg" alt="Repositories" class="nav-icon">
            Repositories
        </a>
    </div>
</div>