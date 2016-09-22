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
            int k = 1;
            int j = 1;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/cll", "root", "root");
            Statement st = con.createStatement();
            Statement star = con.createStatement();
            ResultSet rs1 = st.executeQuery("select * from questions where q_id=" + k + j + "");
            ResultSet namesList = star.executeQuery("select passage from passage_tabl where id=" + k + "");
            ArrayList<String> list = new ArrayList<String>();
            while (namesList.next()) {
                list.add(namesList.getString(1));
            }
            String[] result = new String[list.size()];
            result = list.toArray(result);
            for (int i = 0; i < list.size(); i++) {
                System.out.println(result[i]);
            }
            if (rs1.next()) {
                String question1 = rs1.getString(2);
                String ans11 = rs1.getString(3);
                String ans12 = rs1.getString(4);
                String ans13 = rs1.getString(5);
                String ans14 = rs1.getString(6);
        %>         

        <div class="whole">
            <div class="passage"> 
                <p class="passage"><%= result[0]%></p>
            </div>
            <p class="question"><%= question1%></p>
            <form class="opt">
                <input class='opt' type="radio" name="radio" id="radio01"><label for="radio01"><span></span><%= ans11%></label><br>
                <input class='opt' type="radio" name="radio" id="radio02"><label for="radio02"><span></span><%= ans12%></label><br>
                <input class='opt' type="radio" name="radio" id="radio03"><label for="radio03"><span></span><%= ans13%></label><br>
                <input class='opt' type="radio" name="radio" id="radio04"><label for="radio04"><span></span><%= ans14%></label>
            </form>
            <% }
                rs1.close();
                ResultSet rs2 = st.executeQuery("select * from questions where q_id=" + k + ++j + "");
                if (rs2.next()) {
                    String question2 = rs2.getString(2);
                    String ans21 = rs2.getString(3);
                    String ans22 = rs2.getString(4);
                    String ans23 = rs2.getString(5);
                    String ans24 = rs2.getString(6);
            %>
            <p class="question"><%= question2%></p>
            <form class="opt">
                <input class='opt' type="radio" name="radio" id="radio05"><label for="radio05"><span></span><%= ans21%></label><br>
                <input class='opt' type="radio" name="radio" id="radio06"><label for="radio06"><span></span><%= ans22%></label><br>
                <input class='opt' type="radio" name="radio" id="radio07"><label for="radio07"><span></span><%= ans23%></label><br>
                <input class='opt' type="radio" name="radio" id="radio08"><label for="radio08"><span></span><%= ans24%></label>
            </form>
            <%}
                rs2.close();
                ResultSet rs3 = st.executeQuery("select * from questions where q_id=" + k + ++j + "");
                if (rs3.next()) {
                    String question3 = rs3.getString(2);
                    String ans31 = rs3.getString(3);
                    String ans32 = rs3.getString(4);
                    String ans33 = rs3.getString(5);
                    String ans34 = rs3.getString(6);
            %>
            <p class="question"><%= question3%></p>
            <form class="opt">
                <input class='opt' type="radio" name="radio" id="radio09"><label for="radio09"><span></span><%= ans31%></label><br>
                <input class='opt' type="radio" name="radio" id="radio10"><label for="radio10"><span></span><%= ans32%></label><br>
                <input class='opt' type="radio" name="radio" id="radio11"><label for="radio11"><span></span><%= ans33%></label><br>
                <input class='opt' type="radio" name="radio" id="radio12"><label for="radio12"><span></span><%= ans34%></label>
            </form><br>
            <input type="submit" id="NextBtn">
            <script>
                document.getElementById("NextBtn").addEventListener("click", myFunction);
                function myFunction() {
                    <%
                        k++;
                        System.out.println(k);
                    %>
                    window.location.reload();
                }
            </script>
            <%}
                rs3.close();
                namesList.close();%>
        </div></body>
</html>