<%-- 
    Document   : BrisanjeKorisnika
    Created on : Jan 17, 2019, 1:18:48 PM
    Author     : Poprasic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <style>
        body{
            background-image: url("slike/12.jpg");
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
                        <form action="Korisnici" method="post">
                        <button >Vrati se na listu korisnika</button>                   
                        </form>
        </div>
    </body>
</html>
