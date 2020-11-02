<%-- 
    Document   : IzmenaSoba
    Created on : Jan 17, 2019, 1:47:43 PM
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
            background-image: url("slike/11.jpg");
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        .form{
            border:4px solid black;
            background-color: gray;
            width: 680px;
            height: 800px;
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
            <h1>Sobe</h1>
            <table>
                <tr>
                    <td width="50px">IdSoba</td>
                    <td width="150px">Tip Sobe</td>
                    <td width="200px">idHotela</td>
                    <td width="200px">Naziv Hotela</td>
                    <td width="200px">Cena</td>
                </tr>
                <c:forEach items="${sobe}" var="soba">
                    <tr>
                        <td>${soba.idSoba}</td>
                        <td>${soba.tipSobe}</td>
                        <td>${soba.idHotel}</td>
                        <td>${soba.ime}</td>
                        <td>${soba.cena}</td>
                        <td><a href="BrisanjeSobe?idSoba=${soba.idSoba}">Obrisi</a></td>
                    </tr>
                </c:forEach>
             </table>
              <form action="DodajSobu" method="post">
                <table>
                    <h4>Dodavanje sobe</h4>
                     <tr>
                    <td width="50px">IdSobe</td>
                    <td width="100px">Tip Sobe</td>
                    <td width="200px">idHotel</td>
                    <td width="200px">cena</td>
                </tr>
                    <tr>
                        <td><input size="2" type="text" name="idSoba"></td>
                        <td><input size="10" type="text" name="tipSobe"></td>
                        <td><input size="10" type="text" name="idHotel"></td>
                        <td><input size="10" type="text" name="cena"></td>
                        <td><input size=20 type="submit" value="Dodaj"></td>
                    </tr>                                        
                </table>
            </form> 
             <form action="IzmeniSobu" method="post">
                <table>
                    <h4>Izmeni sobu</h4>
                     <tr>
                    <td width="50px">IdSobe</td>
                    <td width="100px">Tip sobe</td>
                    <td width="200px">idHotel</td>
                    <td width="200px">cena</td>
                </tr>
                    <tr>
                        <td><input size="2" type="text" name="idSoba"></td>
                        <td><input size="10" type="text" name="tipSobe"></td>
                        <td><input size="10" type="text" name="idHotel"></td>
                        <td><input size="10" type="text" name="cena"></td>
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
