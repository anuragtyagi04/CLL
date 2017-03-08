<%-- 
    Document   : changedp
    Created on : 7 Mar, 2017, 11:53:38 PM
    Author     : Gurjot
--%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page WebServlet="/uploadServlet"%>
<%@page MultipartConfig="maxFileSize=16177215"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            InputStream inputStream = null;
            Part s1 = request.getPart("dp");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/cll","root","root");
            Statement st=con.createStatement();
            
            PreparedStatement pre = con.prepareStatement("UPDATE student_login_tabl SET image=?");
            pre.setBlob(1, inputStream);
            pre.executeUpdate();
            System.out.println("Successfully inserted the file into the database!");

            pre.close();
            con.close();
       
       %>
    </body>
</html>
