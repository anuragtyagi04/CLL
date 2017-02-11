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
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>        
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/mainmenu.js"></script>
        <%
            response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
            response.addHeader("Pragma", "no-cache");
            response.addDateHeader("Expires", 0);
            //int k = (int)session.getAttribute("count");
            //System.out.println(k);  

            if ((session.getAttribute("sid") == null) || (session.getAttribute("sid") == "")) {
        %>
        You are not logged in<br/>
        <a href="index.jsp">Please Login</a>
        <%
        } else {
        %>
        <p style="text-align: left;">Welcome <%=session.getAttribute("name")%><span style="float: right;"><a href='logout.jsp'>Log out</a></span></p>          
        <%
            }
            if (session.getAttribute("sid") == null) {
                response.sendRedirect("index.jsp"); // GO TO LOGIN PAGE
            }
        %>
        <div style="font-family:'Hoefler Text',Georgia,'Times New Roman',serif;font-weight: normal;font-size: 1.75em;letter-spacing: .2em;line-height: 1.1em; margin:0px; text-align: center; text-transform: uppercase;">Interactive Language Learning</div>
        
        <div class="container menu">
            <!--<div class="yel">-->
            <a class="block" href="reading.jsp?passage=1">Reading
                <div class="hide"></div>
            </a>
            <!--<div class="desc1">
            In this unit we will look at:
            <li>making your reading more efficient by defining your purpose for reading.</li>
            <li>finding information quickly by scanning.</li>
            <li>topic sentences and how they can help you understand a text.</li>
            <li>identifying the main arguments in a text.</li>
            <li>summarising the information you find.</li> 
            </div>-->
            <!--</div>-->
            <!--<div class="gre">-->
            <a class="block" href="listen.html">
                <div class="hide">Listening</div>
            </a>
            <!--<div class="desc2">Some Text Here</div>-->
            <!--</div>-->
            <a class="block" href="#">
                <div class="hide">Module 3</div>
            </a>
            <!--<div class="desc3">Some Text Here</div>-->
            <a class="block" href="#">
                <div class="hide">Module 4</div>
            </a>
            <!-- <div class="desc4">Some Text Here</div>-->
            <a class="block" href="#">
                <div class="hide">Module 5</div>
            </a>
            <!--<div class="desc5">Some Text Here</div>-->
            <a class="block" href="mymarks.jsp">
                <div class="hide">My marks</div>
            </a>
            <!--<div class="desc6">Some Text Here</div>-->
        </div>        
        <!--<script src="js/desc.js"></script>-->
    </body>
</html>