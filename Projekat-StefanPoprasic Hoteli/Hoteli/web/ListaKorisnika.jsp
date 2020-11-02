<%-- 
    Document   : ListaKorisnika
    Created on : Jan 17, 2019, 1:16:13 PM
    Author     : Poprasic
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Korisnici</title>
    </head>
    <style>
        body{
            background-image: url("slike/12.jpg");
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        .form{
            border:4px solid black;
            background-color: gray;
            width: 680px;
            height: 700px;
            margin: 350px 0px 0px 400px;
            position: absolute;
            
            }
         .odjava{
             border:4px solid black;
             background-color: gray;
             width: 80px;
             float: right;
            }
            .meni{
             border:4px solid black;
             background-color: gray;
             width: 80px;
             float: right;
            }
    </style>
    <body>
        <div class="odjava">
        <a href="Logovanje.jsp">Odjavi se</a>
        </div>
        <div class="meni">
        <a href="Admin.jsp">Povratak na meni</a>
        </div>
        <div class="form">
            <h1>Korisnici:</h1>
            <table>
                <tr>
                    <td width="350px">Id</td>
                    <td width="400px">Ime</td>
                    <td width="400px">Prezime</td>
                    <td width="400px">Telefon</td>
                    <td width="400px">Username</td>
                    <td width="350px">Password</td>
                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.idKorisnik}</td>
                        <td>${user.ime}</td>
                        <td>${user.prezime}</td>
                        <td>${user.telefon}</td>
                        <td>${user.username}</td>
                        <td>${user.password}</td>
                        <td><a href="BrisanjeKorisnika?username=${user.username}">Obrisi</a></td>
                    </tr>
                </c:forEach>
                   
            </table>
            <form action="IzmeniKorisnika" method="post">
                <table>
                    <h4>Izmeni korisnika</h4>
                    <tr>
                    <td width="350px">Id</td>
                    <td width="400px">Ime</td>
                    <td width="400px">Prezime</td>
                    <td width="400px">Telefon</td>
                    <td width="400px">Username</td>
                    <td width="350px">Password</td>
                </tr>
                    <tr>
                        <td><input size="2" type="text" name="idKorisnik"></td>
                        <td><input size="10" type="text" name="ime"></td>
                        <td><input size="10" type="text" name="prezime"></td>
                        <td><input size="10" type="text" name="telefon"></td>
                        <td><input size="10" type="text" name="username"></td>
                        <td><input size="10" type="text" name="password"></td>
                        <td><input size=20 type="submit" value="Izmeni"></td>
                    </tr>                                        
                </table>
               
            </form>    
            <% String msg= (String) request.getAttribute("msg");
                        if(msg != null && msg.length()>0){
                   %>
                        <p><%= msg%></p>
                        <%} %>
        </div>
        
    </body>
</html>
