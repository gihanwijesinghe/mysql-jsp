<%-- 
    Document   : validation
    Created on : Nov 2, 2016, 1:05:20 PM
    Author     : Chamini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import ="java.sql.*" %>
 <%@ page import ="javax.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login_success</title>
    </head>
    <body>
        
        <% 
            String username;
            String password;
     try{
        username = request.getParameter("username");   
        password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?" , username, password); 

//        if(conn != null)           
//           out.println("Valid login");    
        if(conn != null && username.equals("finley")){   

            out.println(username);
            out.println("<a href='create_user.jsp'>create_user</a>");
       
        }   
     }
    catch(Exception e){       
       out.println("Invalid password <a href='index.jsp'>try again</a>");       
    } 
   
        
%>
    </body>
</html>
