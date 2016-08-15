<%-- 
    Document   : index.jsp
    Created on : Aug 8, 2016, 6:46:41 AM
    Author     : Gurjot
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body style="background: #76b852;">
        <div class="login-page">
            <div class="form">
                <form class="login-form"  action="facultylogin.jsp">
                    <h1 /> FACULTY LOGIN
                    <br /><br />
                    <input type="text" placeholder="Username" name="funame"/>
                    <input type="password" placeholder="Password" name="fpass"/>
                    <button>Login</button>
                </form>
            </div>
        </div>
    </body>
</html>
