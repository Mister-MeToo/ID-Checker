<%-- 
    Document   : enterDetails
    Created on : 10 Oct 2026, 20:27:52
    Author     : IC MOTS
--%>

<%@page import="za.ac.tut.entities.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <%
    Employee employee = (Employee) request.getSession().getAttribute("employee");
    %>
    <body>
        <h1>Search for data capturer</h1>
        <p>
            <%=employee.getUserName() %>, enter the name of data captuter below:
        </p>
        <form action="totalIDServlet.do" method="post">
           <table border="1">
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" required=""/></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Submit"></td>
            </tr>
            </table> 
        </form>
        
    </body>
</html>
