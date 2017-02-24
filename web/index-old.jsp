<%-- 
    Document   : index.jsp
    Created on : Aug 8, 2016, 6:46:41 AM
    Author     : Gurjot
--%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login | Interactive Language Learning</title>
        <link rel="stylesheet" href="css/mainmenu.css">
        <link rel="stylesheet" href="css/style.css">        
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        
        <h1 class="display-1">Interactive Language Learning</h1>
        <!--<div class="test"
             data-slides='[
             "css/images/image (1).jpg",
             "css/images/image (2).jpg", 
             "css/images/image (3).jpg", 
             "css/images/image (4).jpg", 
             "css/images/image (5).jpg",
             "css/images/image (6).jpg",
             "css/images/image (7).jpg",
             ]'>-->
            <div class="login-page">
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
                %>
                
                <div class="form">
                    <form class="register-form"  action="studentregister.jsp">
                        <span style="text-align: left;"><h5>Register:</h5></span>
                        <input type="text" placeholder="Name" name="name"/>
                        <input type="text" placeholder="Roll number" name="rno"/>
                        <input type="text" placeholder="Username" name="uname"/>
                        <input type="password" placeholder="Password" name="pass"/>                    
                        <button>create</button>
                        <p class="message">Already registered? <a href="#">Sign In</a></p>
                    </form>
                    <form class="login-form"  action="login.jsp">
                        <span style="text-align: left;"><h5>Login:</h5></span>
                        <input type="text" placeholder="Username" name="uname"/>
                        <input type="password" placeholder="Password" name="pass"/>
                        <button>Login</button>
                        <p class="message">Not registered? <a href="#">Create an account</a></p>
                        <p class="message">Login as Faculty?<a href="flogin.jsp">Click here</a></p>
                    </form>
                </div>
            </div>
            <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>            
            <script src="js/bootstrap.min.js" type="text/javascript"></script>            
            <script src="js/index.js"></script>
            <!--<script src="js/slideshow.js"></script>
            <script src="js/slideshow.min.js"></script>-->
        </div>
    </body>
</html>
