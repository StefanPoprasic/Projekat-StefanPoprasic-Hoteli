<%-- 
    Document   : IzborSobe
    Created on : Jan 17, 2019, 3:51:43 PM
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
            background-image: url("slike/7.jpg");
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
            
            <h1>Izaberi Sobu</h1>
            <table>
                <tr>
                    <td width="150px">Tip sobe</td>
                    <td width="150px">Cena sobe</td>
                </tr>
                <c:forEach items="${sobe}" var="soba">
                    <tr>
                        
                        <td>${soba.tipSobe}</td>
                        <td>${soba.cena}</td>
                        <td><a href="Rezervacija?idSoba=${soba.idSoba}">Izaberi</a></td>
                        
                        
                    </tr>
                    
                </c:forEach>
             </table>
        
        </div>
          
</html>
