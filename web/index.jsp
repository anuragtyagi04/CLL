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
        <title>Login</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="test"
             data-slides='[
             "css/images/image (4).JPG",
             "css/images/image (1).JPG",
             "css/images/image (2).JPG",
             "css/images/image (3).JPG",
             "css/images/image (5).JPG",
             "css/images/image (6).JPG",
             "css/images/image (7).JPG",
             "css/images/image (8).JPG",
             "css/images/image (9).JPG",
             "css/images/image (10).JPG",
             "css/images/image (11).JPG",
             "css/images/image (12).JPG",
             "css/images/image (13).JPG",
             "css/images/image (14).JPG",
             "css/images/image (15).JPG",
             "css/images/image (16).JPG",
             "css/images/image (17).JPG",
             "css/images/image (18).JPG",
             "css/images/image (19).JPG",
             "css/images/image (20).JPG",
             "css/images/image (21).JPG",
             "css/images/image (22).JPG",
             "css/images/image (23).JPG",
             "css/images/image (23).JPG",
             "css/images/image (25).JPG",
             "css/images/image (26).JPG",
             "css/images/image (27).JPG",
             "css/images/image (28).JPG",
             "css/images/image (29).JPG",
             "css/images/image (30).JPG",
             "css/images/image (31).JPG",
             "css/images/image (32).JPG",
             "css/images/image (33).JPG",
             "css/images/image (34).JPG",
             "css/images/image (35).JPG",
             "css/images/image (36).JPG",
             "css/images/image (37).JPG",
             "css/images/image (38).JPG",
             "css/images/image (39).JPG",
             "css/images/image (40).JPG",
             "css/images/image (41).JPG",
             "css/images/image (42).JPG",
             "css/images/image (43).JPG"
             ]'>
            <div class="login-page">
                <div class="form">
                    <form class="register-form"  action="studentregister.jsp">                    
                        <input type="text" placeholder="Username" name="uname"/>
                        <input type="password" placeholder="Password" name="pass"/>                    
                        <button>create</button>
                        <p class="message">Already registered? <a href="#">Sign In</a></p>
                    </form>
                    <form class="login-form"  action="login.jsp">
                        <input type="text" placeholder="Username" name="uname"/>
                        <input type="password" placeholder="Password" name="pass"/>
                        <button>Login</button>
                        <p class="message">Not registered? <a href="#">Create an account</a></p>
                        <p class="message">Login as Faculty?<a href="flogin.jsp">Click here</a></p>
                    </form>
                </div>
            </div>
            <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
            <script src="js/index.js"></script>
            <script src="js/slideshow.js"></script>
            <script src="js/slideshow.min.js"></script>
        </div>
    </body>
</html>
