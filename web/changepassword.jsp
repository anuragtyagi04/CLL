<%-- 
    Document   : changepassword
    Created on : 7 Mar, 2017, 11:10:51 PM
    Author     : Gurjot
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
            if (session.getAttribute("sid") == null) {
                response.sendRedirect("index.jsp"); // GO TO LOGIN PAGE
            }
            String s1=request.getParameter("Current_Password");
            String s2=request.getParameter("New_Password");
            String s3 = request.getParameter("Confirm_Password");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/cll","root","root");
            Statement st=con.createStatement();
            ResultSet rs = st.executeQuery("select * from student_login_tabl where sid='" + session.getAttribute("sid") + "' and pass=PASSWORD('" + s1 + "')");
            if (rs.next()) {
                if(s2.equals(s3)){
                   st.executeUpdate("UPDATE student_login_tabl SET pass = PASSWORD('"+s2+"') WHERE `sid` = '"+session.getAttribute("sid")+"'");
                   response.sendRedirect("studentdashboard.jsp?password_change=success");
                }else{
                   response.sendRedirect("studentdashboard.jsp?password_change=failed");
                   return; 
                }
            }else{
                response.sendRedirect("studentdashboard.jsp?password_change=curpassincorrect");
                return; 
            }
            con.close();
       
       %>
    </body>
</html>
