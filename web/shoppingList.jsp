<%-- 
    Document   : shoppingList
    Created on : Oct 22, 2020, 5:13:02 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <br>
        Hello, ${username} <br>
         <p><a href="ShoppingList?action=logout">Logout</a></p>
        <h2> List </h2>
         <form action="" method="post">
            <label for="items"><b>Add item:</b></label>
            <input type="text" placeholder="Enter an item" name="item">
             <input type="hidden" name="action" value="add">
            <input type="Submit" value="Add">
         </form>
            <br>
            <form action="" method="post">
             <c:forEach var="items" items="${items}">
                 <input type="radio" name="item" value="${items}">${items}
              </c:forEach>
             <br>
              <input type="hidden" name="action" value="delete">
            <input type="Submit" value="Delete">
            
        </form>
    </body>
</html>
