<%-- 
    Document   : login
    Created on : Aug 9, 2016, 12:57:34 PM
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
            String s1 = request.getParameter("uname");
            String s2 = request.getParameter("pass");
            int k=0;

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/cll", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from student_login_tabl where sid='" + s1 + "' and pass=PASSWORD('" + s2 + "')");
            if (rs.next()) {
                session.setAttribute("sid", s1);
                session.setAttribute("name", rs.getString(4));
                response.sendRedirect("studentmain.jsp");
            } else {
                response.sendRedirect("register.jsp?login=failed");
               return;
            }
            if (session.getAttribute("sid") == null) {
                response.sendRedirect("index.jsp"); // GO TO LOGIN PAGE
            }

            con.close();

        %>
</body>
</html>
