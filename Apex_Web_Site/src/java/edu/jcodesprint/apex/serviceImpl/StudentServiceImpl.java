/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;

import edu.jcodesprint.apex.dto.AttendenceSearchDTO;
import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.dto.PayExamSearchDto;
import edu.jcodesprint.apex.dto.StudentRegister;
import edu.jcodesprint.apex.model.Admin;
import edu.jcodesprint.apex.model.Attendence;
import edu.jcodesprint.apex.model.Exam;
import edu.jcodesprint.apex.model.Parent;
import edu.jcodesprint.apex.model.Student;
import edu.jcodesprint.apex.model.StudentFees;
import edu.jcodesprint.apex.model.Subject;
import edu.jcodesprint.apex.model.Tution_class;
import edu.jcodesprint.apex.model.Tutor;
import edu.jcodesprint.apex.repo.ParentDAO;
import edu.jcodesprint.apex.repo.StudentDAO;
import edu.jcodesprint.apex.service.StudentService;
import java.io.Serializable;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Lakshan Harischandra
 */
@Service
@Transactional
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentDAO studentDAO;

    @Autowired
    ParentDAO parentDAO;

    @Override
    public boolean addStudent(Student student) {
        if (null != studentDAO.addStudent(student)) {
            return true;
        }
        return false;
    }

    @Override
    public boolean deleteStudent(int stuId) {

        if (studentDAO.deleteStudent(stuId)) {
            return true;
        }
        return false;
    }

    @Override
    public boolean updateStudent(Student student) {
        if (studentDAO.updateStudent(student)) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public List<Student> getAllStudents() {
        return studentDAO.getAllStudents();
    }

    @Override
    public Student searchStudent(int stuId) {
        return studentDAO.searchStudent(stuId);
    }

    @Override
    public Student checkUserNamePassword(LoginCredintials loginCredintials) {
        return studentDAO.checkUserNamePassword(loginCredintials);
    }

    @Override
    public List<Attendence> getAttendenceDetails(AttendenceSearchDTO attendenceSearchDTO) {

        String datePatern = attendenceSearchDTO.getYear() + "-" + attendenceSearchDTO.getMonth() + "-%";
        return studentDAO.getAttendenceDetails(datePatern, attendenceSearchDTO.getSubject(), attendenceSearchDTO.getStuId());
    }

    @Override
    public List<StudentFees> getStudentPayHistory(PayExamSearchDto payHistorySearchDto) {
        return studentDAO.getStudentPayHistory(payHistorySearchDto);
    }

    @Override
    public List<Exam> getExamResultsHistory(PayExamSearchDto examHistotySearchDto) {
        return studentDAO.getStudentExamHistory(examHistotySearchDto);
    }

    @Override
    public Tutor getStuSearchTutor(int grade, int subject) {
        return studentDAO.getStuSearchTutor(grade, subject);
    }

    @Override
    public Tution_class getStuSearchClass(int grade, int subject) {
        return studentDAO.getStuSearchClass(grade, subject);
    }

    @Override
    public Student getStuEditPicture(String refferPath, int stuId) {
        Student student = studentDAO.searchStudent(stuId);
        System.out.println(student);
        student.setPicture(refferPath);
        if (studentDAO.updateStudent(student)) {
            System.out.println(student);
            return studentDAO.searchStudent(stuId);
        } else {
            return null;
        }
    }

    @Override
    public List<Subject> getStudentSubjects(int stuId) {
        return studentDAO.getStudentSubjects(stuId);
    }

    @Override
    public int getStudentCount() {
        List<Student> stuList = studentDAO.getAllStudents();
        int stuCount = stuList.size();
        return stuCount;
    }

    @Override
    public List<Student> getLatestStudents() {
        return studentDAO.getLatestStudents();
    }

    @Override
    public int addStudentParentExists(int parentId, int adminId) {
        Student student = new Student();
        student.setAdmIdStu(new Admin(adminId));
        student.setParentparentId(new Parent(parentId));
        studentDAO.addStudent(student);

        Student newStudent = studentDAO.newlyCreatedStudent();
        int stuId = newStudent.getStuRegNumber();
        return stuId;
    }

}
