<%-- 
    Document   : index
    Created on : Nov 2, 2016, 12:54:57 PM
    Author     : Chamini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import ="java.sql.*" %>
  <%@ page import ="javax.sql.*" %>
<!DOCTYPE html>
<HTML>
    <head>
        <title>Create_user</title>
        <meta charset="UTF-8">
       
    </head>
    <body>
         <FORM method="post" action="create_user.jsp">
        <h1>Create_user</h1>
        
       
            User Name:<br>
            <input type="text" name="username" style="width: 200px"><br>
            Password:<br>
            <input type="password" name="password" style="width: 200px"><br><br>
            Give the following Priviledges <Br><Br>

            <input type="checkbox" name="id" value="SELECT"> Select<BR>
            <input type="checkbox" name="id" value="INSERT"> Insert<BR>
            <input type="checkbox" name="id" value="UPDATE"> Update<BR>
            <input type="checkbox" name="id" value="DELETE"> Delete<BR><Br>

            <input type="submit" value="Submit"><Br><Br>
            
        </FORM>
        <%
        StringBuilder builder = new StringBuilder();
        String select[] = request.getParameterValues("id"); 
        if (select != null && select.length != 0) {
            out.println("\n");

            for (int i = 0; i < select.length; i++) {
               // out.println(select[i]); 
                builder.append(select[i] + ",");             
            }
        }
        String query = builder.toString();
        if (query == null || query.length() == 0) {
            out.println(query);           
        }
        else{query = query.substring(0,query.length()-1);}
        
        out.println();
        out.println(query);

        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
       
        try{        
            Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?" , "finley", "some_pass");
        
            Statement st = conn.createStatement();
            int in = st.executeUpdate("CREATE USER '" + username + "'@'localhost' IDENTIFIED BY '" + password + "'");
            int in1 = st.executeUpdate("GRANT " + query + " ON *.* TO '" + username + "'@'localhost'");
        }
        catch(Exception e){
            out.println(username + " already exists!!!!!");
        }


        %>
    </body>
</HTML>
