/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.StudentFacadeLocal;
import za.ac.tut.entities.Student;

/**
 *
 * @author Mpho M
 */
public class ViewStudentServlet extends HttpServlet {

    @EJB
    private StudentFacadeLocal sfl;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
       
        String studentNo = req.getParameter("studentNo");
        
        Student student = sfl.find(studentNo);
        
        req.setAttribute("student", student);
        
        req.getRequestDispatcher("view_student_outcome.jsp").forward(req, resp);
    }
}    