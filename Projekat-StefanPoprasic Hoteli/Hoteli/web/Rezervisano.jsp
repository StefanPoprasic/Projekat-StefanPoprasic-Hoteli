<%-- 
    Document   : Rezervisano
    Created on : Feb 3, 2019, 6:17:35 PM
    Author     : Poprasic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <style>
         body{
            background-image: url("slike/8.jpg");
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        .form{
            border:4px solid white;
            background-color: black;
            width: 680px;
            height: 350px;
            margin: 350px 0px 0px 400px;
            position: absolute;
            font-size: 20px;
            color: white;
            
            
            }
          
        
    </style>
    <body>
        
        <div class="form">
            
        <% String msg= (String) request.getAttribute("msg");
                        if(msg != null && msg.length()>0){
                   %>
                        <h2><font color="white"><%= msg%></font></h2>
                        <%} %>
                        <br>
                        <form action="Logovanje.jsp" method="post">
                            <h1>Uspesno ste odradili!!</h1><br><br>
                            
                            <button>Odjava</button>                  
                        </form>
        </div>
    </body>
</html>
