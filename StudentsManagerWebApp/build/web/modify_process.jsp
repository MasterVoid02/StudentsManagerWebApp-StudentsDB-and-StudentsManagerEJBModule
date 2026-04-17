<%-- 
    Document   : modify_student_process
    Created on : 17 Apr 2026, 8:37:01 PM
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
        <p>Modify the details you want.</p>
        <form action="ModifyStudentServlet.do" method="POST">
            <table>
                    <tr>
                        <td>StudentNo</td>
                        <td>
                            <input type="text" name="studentNo" value="<%=student.getStudentNo()%>" readonly=""/>
                        </td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>
                            <input type="text" name="name" value="<%=student.getName()%>"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Surname</td>
                        <td>
                            <input type="text" name="surname" value="<%=student.getSurname()%>"/>
                        </td>
                    </tr>
                    <tr>
                        <td>CellNo</td>
                        <td>
                            <input type="text" name="cellNo" value="<%=student.getCellNo()%>"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <input type="text" name="email" value="<%=student.getEmail()%>" readonly=""/>
                        </td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>
                            <select name="gender">
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="MODIFY STUDENT"/>
                        </td>
                    </tr>
                </table>
            </form>
        </form>
    </body>
</html>
