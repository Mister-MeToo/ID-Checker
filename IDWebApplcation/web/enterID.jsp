<%-- 
    Document   : enterID
    Created on : 01 Oct 2026, 21:29:01
    Author     : IC MOTS
--%>

<%@page import="za.ac.tut.entities.Employee"%>
<%@page import="za.ac.tut.entities.ID"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter ID Page</title>
    </head>
    <%
    Employee employee = (Employee) request.getSession().getAttribute("employee");
    %>
    <body>
        <h1>Enter a valid 13 digit ID below</h1>
        <p>
            Not the <%= employee.getEmpID() %> you entered earlier, <B><%=employee.getUserName() %> </b>
        </p>
        
        <form action="verifyID.do" method="post">
            <table>
                <tr>
                    <td><input type="text" name="validID" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ENTER"/></td>
                </tr>
            </table>
        </form>
        
    </body>
</html>
