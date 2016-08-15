<%-- 
    Document   : logout.jsp
    Created on : 15 Aug, 2016, 2:35:15 PM
    Author     : Gurjot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
            session.setAttribute("sid", null);
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
