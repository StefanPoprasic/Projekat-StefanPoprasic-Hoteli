<%-- 
    Document   : IzborHotela
    Created on : Jan 17, 2019, 3:48:23 PM
    Author     : Poprasic
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
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
        <a href="Logovanje.jsp">Odjavi se</a>
        </div>
        <div class="form">
            <h1>Izaberi Hotel</h1>
            <table>
                <tr>
                    <td width="250px">Ime Hotela</td>
                </tr>
                <c:forEach items="${hoteli}" var="hotel">
                    <tr>
                        <td>${hotel.ime}</td>
                        <td><a href="IzborSobe?idHotel=${hotel.idHotel}">Izaberi</a></td>
                    </tr>
                </c:forEach>
             </table>
        </div>
</html>
