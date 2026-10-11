<%-- 
    Document   : viewEmployee_output
    Created on : 10 Oct 2026, 21:04:58
    Author     : IC MOTS
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Results Page</title>
    </head>
    <body>
        <h1>Search Results Page</h1>
        <table border="1">
            <tr>
                <th>Employee ID</th>
                <th>User Name</th>
            </tr>
            <%
                List <Employee> employees = (List<Employee>) request.getAttribute("matchingEmployees");
                if (employees != null && !employees.isEmpty()) {
                for (Employee emp : employees) {
            %>
            <tr>
                <td><%= emp.getEmpID() %></td>
                <td><%= emp.getUserName() %></td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="2">No matching employees found.</td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
