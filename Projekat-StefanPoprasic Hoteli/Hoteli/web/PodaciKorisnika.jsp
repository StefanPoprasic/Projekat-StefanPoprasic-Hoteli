<%-- 
    Document   : PodaciKorisnika
    Created on : Jan 17, 2019, 2:54:56 PM
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
            background-image: url("slike/luksuz.jpg");
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        .form{
            border:4px solid white;
            background-color: black;
            width: 930px;
            height: 350px;
            margin: 350px 0px 0px 400px;
            position: absolute;
            color: white;
            }
         .odjava{
             border:4px solid white;
             background-color: black;
             width: 80px;
             float: right;
             color: white;
            }
    </style>
    <body>
        <div class="odjava">
        <a href="Logovanje.jsp"><font color="white">Odjavi se</font></a>
        <a href="Otkazi.jsp"><font color="white">Otkazi</font></a>
        </div>
        <form action="BiranjeGrada" method="POST">
        <div class="form">
            <h1>Korisnik:</h1>
            <table>
                <tr>
                    <td width="400px">Ime</td>
                    <td width="400px">Prezime</td>
                    <td width="400px">Telefon</td>
                    <td width="400px">Poeni</td>
                    <td width="350px">Cena</td>
                    <td width="400px">Ime Hotela</td>
                    <td width="350px">Tip Sobe</td>
                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <input size="10" type="hidden" name="poeni" value="${user.idKorisnik}">
                        <td>${user.ime}</td>
                        <td>${user.prezime}</td>
                        <td>${user.telefon}</td>
                        <td>${user.poeni}</td>
                        <td>${user.cena}</td>
                        <td>${user.imeHotel}</td>
                        <td>${user.tipSobe}</td>
                        
                        <input size="10" type="hidden" name="poeni" value="${user.idKorisnik}">
                    </tr>
                    <td><input type="submit" nama="potvrdi" value="Izaberi grad"></td>
                </c:forEach>
                   
            </table>
              
            <% String msg= (String) request.getAttribute("msg");
                        if(msg != null && msg.length()>0){
                   %>
                        <p><%= msg%></p>
                        <%} %>
        </div>
        </form>
    </body>
</html>
