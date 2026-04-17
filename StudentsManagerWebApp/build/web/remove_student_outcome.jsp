<%-- 
    Document   : remove_student_outcome
    Created on : 17 Apr 2026, 12:09:39 PM
    Author     : Mpho M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Student Outcome Page</title>
    </head>
    <body>
        <h2>Remove Student Outcome</h2>
        
        <%
          String studentNo = (String)request.getParameter("studentNo");
        %>
         <p>
             The student with StudentNo <b><%=studentNo%></b> has been 
             removed successfully into the database.
            <br><br>
            Use link to go back to home page.
            <a href="index.html">Click here</a>
            <br>
            Use link to go back to menu page.
            <a href="menu.html">Click here</a>
        </p>
    </body>
</html>
