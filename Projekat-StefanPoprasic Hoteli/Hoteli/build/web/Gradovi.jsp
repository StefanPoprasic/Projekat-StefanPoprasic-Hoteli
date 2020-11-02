<%-- 
    Document   : Gradovi
    Created on : Jan 17, 2019, 3:38:15 PM
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
            background-image: url("slike/3.jpg");
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        .form{
            
            border:4px solid black;
            
            width: 600px;
            height: 350px;
            margin: 350px 0px 0px 400px;
            position: absolute;
            font-size: 25px;
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
        </div>
        <div class="form">
            <h1>Izaberi Grad</h1>
            <table>
                <tr>
                    <td width="150px">Ime Grada</td>
                </tr>
                <c:forEach items="${gradovi}" var="grad">
                    <tr>
                        <td>${grad.imeGrada}</td>
                        <td><a href="IzborHotela?idGrad=${grad.idGrad}"><font color="white">Izaberi</font></a></td>
                    </tr>
                </c:forEach>
             </table>
            
        </div>
    </body>
</html>
