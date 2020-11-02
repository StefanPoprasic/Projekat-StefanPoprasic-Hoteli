<%-- 
    Document   : BrisanjeSobe1
    Created on : Jan 17, 2019, 2:25:23 PM
    Author     : Poprasic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
        body{
            background-image: url("slike/13.jpg");
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
                        <form action="Menadzer1" method="post">
                        <button >Vrati se na listu Soba</button>                   
                        </form>
        </div>
    </body>
</html>
