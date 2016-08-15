<%-- 
    Document   : studentlogin
    Created on : Aug 9, 2016, 11:55:25 AM
    Author     : Kashish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String s1=request.getParameter("uname");
       String s2=request.getParameter("pass");
       
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/cll","root","root");
           Statement st=con.createStatement();
           st.executeUpdate("insert into student_login_tabl values('"+s1+"','"+s2+"')");
           out.println("registered");
           con.close();
       
       %>
    </body>
</html>
