<%-- 
    Document   : index
    Created on : Aug 25, 2016, 12:53:12 PM
    Author     : Anurag
--%>
<!DOCTYPE html>
<%@page import="java.awt.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%Class.forName("java.sql.DriverManager");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/passage.css">
    </head>
    <body>
        <%
            String question = "1. The word 'Command Module' used twice in the given passage indicates perhaps that it deals with";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/cll", "root", "root");
            Statement st = con.createStatement();
            Statement star = con.createStatement();
            ResultSet rs = st.executeQuery("select * from answers where col1='an alarming journey'");
            ResultSet namesList = star.executeQuery("SELECT passages FROM passage_tabl");
            ArrayList<String> list = new ArrayList<String>();
            while (namesList.next()) {
                list.add(namesList.getString(1));
            }
            String[] result = new String[list.size()];
            result = list.toArray(result);
            for (int i = 0; i < list.size(); i++) {
                System.out.println(result[i]);
            }
            if (rs.next()) {
                String ans1 = rs.getString(1);
                String ans2 = rs.getString(2);
                String ans3 = rs.getString(3);
                String ans4 = rs.getString(4);
        %>         

        <div class="whole">
            <button id="myBtn">Try it</button>
            <div class="passage"> 
                <p class="passage"><%= result[0]%></p>
            </div>
            <p class="question"><%= question%></p>
            <form class="opt">
                <input class='opt' type="radio" name="radio" id="radio01"><label for="radio01"><span></span><%= ans1%></label><br>
                <input class='opt' type="radio" name="radio" id="radio02"><label for="radio02"><span></span><%= ans2%></label><br>
                <input class='opt' type="radio" name="radio" id="radio03"><label for="radio03"><span></span><%= ans3%></label><br>
                <input class='opt' type="radio" name="radio" id="radio04"><label for="radio04"><span></span><%= ans4%></label>
            </form>   
            <%}
                rs.close();
                namesList.close();%>
        </div></body>
</html>