<%-- 
    Document   : welcome
    Created on : 11 Jan, 2019, 7:49:08 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        String name=(String)session.getAttribute("username"); 
        out.print("Hello User: You have entered the name: "+name); 

        
        %>
    </body>
</html>
