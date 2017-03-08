<%-- 
    Document   : calculate_passage_marks
    Created on : 11 Feb, 2017, 6:06:59 PM
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
        <title>JSP Page</title>
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
            String ans1 = request.getParameter("ans1");
            String ans2 = request.getParameter("ans2");
            String ans3 = request.getParameter("ans3");
            ArrayList<String> answers = new ArrayList<String>();
            answers.add(ans1);
            answers.add(ans2);
            answers.add(ans3);
            int k = Integer.parseInt(request.getParameter("passage"));
            
            int marks=0;
            ResultSet rs1 = st.executeQuery("select marks from marks where sid='"+ sid +"'");
            while (rs1.next()) {
                marks = Integer.parseInt(rs1.getString(1));
            }
            
            for(int i=1;i<=3;i++){
                ResultSet rs = st.executeQuery("select ans from questions where q_id="+k+i+"");
                while (rs.next()) {
                       int j = i;
                       j--;
                       String ans = rs.getString(1);
                       if(ans.equals(answers.get(j))){
                           marks++;
                       }
                }
                rs.close();
            }
            rs1.close();
            st.executeUpdate("Update marks set marks = '"+ marks +"' where sid='"+ sid +"' ");            
            response.sendRedirect("reading.jsp?passage="+ ++k +"");
        %>
    </body>
</html>
