<%-- 
    Document   : BrisanjeHotela
    Created on : Jan 17, 2019, 1:34:43 PM
    Author     : Poprasic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body{
            background-image: url("slike/8.jpg");
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        .form{
            border:2px solid black;
            background-color: white;
            width: 300px;
            height: 230px;
            margin: 350px 0px 0px 800px;
            position: absolute;
            
            }
            
        
    </style>
    <body>
            
        <div class="form">
            
        <% String msg= (String) request.getAttribute("msg");
                        if(msg != null && msg.length()>0){
                   %>
                        <h2><%= msg%></h2>
                        <%} %>
                        <br>
                        <form action="Hoteli" method="post">
                        <button >Vrati se na listu Hotela</button>                   
                        </form>
        </div>
    </body>
</html>
