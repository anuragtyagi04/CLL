<%-- 
    Document   : facultymain
    Created on : 13 Aug, 2016, 2:34:12 PM
    Author     : Gurjot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Main Page</title>
        <link rel="stylesheet" href="css/mainmenu.css">
    </head>
    <body>
        <%

            response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
            response.addHeader("Pragma", "no-cache");
            response.addDateHeader("Expires", 0);
        %>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
        <%
            if ((session.getAttribute("fid") == null) || (session.getAttribute("fid") == "")) {
        %>
        You are not logged in<br/>
        <a href="index.jsp">Please Login</a>
        <%} else {
        %>
        <p style="text-align: left;">
            Welcome <%=session.getAttribute("fid")%>
            <span style="float: right;">
                <a href='logout.jsp'>Log out</a>
                <%
                    }
                %>
            </span>
        </p>
    </body>
</html>
