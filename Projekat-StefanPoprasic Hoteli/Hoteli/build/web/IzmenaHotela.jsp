<%-- 
    Document   : IzmenaHotela
    Created on : Jan 17, 2019, 1:30:17 PM
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
            border:4px solid black;
            background-color: gray;
            width: 680px;
            height: 600px;
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
            <h1>Hoteli</h1>
            <table>
                <tr>
                    <td width="50px">Id</td>
                    <td width="150px">Ime</td>
                    <td width="100px">Id grada</td>
                </tr>
                <c:forEach items="${hotels}" var="hotel">
                    <tr>
                        <td>${hotel.idHotel}</td>
                        <td>${hotel.ime}</td>
                        <td>${hotel.idGrad}</td>
                        <td><a href="BrisanjeHotela?idHotel=${hotel.idHotel}">Obrisi</a></td>
                    </tr>
                </c:forEach>
             </table>
            <form action="DodajHotel" method="post">
                <table>
                    <h4>Dodavanje hotela</h4>
                     <tr>
                    <td width="50px">Id</td>
                    <td width="100px">Ime</td>
                    <td width="100px">Id grada</td>
                </tr>
                    <tr>
                        <td><input size="2" type="text" name="idHotel"></td>
                        <td><input size="10" type="text" name="ime"></td>
                        <td><input size="10" type="text" name="idGrad"></td>
                        <td><input size=20 type="submit" value="dodaj"></td>
                    </tr>                                        
                </table>
            </form> 
             <form action="IzmeniHotel" method="post">
                <table>
                    <h4>Izmeni hotel</h4>
                     <tr>
                    <td width="50px">Id</td>
                    <td width="100px">Ime</td>
                    <td width="100px">Id grada</td>
                </tr>
                    <tr>
                        <td><input size="2" type="text" name="idHotel"></td>
                        <td><input size="10" type="text" name="ime"></td>
                        <td><input size="10" type="text" name="idGrad"></td>
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
