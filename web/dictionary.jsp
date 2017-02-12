<%-- 
    Document   : dictionary
    Created on : 12 Feb, 2017, 9:24:59 PM
    Author     : Gurjot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dictionary</title>
        <link rel="stylesheet" href="css/dictionary.css">
    </head>
    <body>
        <h1 style="text-align: center;">Dictionary</h1>
        <form method="get" action="">
            <input type="text" name="search" />
            <div class="after"></div>
            <input type="submit" />
        </form>
        <h4>&nbsp;</h4>
        <p>Click search, Enter to submit</p>
        <br>
        <%
           if(request.getParameter("dic-text")!=null){ 
        %>
        <div align="center" style="margin-right:27%;"><h3><u>Search results:</u></h3></div>   
        <%}%>
        <div style="text-align:center; padding-left:30%;width:50%">
            <div style="float:left; display: inline-block;"><b>Pronunciation:</b>&nbsp;</div>
            <div id="pronunciation" style="float:right;"></div><br>
            <div style="float:left; display: inline-block;"><b>Definition:</b>&nbsp;</div>
            <div id="meaning" style="float:right;"></div><br>
            <div style="float:left; display: inline-block;"><b>Synonyms:</b>&nbsp;</div>
            <div id="synonyms" style="float:right;"></div><br>
        </div>
        
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="js/dictionary.js"></script>
        <%
            String dic_text = "";
            if(request.getParameter("search")!=null){
                dic_text = (String)request.getParameter("search");
            }
        %>
        <script>
        var url1 = "http://api.wordnik.com:80/v4/word.json/";
        var word = "<%=dic_text%>";
        var url2 = "/definitions?limit=5&includeRelated=true&sourceDictionaries=all&useCanonical=true&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5";
        
        var ur1 = "http://api.wordnik.com:80/v4/word.json/";
        var pro = "<%=dic_text%>";
        var ur2 = "/pronunciations?useCanonical=false&typeFormat=ahd&limit=1&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5";
        
        var ur3 = "http://api.wordnik.com:80/v4/word.json/";
        var syn = "<%=dic_text%>";
        var ur4 = "/relatedWords?useCanonical=false&relationshipTypes=synonym&limitPerRelationshipType=10&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5";
        function Get(yourUrl){
            var Httpreq = new XMLHttpRequest(); 
            Httpreq.open("GET",yourUrl,false);
            Httpreq.send(null);
            return Httpreq.responseText;          
        }

        var json_obj = JSON.parse(Get(url1+word+url2));
        var pron = JSON.parse(Get(ur1+pro+ur2));
        var syno = JSON.parse(Get(ur3+syn+ur4));
        var payload = json_obj[0].text;
        var payload1 = pron[0].raw;
        var payload2 = syno[0].words;
        var payload2Join = payload2.join(", ");
        document.getElementById("meaning").textContent=payload;
        document.getElementById("pronunciation").textContent=payload1;
        document.getElementById("synonyms").textContent=payload2Join;
        
        //alert(payload2Join);
        //alert(json_obj[0].text);
        //alert(pron[0].raw);        
        </script>
    </body>
</html>
