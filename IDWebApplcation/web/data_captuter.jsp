<%-- 
    Document   : data_captuter
    Created on : 01 Oct 2026, 20:54:47
    Author     : IC MOTS
--%>

<%@page import="za.ac.tut.entities.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Captuter Page</title>
    </head>
    <%
    Employee employee = (Employee) request.getSession().getAttribute("employee");
    %>
    <body>
        <h1>Data Capturer</h1>
        <P>
            <%=employee.getUserName()%>, you are in the the data capturer mode.
        </P>
        <br>
        <P>
            Choose one of the following actions below:
        </P>
        <uL>
            <li>Click <a href="enterID.jsp">here </a> to see whether ID is valid</li>
            <li>Click <a href="logoutServlet.do">here </a> to logout</li>
        </uL>
        
        <br><!-- comment -->
        <p>
            To return to previous pages.
        </p>
        <ul>
            <li>Click <a href="index.html">here</a> for home Page</li>
            <li>Click <a href="manager.jsp">here</a> to switch role</li>
        </ul>
    </body>
</html>
