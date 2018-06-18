/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repo;

import edu.jcodesprint.apex.dto.AttendenceSearchDTO;
import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.dto.PayExamSearchDto;
import edu.jcodesprint.apex.model.Attendence;
import edu.jcodesprint.apex.model.Exam;
import edu.jcodesprint.apex.model.Student;
import edu.jcodesprint.apex.model.Student_fees;
import edu.jcodesprint.apex.model.Subject;
import edu.jcodesprint.apex.model.Tution_class;
import edu.jcodesprint.apex.model.Tutor;
import java.io.Serializable;
import java.util.List;

/**
 *
 * @author Lakshan Harischandra
 */
public interface StudentDAO {

    /**
     *
     * @param student
     * @return
     */
    Serializable addStudent(Student student);

    boolean deleteStudent(int stuId);

    boolean updateStudent(Student student);

    List<Student> getAllStudents();

    public Student searchStudent(int stuId);

    public Student checkUserNamePassword(LoginCredintials loginCredintials);

    public List<Attendence> getAttendenceDetails(String datePattern, String subjectId, int stuId);

    public List<Student_fees> getStudentPayHistory(PayExamSearchDto payHistorySearchDto);

    public List<Exam> getStudentExamHistory(PayExamSearchDto examHistotySearchDto);

    public Tutor getStuSearchTutor(int grade, int subject);

    public Tution_class getStuSearchClass(int grade, int subject);

    public List<Subject> getStudentSubjects(int stuId);

    public Student newlyCreatedStudent();

    public List<Student> getLatestStudents();

   

}
