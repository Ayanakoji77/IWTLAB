<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, utility.DB, java.io.File" %>
<%
    
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("signin.jsp"); 
        return;
    }

    String repoIdStr = request.getParameter("id");
    if (repoIdStr == null || repoIdStr.isEmpty()) {
        response.sendRedirect("dashboard.jsp"); 
        return;
    }

    int repoId = Integer.parseInt(repoIdStr);
    int ownerId = (Integer) session.getAttribute("user_id");

    try (Connection con = DB.getConnection()) {

        String selectSql = "SELECT fs_path FROM repositories WHERE id = ? AND owner_id = ?";
        PreparedStatement psSelect = con.prepareStatement(selectSql);
        psSelect.setInt(1, repoId);
        psSelect.setInt(2, ownerId);
        ResultSet rs = psSelect.executeQuery();

        if (rs.next()) {
            String fsPath = rs.getString("fs_path");

            if (fsPath != null && fsPath.contains("codehub_repos")) {
                ProcessBuilder pb = new ProcessBuilder("rm", "-rf", fsPath);
                Process process = pb.start();
                process.waitFor(); 
            }


            String deleteSql = "DELETE FROM repositories WHERE id = ?";
            PreparedStatement psDelete = con.prepareStatement(deleteSql);
            psDelete.setInt(1, repoId);
            psDelete.executeUpdate();
            psDelete.close();
        }
        
        rs.close();
        psSelect.close();
        
    } catch (Exception e) {
        e.printStackTrace();
    }

    response.sendRedirect("dashboard.jsp");
%>