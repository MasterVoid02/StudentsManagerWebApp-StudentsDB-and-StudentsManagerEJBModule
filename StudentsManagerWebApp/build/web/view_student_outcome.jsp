<%-- 
    Document   : view_student_outcome
    Created on : 17 Apr 2026, 11:44:39 AM
    Author     : Mpho M
--%>

<%@page import="za.ac.tut.entities.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Student Outcome Page</title>
    </head>
    <body>
        <h2>View Student Outcome</h2>
        <%
          Student student = (Student) request.getAttribute("student");
          String name = student.getName();
          String surname = student.getSurname();
          String gender = student.getGender();
          String cellNo = student.getCellNo();
          String email = student.getEmail();
          String studentNo = student.getStudentNo();
        %>
        <p>
            Below is the details of student number:
        </p>
        <table>
            <tr>
                <td>StudentNo:</td>
                <td>
                    <b><%=studentNo%><b/>
                </td>
            </tr>
            <tr>
                <td>Name:</td>
                <td>
                    <b><%=name%><b/>
                </td>
            </tr>
            <tr>
                <td>Surname:</td>
                <td>
                    <b><%=surname%><b/>
                </td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td>
                    <b><%=gender%><b/>
                </td>
            </tr>
            <tr>
                <td>CellNo:</td>
                <td>
                    <b><%=cellNo%><b/>
                </td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>
                    <b><%=email%><b/>
                </td>
            </tr>
        </table>
        <p>
            <br>
            Use link to go back to home page.
            <a href="index.html">Click here</a>
            <br>
            Use link to go back to menu page.
            <a href="menu.html">Click here</a>
        </p>
    </body>
</html>
