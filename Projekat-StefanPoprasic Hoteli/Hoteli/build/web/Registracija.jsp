<%-- 
    Document   : Registracija
    Created on : Feb 3, 2019, 2:51:47 PM
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
            background-image: url("slike/luksuz.jpg");
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        .form{
            border: 4px solid black;
            background-color: gray;
            width:400px;
            height:400px;
            margin:360px 0px 0px 760px;
            position: absolute;
        }
    </style>
    <body>
        <form action="Registration" method="POST">
            <div class="form" align="center">
                <h1>Registracija</h1>
                <table>
                    <tr>
                        <td>Ime :</td>
                        <td><input type="text" name="ime"></td>
                    </tr>
                    <tr>
                        <td>Prezime :</td>
                        <td><input type="text" name="prezime"></td>
                    </tr>
                    <tr>
                        <td>Telefon :</td>
                        <td><input type="text" name="telefon"></td>
                    </tr>
                    <tr>
                        <td>Username :</td>
                        <td><input type="text" name="username"></td>
                    </tr>
                    <tr>
                        <td>Lozinka :</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                     <tr>
                    <td><input type="submit" nama="potvrdi" value="Potvrdi"></td>
                    <td><input type="reset" name="resetuj" value="Reset"></td>
                </tr>
                </table>
                <br><br> Imate nalog? <a href="Logovanje.jsp">Ulogujte se !</a>
            <br><% String message=(String) request.getAttribute("message");
            if(message != null && message.length()>0){
                %>
                <p><%=message%></p>
                <%}%>
            </div>
        </form>
    </body>
</html>
