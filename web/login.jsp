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
            String s1 = request.getParameter("uname");
            String s2 = request.getParameter("pass");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/cll", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from student_login_tabl where sid='" + s1 + "' and pass='" + s2 + "'");
            if (rs.next()) {
                //request.getRequestDispatcher("/studentmain.jsp").forward(request,response);
                session.setAttribute("sid", s1);
                response.sendRedirect("studentmain.jsp");
            } else {
        %>
    <center><h1><a href="index.jsp">TRY AGAIN</a></h1></center>
                <%
                    }

                    con.close();

                %>
</body>
</html>
