<%-- 
    Document   : Logovanje
    Created on : Jan 17, 2019, 1:06:09 PM
    Author     : Poprasic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <style>
        body{
            background-image: url("slike/luksuz.jpg");
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        .form{
            border:4px solid black;
            background-color: gray;
            width:400;
            height: 300;
            margin:360px 0px 0px 760px;
            position: absolute;
            
        }
    </style>
    <body>
    <form action="Login" method="POST">
        <div class="form" align="center">
            <h1>Logovanje</h1>
            <table>
                <tr>
                    <td>Korisnicko ime :</td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                    <td>Lozinka</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td><input type="submit" nama="potvrdi" value="Potvrdi"></td>
                    <td><input type="reset" name="resetuj" value="Reset"></td>
                </tr>
            </table>
            Nemate nalog? <a href="Registracija.jsp">Registruj se</a>
            <br><% String message=(String) request.getAttribute("message");
            if(message != null && message.length()>0){
                %>
                <p><%=message%></p>
                <%}%>
        </div>
    </form>
    </body> 
</html>
