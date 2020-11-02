<%-- 
    Document   : Admin
    Created on : Jan 17, 2019, 1:09:44 PM
    Author     : Poprasic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
        body{
            background:black;
            background-attachment: fixed;
            background-size: 100% 100%;
        }   
   
    </style>
    </head>
    <body>
        <table>
            <tr>
                <td align="center"><font color="white">Korisnici</font></td>
                <td align="center"><font color="white">Hoteli</font></td>
                <td align="center"><font color="white">Sobe</font></td>
            </tr>
            <tr>
                <td>
                    <form action="Korisnici" method="POST">
            <input type="image" src="slike/10.png" alt="Submit" width="550" height="700">
        </form>
                </td>
                <td>
                    <form action="Hoteli" method="POST">
                        <input type="image" src="slike/9.jpg" alt="Submit" width="550" height="700">
        </form>
                </td>
                <td>
                    <form action="Sobe" method="POST">
                        <input type="image" src="slike/11.jpg" alt="Submit" width="550" height="700">
        </form>
                </td>
            </tr>
        </table>
        
        
        
    </body>
</html>