<%-- 
    Document   : viewAllIDs_output
    Created on : 08 Oct 2026, 11:29:39
    Author     : IC MOTS
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.ID"%>
<%@page import="za.ac.tut.entities.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All IDs Page</title>
    </head>
    
    <body>
        <h1>View All IDs Page</h1>
        <p>
            Here are all the captured IDs in the system:
        </p>
        
        <table border="1">
            <tr>
                <th>Employee ID</th>
                <th>Employee Name</th>
                <th>Verification ID</th>
                <th>Valid ID</th>
                <th>Date</th>
            </tr>
            <%
             List <ID> listOfIDs = (List<ID>) request.getAttribute("listofIDs");
             if (listOfIDs != null && !listOfIDs.isEmpty()){
                for (ID id : listOfIDs){
            %>
            <tr>
                <td><%= id.getEmployee().getEmpID()  %></td>
                <td><%= id.getEmployee().getUserName()%></td>
                <td><%= id.getVerificationID() %></td>
                <td><%= id.getValidID() %></td>
                <td><%= id.getCreationDate() %></td>
            </tr>
            <%
                } 
                }else {
            %>
            <tr>
                <td colspan="5">No records found.</td>
            </tr>
            <%
                }    
            %>
        </table>
        <br>
        <%
            int rowCount = (listOfIDs != null) ? listOfIDs.size() : 0;
        %>
        <p>
            <strong><%= rowCount %></strong> <%= (rowCount == 1) ? "row" : "rows" %> found.
        </p>
        <br>
        <p>
            <a href="manager.jsp">Back to Manager Page</a>
        </p>
    </body>
</html>
