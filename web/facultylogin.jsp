<%-- 
    Document   : login
    Created on : Aug 13, 2016, 02:22:34 PM
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
            String s1 = request.getParameter("funame");
            String s2 = request.getParameter("fpass");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/cll", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from faculty_login_tabl where fid='" + s1 + "' and pass='" + s2 + "'");
            if (rs.next()) {
                //request.getRequestDispatcher("/facultymain.jsp").forward(request,response);
                session.setAttribute("fid", s1);
                response.sendRedirect("facultymain.jsp");
            } else {
        %>
    <center><h1><a href="flogin.jsp">TRY AGAIN</a></h1></center>
                <%
                    }

                    con.close();

                %>
</body>
</html>
