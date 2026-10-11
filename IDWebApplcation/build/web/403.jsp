<%@page import="za.ac.tut.entities.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forbidden Area Page</title>
    </head>
    <%
    Employee employee = (Employee) request.getSession().getAttribute("employee");
    %>
    <body>
        <h1>You are not allowed to see this !</h1>
        <p><%= employee.getUserName()%> you should opening a different page</p>
        <ul>
            <li><a href="role.jsp">Try Again</a></li>
        </ul>
    </body>
</html>
