<%-- 
    Document   : dictionary
    Created on : 26 Feb, 2017, 9:24:59 PM
    Author     : Lovlesh
--%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Dashboard</title>
        <link type="text/css" rel="stylesheet" href="css/cards.css" />        
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
    </head>
    <body>
        <%
            if (session.getAttribute("sid") == null) {
                response.sendRedirect("index.jsp"); // GO TO LOGIN PAGE
            }
            response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
            response.addHeader("Pragma", "no-cache");
            response.addDateHeader("Expires", 0);
            
            String sid = (String)session.getAttribute("sid");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/cll", "root", "root");
            Statement st = con.createStatement();
            
            ResultSet rs = st.executeQuery("select * from student_login_tabl where sid='" + sid + "'");
            rs.next();
            //rs.getString(5);
        %>
	<nav class="navbar navbar-toggleable-md navbar-light bg-faded navbar-fixed-top">            
            <a class="navbar-brand" href="index.jsp">Interactive Language Learning</a>
            <div class="pull-right" style="margin-left: 65%;">
                <ul class="nav navbar-nav" style="width: 100%;">
                    <li class="dropdown">
                        <a class="nav-link dropdown-toggle" href=# id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <%=session.getAttribute("name")%>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item disabled" href="#">Dashboard</a>
                            <a class="dropdown-item" href="logout.jsp"><i class="fa fa-sign-out"></i> Sign-out</a>
                        </div>
                    </li>
                    <li class="profile-image">                        
                        <a class="nav-link" href="#">
                            <%if((rs.getBlob(6))==null){%>
                                <img class="profile-image" src="pics/avatar.png">
                            <%
                                }else{
                            %>
                                <img src="image.jsp" width="50" height="50" />
                            <%
                                }
                            %>
                        </a>
                        
                    </li>
                </ul>
            </div>
	</nav>
        <div class="container">
            <div class="row">
                <div style="margin-left: 20px;">
                    <div class="card" style="">
                        <a href="reading.jsp?passage=1" class="link">
                                <img src="pics/reading.png" alt="" style="width: 20rem; height: 15rem;">
                        </a>
                        <div class="card-block">
                            <h4 class="card-title" >Reading</h4>
                        </div>
                    </div>	
                </div>
                <div style="margin-left: 20px;">
                    <div class="card" style="">
                        <a href="listen.html" class="link"> 
                            <img src="pics/listen.jpg" alt="" style="width: 20rem; height: 15rem;">
                        </a>
                        <div class="card-block">
                            <h4 class="card-title" >Listening</h4>
                        </div>
                    </div>
                </div>
                <div style="margin-left: 20px;">
                    <div class="card" style="">
                        <a href=# class="link">
                            <img src="pics/undefined.png" alt="" style="width: 20rem; height: 15rem;">
                        </a>
                        <div class="card-block">
                            <h4 class="card-title" >Module 3</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div style="margin-left: 20px;">
                    <div class="card" style="">
                        <a href=# class="link">
                            <img src="pics/undefined.png" alt="" style="width: 20rem; height: 15rem;">
                        </a>
                        <div class="card-block">
                            <h4 class="card-title" >Module 4</h4>
                        </div>
                    </div>
                </div>
                <div style="margin-left: 20px;">
                    <div class="card" style="">
                        <a href="dictionary.jsp" class="link">
                            <img src="pics/dictionary.png" alt="" style="width: 20rem; height: 15rem;">
                        </a>
                        <div class="card-block">
                            <h4 class="card-title" >Dictionary</h4>
                        </div>
                    </div>
                </div>
                <div style="margin-left: 20px;">
                    <div class="card" style="">
                        <a href="mymarks.jsp" class="link">
                            <img src="pics/marks.jpg" alt="" style="width: 20rem; height: 15rem;">
                        </a>
                        <div class="card-block">
                            <h4 class="card-title">My Marks</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/navbar.js" type="text/javascript"></script>
        <script src="js/jquery-3.1.1.js" type="text/javascript"></script>        
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    </body>
</html>