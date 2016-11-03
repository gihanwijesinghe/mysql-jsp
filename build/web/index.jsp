<%-- 
    Document   : index
    Created on : Nov 2, 2016, 12:54:57 PM
    Author     : Chamini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<HTML>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
       
    </head>
    <body>
         <FORM method="post" action="validation.jsp">
        <h1>Login</h1>
        
       
            User Name:<br>
            <input type="text" name="username" style="width: 200px"><br>
            Password:<br>
            <input type="password" name="password" style="width: 200px"><br><br>
            <input type="submit" value="Submit">
            
            
        </FORM>
    </body>
</HTML>
