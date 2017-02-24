<%-- 
    Document   : register
    Created on : 24 Feb, 2017, 9:49:45 PM
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
        <title>Regiter | Interactive Language Learning</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style-register.css">
        <link rel="stylesheet" href="css/form-elements-register.css">
        <link rel="shortcut icon" href="css/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="css/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="css/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="css/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="css/ico/apple-touch-icon-57-precomposed.png">
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
                <a href="register.jsp"><button class="btn btn-outline-success my-2 my-sm-0">Register</button></a>
            </div>
        </nav>
        <div class="container">
            <br>
            <%
                String reg_alert="";
                if(request.getParameter("register")!=null){
                reg_alert=(String) request.getParameter("register");
                if(reg_alert.equals("failed")){
            %>
            <div class="alert alert-danger">User registration failed. User name already exists.</div>
            <%
                }else if(reg_alert.equals("success")){
            %>
            <div class="alert alert-success">User successfully registered. Please login to continue.</div>
            <%
                }
                }
                if(request.getParameter("login")!=null){
                    reg_alert=(String) request.getParameter("login");
                    if(reg_alert.equals("failed")){
                    %>
                    <div class="alert alert-danger">Username or password incorrect. Try again.</div>
                    <%
                    }
                }
                if(request.getParameter("logout")!=null){
                    reg_alert=(String) request.getParameter("logout");
                    if(reg_alert.equals("yes")){
                    %>
                    <div class="alert alert-success">Successfully logged out!</div>
                    <%
                    }
                }
            %>                    
            <div class="row">
                <div class="col-sm-5">
                    <div class="form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Login to our site</h3>
                            <p>Enter username and password to log on:</p>
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-key"></i>
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" action="login.jsp" class="login-form">
                                <div class="form-group">
                                    <label class="sr-only" for="uname">Username</label>
                                    <input type="text" name="uname" placeholder="Username..." class="form-username form-control" id="uname">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="pass">Password</label>
                                    <input type="password" name="pass" placeholder="Password..." class="form-password form-control" id="pass">
                                </div>
                                <button type="submit" class="btn">Sign in!</button>
                            </form>
                            <p class="message">Login as Faculty?<a href="flogin.jsp">Click here</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-1 middle-border"></div>
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Sign up now</h3>
                                <p>Fill in the form below to get instant access:</p>
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-pencil"></i>
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" action="studentregister.jsp" class="registration-form">
                                <div class="form-group">
                                    <label class="sr-only" for="name">Name</label>
                                    <input type="text" name="name" placeholder="Name..." class="form-first-name form-control" id="name">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="rno">Roll number</label>
                                    <input type="text" name="rno" placeholder="Roll number..." class="form-last-name form-control" id="rno">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="uname">Username</label>
                                    <input type="text" name="uname" placeholder="Username..." class="form-email form-control" id="uname">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="pass">Password</label>
                                    <input type="password" name="pass" placeholder="Password..." class="form-email form-control" id="pass">
                                </div>
                                <button type="submit" class="btn">Sign me up!</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <p align="center" class="text-muted">The Northcap University</p>
        </footer>
        <script src="js/jquery-3.1.1.js" type="text/javascript"></script>        
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
