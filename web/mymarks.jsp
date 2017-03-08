<%-- 
    Document   : mymarks
    Created on : 11 Feb, 2017, 9:28:43 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My marks</title>
        <link rel="stylesheet" href="css/mainmenu.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <%
            if (session.getAttribute("sid") == null) {
                response.sendRedirect("index.jsp"); // GO TO LOGIN PAGE
            }
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/cll", "root", "root");
            Statement st = con.createStatement();
            String sid =(String) session.getAttribute("sid");
            String name = (String) session.getAttribute("name");
            int marks=0;
            ResultSet rs1 = st.executeQuery("select marks from marks where sid='"+ sid +"'");
            while (rs1.next()) {
                marks = Integer.parseInt(rs1.getString(1));
            }
            rs1.close();
        %>
        <div class="container">
            <br>
            <div class="jumbotron">
                <h1 class="display-3">Hello, <%=name%></h1>
                <p class="lead">Your score in this Interactive Language Learning module is given below.</p>
                <hr class="my-4">
                <p>You have a total score of <%=marks%>.</p>
                <p class="lead">
                  <a class="btn btn-primary btn-lg" href="studentmain.jsp" role="button">Return to main menu</a>
                </p>
            </div>            
        </div>
    </body>
</html>
