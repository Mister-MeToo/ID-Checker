<%-- 
    Document   : manager
    Created on : 01 Oct 2026, 20:55:01
    Author     : IC MOTS
--%>

<%@page import="za.ac.tut.entities.Employee"%>
<%@page import="za.ac.tut.entities.ID"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Page</title>
    </head>
      <%
        Employee employee = (Employee) request.getSession().getAttribute("employee");
    %>
    <body>
         <h1>Manager</h1>
        <P>
            <%=employee.getUserName()%>, you are in the the manager mode.
        </P>
        <br>
        <P>
            Choose one of the following actions below:
        </P>
        <uL>
            <li>Click <a href="viewAllIDs.do">here </a> to view all IDs</li>
            <li>Click <a href="enterDetails.jsp">here </a> to view total IDs captured by specific data capturer</li>
            <li>Click <a href="logoutServlet.do">here </a> to logout</li>
        </uL>
        <br>
        <p>
            To return to previous pages.
        </p>
        <ul>
            <li>Click <a href="index.html">here</a> for home Page</li>
            <li>Click <a href="data_captuter.jsp">here</a> to switch role</li>
        </ul>
    </body>
</html>
