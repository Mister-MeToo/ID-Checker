<%-- 
    Document   : id_error
    Created on : 04 Oct 2026, 13:21:57
    Author     : IC MOTS
--%>

<%@page import="za.ac.tut.entities.Employee"%>
<%@page import="za.ac.tut.entities.ID"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ID Error Page</title>
    </head>
    <body>
        <%
        Employee employee= (Employee) request.getSession().getAttribute("employee");
        String errorID = (String) request.getAttribute("validID");
        %>
        <h1>ID Error Page</h1>
        <p>
            Whoops <%= employee.getUserName() %>, the id <%=errorID %> is invalid. Try again below.
        </p>
        <br><!-- comment -->
        <a href="enterID.jsp">Click here</a>
    </body>
</html>
