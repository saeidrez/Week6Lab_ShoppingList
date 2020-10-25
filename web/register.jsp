<%-- 
    Document   : register
    Created on : Oct 22, 2020, 5:12:48 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        
        <form action="ShoppingList" method="post">
            <label for="username"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="username">
            <input type="hidden" name="action" value="register">
            <input type="Submit" value="Register Name">
            <br>
            ${message}
            
        </form>
    </body>
</html>
