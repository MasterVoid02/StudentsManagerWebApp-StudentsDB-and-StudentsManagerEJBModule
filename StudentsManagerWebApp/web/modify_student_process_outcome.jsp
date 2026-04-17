<%-- 
    Document   : modify_student_process
    Created on : 17 Apr 2026, 10:36:07 PM
    Author     : Mpho M
--%>

<%@page import="za.ac.tut.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify Student Process Page</title>
    </head>
    <body>
        <h1>Modify Student Process</h1>
        <%
          Student student = (Student) request.getAttribute("student");
        %>
        <p>
            The student with studentNo <b><%=student.getStudentNo()%></b> has 
            been modified successfully into the database.
            <br><br>
            Use link to go back to home page.
            <a href="index.html">Click here</a>
            <br>
            Use link to go back to menu page.
            <a href="menu.html">Click here</a>
        </p>
    </body>
</html>
