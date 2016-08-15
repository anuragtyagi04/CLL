<%-- 
    Document   : student
    Created on : Aug 15, 2016, 1:16:10 PM
    Author     : Gurjot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Menu</title>
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
            if ((session.getAttribute("sid") == null) || (session.getAttribute("sid") == "")) {
        %>
        You are not logged in<br/>
        <a href="index.jsp">Please Login</a>
        <%} else {
        %>
        <p style="text-align: left;">
            Welcome <%=session.getAttribute("sid")%>
            <span style="float: right;">
                <a href='logout.jsp'>Log out</a>
                <%
                    }
                %>
            </span>
        </p>
        <div class="menu">
            <div class="yel">
                <a class="yellow" href="#">Reading</a>
                <div class="desc1">
                    In this unit we will look at:                    
                    <li>making your reading more efficient by defining your purpose for reading.</li>
                    <li>finding information quickly by scanning.</li>
                    <li>topic sentences and how they can help you understand a text.</li>
                    <li>identifying the main arguments in a text.</li>
                    <li>summarising the information you find.</li>                    
                </div>
            </div>
            <div class="gre">
                <a class="green" href="#">Listening</a>
                <div class="desc2">Some Text Here</div>
            </div>
            <a class="pink" href="#">Module 3</a>
            <!--                <div class="desc3">Some Text Here</div>-->
            <a class="purple" href="#">Module 4</a>
            <!--                <div class="desc4">Some Text Here</div>-->
            <a class="blue" href="#">Module 5</a>
            <!--                <div class="desc5">Some Text Here</div>-->
            <a class="orange" href="#">Module 6</a>
            <!--                <div class="desc6">Some Text Here</div>-->
        </div>
        <script src="js/mainmenu.js"></script>
        <script src="js/desc.js"></script>
    </body>
</html>
