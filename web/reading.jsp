<%-- 
    Document   : index
    Created on : Aug 25, 2016, 12:53:12 PM
    Author     : Gurjot
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
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <%
            if (session.getAttribute("sid") == null) {
                response.sendRedirect("index.jsp"); // GO TO LOGIN PAGE
            }
            
            //int k = (Integer) session.getAttribute("k"); 
            int k = Integer.parseInt(request.getParameter("passage"));
            //Integer a = (Integer)session.getAttribute("count");
            //int k = a.intValue();
            //System.out.println(k);
            int j = 1;
            int pagePassage = k;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/cll", "root", "root");
            Statement st = con.createStatement();
            Statement star = con.createStatement();
            ResultSet rs1 = st.executeQuery("select * from questions where q_id=" + k + j + "");
            ResultSet namesList = star.executeQuery("select passage from passage_tabl where id=" + k + "");
            ArrayList<String> list = new ArrayList<String>();
            if(!namesList.isBeforeFirst()){
                response.sendRedirect("studentmain.jsp");
            }else{
                while (namesList.next()) {
                    list.add(namesList.getString(1));
                }
            }
            session.setAttribute("key",k);
            String[] result = new String[list.size()];
            result = list.toArray(result);
                  
            if (rs1.next()) {
                String question1 = rs1.getString(2);
                String ans11 = rs1.getString(3);
                String ans12 = rs1.getString(4);
                String ans13 = rs1.getString(5);
                String ans14 = rs1.getString(6);
        %>         
        <div class="whole">
            <h1>Reading</h1>
            <div class="passage">
                <p class="passage"><%= result[0]%></p>
            </div>
            <form class="opt" action="calculate_passage_marks.jsp?passage=<%=pagePassage%>" method="POST">
                <!--reading.jsp?passage=<%//=++pagePassage %>-->
                <p class="question"><h6>Q1.  <%= question1%></p></h6>
            
                <input class='opt' type="radio" name="ans1" value="<%= ans11%>" id="radio01"><label for="radio01"><span></span><%= ans11%></label><br>
                <input class='opt' type="radio" name="ans1" value="<%= ans12%>" id="radio02"><label for="radio02"><span></span><%= ans12%></label><br>
                <input class='opt' type="radio" name="ans1" value="<%= ans13%>" id="radio03"><label for="radio03"><span></span><%= ans13%></label><br>
                <input class='opt' type="radio" name="ans1" value="<%= ans14%>" id="radio04"><label for="radio04"><span></span><%= ans14%></label><br>
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
                <p class="question"><h6>Q2.  <%= question2%></p></h6>
                <input class='opt' type="radio" name="ans2" value="<%= ans21%>" id="radio05"><label for="radio05"><span></span><%= ans21%></label><br>
                <input class='opt' type="radio" name="ans2" value="<%= ans22%>" id="radio06"><label for="radio06"><span></span><%= ans22%></label><br>
                <input class='opt' type="radio" name="ans2" value="<%= ans23%>" id="radio07"><label for="radio07"><span></span><%= ans23%></label><br>
                <input class='opt' type="radio" name="ans2" value="<%= ans24%>" id="radio08"><label for="radio08"><span></span><%= ans24%></label><br>
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
            <p class="question"><h6>Q3.  <%= question3%></p></h6>
                <input class='opt' type="radio" name="ans3" value="<%= ans31%>" id="radio09"><label for="radio09"><span></span><%= ans31%></label><br>
                <input class='opt' type="radio" name="ans3" value="<%= ans32%>" id="radio10"><label for="radio10"><span></span><%= ans32%></label><br>
                <input class='opt' type="radio" name="ans3" value="<%= ans33%>" id="radio11"><label for="radio11"><span></span><%= ans33%></label><br>
                <input class='opt' type="radio" name="ans3" value="<%= ans34%>" id="radio12"><label for="radio12"><span></span><%= ans34%></label><br>
            <br>
            <input type="submit" id="NextBtn">
            </form>
            <!--<a href="reading.jsp?passage=<%=++k %>"><input type="submit" id="NextBtn"></a>-->
            <%}
                rs3.close();
                namesList.close();%>
        </div>
        <div class="whole">
            <h4>Go to passage:</h4>
            <%
                ResultSet passageCount = star.executeQuery("select COUNT(passage) from passage_tabl");
                ArrayList<String> paginate = new ArrayList<String>();
                while (passageCount.next()) {
                    paginate.add(passageCount.getString(1));
                }
                String[] pCount = new String[list.size()];
                
                pCount = paginate.toArray(result);
                for (int i = 1; i <= Integer.parseInt(pCount[0]); i++) {
                                 
            %>            
            <a href="reading.jsp?passage=<%=i%>"><input type="button" value="<%=i%>"></a>
            <%
                }
            %>
            <div style="float: right">
                <a href="studentmain.jsp">Go to main menu</a>
            </div>
        </div>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>