<%-- 
    Document   : index
    Created on : 24 Feb, 2017, 9:03:35 PM
    Author     : Gurjot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.awt.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%Class.forName("java.sql.DriverManager");%>
<html>
    <head>
        <%
            if (session.getAttribute("sid") != null) {
                response.sendRedirect("studentmain.jsp");
            }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Interactive Language Learning</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>
            .footer {
                position: absolute;
                bottom: 0;
                width: 100%;
                /* Set the fixed height of the footer here */
                height: 30px;
                background-color: #f5f5f5;
            }
        </style>
    </head>
    <body>        
        <nav class="navbar navbar-toggleable-md navbar-light bg-faded">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">Interactive Language Learning</a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact Us</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0" action="login.jsp">
                    <input class="form-control mr-sm-2" type="text" placeholder="Username" name="uname"/>
                    <input class="form-control mr-sm-2" type="password" placeholder="Password" name="pass"/>
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
                </form>
                &nbsp;
                <a href="register.jsp" target="_BLANK"><button class="btn btn-outline-success my-2 my-sm-0">Register</button></a>
            </div>
        </nav>
        <div class="container" style="">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img class="d-block img-fluid" src="pics/image (1).JPG" style="width:100%; height:1%;" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="pics/image (2).JPG" style="width:100%; height:1%;" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block img-fluid" src="pics/image (3).JPG" style="width:100%; height:1%;" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <footer class="footer">
            <p align="center" class="text-muted">The Northcap University</p>
        </footer>

        <script src="js/jquery-3.1.1.js" type="text/javascript"></script>        
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
