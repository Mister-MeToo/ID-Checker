<%-- 
    Document   : role
    Created on : 01 Oct 2026, 19:57:39
    Author     : IC MOTS
--%>

<%@page import="za.ac.tut.entities.Employee"%>
<%@page import="za.ac.tut.entities.ID"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Role Page</title>
    </head>
    <body>
        <%
        Employee employee = (Employee) request.getSession().getAttribute("employee");
        %>
        <h1>Hello <%=employee.getUserName() %></h1>
        <h2>Unique employee ID: <%=employee.getEmpID()%> </h2>
        
        <p>
            <b>Siri</b> here again
            <br>
            Choose one of the roles below to proceed:
        </p>
        <ul>
            <li>Click <a href="data_captuter.jsp">here </a> for data capturer </li>
            <li>Click <a href="manager.jsp">here </a> for manager </li>
        </ul>
        
    </body>
</html>
