<%-- 
    Document   : Otkazi
    Created on : Jan 17, 2019, 5:54:55 PM
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
            
        <a href="Logovanje.jsp">Odjavi se</a>
        </div>
       
        <div class="form">
            <h1>Otkazi rezervaciju</h1>
           <table>
                <tr>
                    <td width="400px">Ime</td>
                    <td width="400px">Prezime</td>
                    <td width="400px">Telefon</td>
                    <td width="400px">Poeni</td>
                    <td width="350px">Cena</td>
                    <td width="400px">Ime hotela</td>
                    <td width="350px">Tip sobe</td>
                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.ime}</td>
                        <td>${user.prezime}</td>
                        <td>${user.telefon}</td>
                        <td>${user.poeni}</td>
                        <td>${user.cena}</td>
                        <td>${user.imeHotel}</td>
                        <td>${user.tipSobe}</td>
                        <input size="10" type="hidden" name="poeni" value="${user.idKorisnik}">
             
                        
                    </tr>
                </c:forEach>
                   
           </table><br><br><br>
             <form action="Izmena" method="post">
                <table>
                    <tr>
                        <td><input size="2" type="hidden" name="idHotel" value="1"></td>
                        <td><input size="10" type="hidden" name="cena" value="0"></td>
                        <td><input size="10" type="hidden" name="idSoba" value="10"></td>
                        <td><input size="10" type="hidden" name="poeni" value="-1000"></td>
                        <td><input size="10" type="hidden" name="idKorisnik" value="${user.idKorisnik}"></td>
                        <td><input size=20 type="submit" value="Otkazi"></td>
                    </tr>                                        
                </table>
          </form>
         
        </div>
       </form>
         
           
          
</html>
