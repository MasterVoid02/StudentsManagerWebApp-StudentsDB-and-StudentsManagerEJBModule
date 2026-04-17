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
public class ModifyStudentServlet extends HttpServlet {

    @EJB
    private StudentFacadeLocal sfl;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        
        String studentNo = req.getParameter("studentNo");
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String cellNo = req.getParameter("cellNo");
        String email = req.getParameter("email");
        String gender = req.getParameter("gender");
        
        Student student = createStudent(studentNo, name, surname, cellNo, email, gender);
        
        sfl.edit(student);
        
        req.setAttribute("student", student);
        
        req.getRequestDispatcher("modify_student_process_outcome.jsp").forward(req, resp);
    }
    
    private Student createStudent(String studentNo, String name, String surname, String cellNo, String email, String gender){
      Student student = new Student();
      student.setStudentNo(studentNo);
      student.setName(name);
      student.setSurname(surname);
      student.setCellNo(cellNo);
      student.setEmail(email);
      student.setGender(gender);
      
      return student;
    }
}