<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, utility.DB" %>
<%
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("signin.jsp"); return;
    }
    
    int userId = (Integer) session.getAttribute("user_id");
    String name = request.getParameter("name");
    String bio = request.getParameter("bio");
    String company = request.getParameter("company");
    String country = request.getParameter("country");
    String avatarUrl = request.getParameter("avatar_url");
    try (Connection con = DB.getConnection()) {
    	
    	String sql = "UPDATE github_user SET name=?, bio=?, company=?, country=?, avatar_url=? WHERE id=?";
    	PreparedStatement ps = con.prepareStatement(sql);
    	ps.setString(1, name);
    	ps.setString(2, bio);
    	ps.setString(3, company);
    	ps.setString(4, country);
    	ps.setString(5, avatarUrl);
    	ps.setInt(6, userId);
    	ps.executeUpdate();
    } catch(Exception e) {
        e.printStackTrace();
    }
    response.sendRedirect("profile.jsp");
%>