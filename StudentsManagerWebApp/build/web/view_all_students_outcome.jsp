<%-- 
    Document   : view_all_students_outcome
    Created on : 17 Apr 2026, 10:18:08 AM
    Author     : Mpho M
--%>

<%@page import="za.ac.tut.entities.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Students Outcome Page</title>
    </head>
    <body>
        <h1>View All Students Outcome</h1>
        <p>Below are all the students in the database</p>
        
        <%
          List<Student> listOfStudents = (List<Student>)request.getAttribute("listOfStudents");
        %>
        
        <table border = "1">
            <tr>
                <th>StudentNo</th>
                <th>Name</th>
                <th>Surname</th>
                <th>CellNo</th>
                <th>Email</th>
                <th>Gender</th>
            </tr>
            <%
              for (int i = 0; i < listOfStudents.size(); i++) 
              {
                Student student = listOfStudents.get(i);
                String studentNo = student.getStudentNo();
                String name = student.getName();
                String surname = student.getSurname();
                String cellNo = student.getCellNo();
                String email = student.getEmail();
                String gender = student.getGender();
            %>
            <tr>
                <td><%=studentNo%></td>
                <td><%=name%></td>
                <td><%=surname%></td>
                <td><%=cellNo%></td>
                <td><%=email%></td>
                <td><%=gender%></td>
            </tr>
        <%
            }
        %>
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
