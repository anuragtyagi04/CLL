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
            if (session.getAttribute("sid") == null) {
                response.sendRedirect("index.jsp"); // GO TO LOGIN PAGE
            }
            String s1=request.getParameter("uname");
            String s2=request.getParameter("pass");
            String s3 = request.getParameter("name");
            String s4 = request.getParameter("rno");
       
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/cll","root","root");
           Statement st=con.createStatement();
           try{
            st.executeUpdate("insert into student_login_tabl(sid,pass,name,rno) values('"+s1+"',PASSWORD('"+s2+"'), '"+s3+"', '"+s4+"')");
           }catch (com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException e){
               response.sendRedirect("register.jsp?register=failed");
               return;
               //throw new Exception("Username already exists");
           }
           st.executeUpdate("insert into marks(sid,marks) values ('"+s1+"',0)");
           response.sendRedirect("register.jsp?register=success");
           con.close();
       
       %>
    </body>
</html>
