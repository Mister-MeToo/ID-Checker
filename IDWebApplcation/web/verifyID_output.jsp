<%-- 
    Document   : verifyID_output
    Created on : 04 Oct 2026, 13:53:00
    Author     : IC MOTS
--%>

<%@page import="za.ac.tut.entities.ID"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ID Verification Page</title>
    </head>
    <%
        ID id = (ID) request.getAttribute("id");
    %>
    <body>
        <h1>ID Verified Successfully</h1>
        <P>
            Congrats! <%= id.getEmployee().getUserName() %>. The id <%=id.getValidID() %> is valid.
            <br><!-- comment -->
            It has been saved to the database as well.
        </P>
        <ul>
            <li><a href="enterID.jsp">Enter another ID</a>
            <li><a href="role.jsp">Role Page</a></li>
        </ul>
    </body>
</html>
