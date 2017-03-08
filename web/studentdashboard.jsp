<%--
    Document   : studentdashboard
    Created on : 7 Mar, 2017, 10:52:37 PM
    Author     : Gurjot
--%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Profile Page</title>
        <link type="text/css" rel="stylesheet" href="css/profile.css" />
        <script src="js/navbar.js" type="text/javascript"></script>
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
                            <a class="dropdown-item" href="studentdashboard.jsp">Dashboard</a>
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
        <div class="row">
            <div style="margin-left: 20px;">
                <div class="card" style="width: 97vw">
                    <div class="card-block">
                        <h4 class="card-title" >My Profile</h4>
                    </div>
                    <div class="panel-body">
                        <%
                            String pass_alert="";
                            if(request.getParameter("password_change")!=null){
                                pass_alert=(String) request.getParameter("password_change");
                                if(pass_alert.equals("failed")){
                        %>
                                    <div class="alert alert-danger">Password not changed. Password did not match.</div>
                        <%
                                }else if(pass_alert.equals("success")){
                        %>
                                    <div class="alert alert-success">Password successfully changed.</div>
                        <%
                                }else if(pass_alert.equals("curpassincorrect")){
                        %>
                                    <div class="alert alert-danger">Current password incorrect. Try again.</div>
                        <%
                                }
                            }
                        %>
                        <h5>Profile Information</h5>
                        <div class="float-right">
                            <%if((rs.getBlob(6))==null){%>
                                <img class="img-rounded" src="pics/avatar.png" width="150" height="150">
                            <%
                                }else{
                            %>
                                <img class="img-rounded" src="image.jsp" width="150" height="150" />
                            <%
                                }
                            %>
                        </div>
                        <br>
                        <table class="col-md-6">
                        <tr class="col-md-6">
                            <td><p><b>User Name:</b></p></td>
                            <td><p><%=sid%></p></td>
                        </tr>
                        <tr class="col-md-6">
                            <td><p><b>Name:</b></p></td>
                            <td><p><%=rs.getString(4)%></p></td>
                        </tr>
                        <tr class="col-md-6">
                            <td><p><b>Roll number:</b></p></td>
                            <td><p><%=rs.getString(2)%></p></td>
                        </tr>
                        </table>
                        </br>
                        </br>
                        <div class="row">
                            <h5>Change Password</h5>
                        </div>
                        <div class="row">
                            <form class="form-inline" action="changepassword.jsp">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="Current_Password">Current Password:</label>
                                        <input type="password" class="form-control" id="Current_Password" name="Current_Password">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="New_Password">New Password:</label>
                                        <input type="password" class="form-control" id="New_Password" name="New_Password">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="Confirm_Password">Confirm Password:</label>
                                        <input type="password" class="form-control" id="Confirm_Password" name="Confirm_Password">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <input class="btn btn-primary" type="submit" value="Change Password">
                                </div>
                            </form>
                        </div>
                        <div class="row">
                                <h5>Change Profile Picture</h5>
                        </div>
                        <div class="row">
                            <form class="form-inline" action="changedp" method="post" enctype="multipart/form-data">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input class="btn" type="file" name="dp" id="dp">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input class="btn btn-primary" type="submit" value="Upload File">
                                    </div>
                                </div>
                            </form>
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
