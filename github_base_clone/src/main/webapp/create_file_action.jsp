<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, utility.DB, java.io.*" %>
<%
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("signin.jsp"); return;
    }

    int repoId = Integer.parseInt(request.getParameter("repo_id"));
    int userId = (Integer) session.getAttribute("user_id");
    String filename = request.getParameter("filename");
    String content = request.getParameter("content");

    try (Connection con = DB.getConnection()) {
        PreparedStatement ps = con.prepareStatement("SELECT fs_path FROM repositories WHERE id = ? AND owner_id = ?");
        ps.setInt(1, repoId);
        ps.setInt(2, userId);
        ResultSet rs = ps.executeQuery();
        
        if (rs.next()) {
            String folderPath = rs.getString("fs_path");

            File newFile = new File(folderPath, filename);

            if (!newFile.exists()) {
                FileWriter writer = new FileWriter(newFile);
                writer.write(content);
                writer.close();
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }

    response.sendRedirect("view_repo.jsp?id=" + repoId);
%>