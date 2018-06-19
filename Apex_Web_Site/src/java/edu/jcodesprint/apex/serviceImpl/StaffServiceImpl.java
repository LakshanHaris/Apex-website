/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;

import edu.jcodesprint.apex.dto.ExamResultDTO;
import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.dto.StudentAttendenceDTO;
import edu.jcodesprint.apex.model.Attendence;
import edu.jcodesprint.apex.model.Exam;
import edu.jcodesprint.apex.model.Salary;
import edu.jcodesprint.apex.model.Staff;
import edu.jcodesprint.apex.model.Student;
import edu.jcodesprint.apex.model.Student_fees;
import edu.jcodesprint.apex.model.Subject;
import edu.jcodesprint.apex.repo.AttendenceDAO;
import edu.jcodesprint.apex.repo.ExamDAO;
import edu.jcodesprint.apex.repo.StaffDAO;
import edu.jcodesprint.apex.repo.StudentDAO;
import edu.jcodesprint.apex.repo.SubjectDAO;
import edu.jcodesprint.apex.service.EmailService;
import edu.jcodesprint.apex.service.StaffService;
import java.sql.Date;
import java.util.ArrayList;
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
public class StaffServiceImpl implements StaffService {

    @Autowired
    StaffDAO staffDAO;

    @Autowired
    ExamDAO examDAO;

    @Autowired
    StudentDAO studentDAO;

    @Autowired
    AttendenceDAO attendenceDAO;

    @Autowired
    SubjectDAO subjectDAO;

    @Override
    public int addStaffMember(Staff staff) {

        if (null != staffDAO.addStaffMember(staff)) {
            Staff newStaff = staffDAO.newlyCreatedStaff();
            int staffId = newStaff.getStfRegNumber();
            return staffId;
        } else {
            return 0;
        }
    }

    @Override
    public boolean deleteStaffMember(int staffId) {
        return staffDAO.deleteStaffMember(staffId);
    }

    @Override
    public boolean updateStaffMember(Staff staff) {
        return staffDAO.updateStaffMember(staff);
    }

    @Override
    public List<Staff> getAllStaffMember() {
        return staffDAO.getAllStaffMember();
    }

    @Override
    public Staff SearchStaffMember(int staffId) {
        return staffDAO.SearchStaffMember(staffId);
    }

    @Override
    public Staff checkUserNamePassword(LoginCredintials loginCredintials) {
        return staffDAO.checkUserNamePassword(loginCredintials);
    }

    @Override
    public int getStaffCount() {
        List<Staff> staffList = staffDAO.getAllStaffMember();
        int staffCount = staffList.size();
        return staffCount;
    }

    @Override
    public Staff getStfEditPicture(String refferPath, int stfId) {
        Staff staff = staffDAO.SearchStaffMember(stfId);
        System.out.println(staff);
        staff.setPicture(refferPath);
        if (staffDAO.updateStaffMember(staff)) {
            System.out.println(staff);
            return staffDAO.SearchStaffMember(stfId);
        } else {
            return null;
        }
    }

    @Override
    public List<Salary> getStfSalary(Staff staff, String year) {
        return staffDAO.getSalaryList(staff, year);
    }

    @Override
    public boolean collectExamResults(Staff staff, ExamResultDTO examResultDTO) {

        Exam exam = new Exam();

        long millis = System.currentTimeMillis();
        Date currentDate = new Date(millis);
        exam.setDate(currentDate);

        int result = Integer.parseInt(examResultDTO.getResult());

        if (result <= 35) {
            exam.setProgress("too bad");
        } else if (result <= 45) {
            exam.setProgress("bad");
        } else if (result <= 64) {
            exam.setProgress("good");
        } else {
            exam.setProgress("very good");
        }

        exam.setTerm(examResultDTO.getTerm());
        exam.setResult(examResultDTO.getResult());
        exam.setRemarks(examResultDTO.getRemarks());
        exam.setStaffId(staff.getStfRegNumber());
        exam.setSubject(examResultDTO.getSubject());
        exam.setStuId(new Student(examResultDTO.getStudentId()));

        if (null != examDAO.saveExamData(exam)) {
            return true;
        }
        return false;

    }

    @Override
    public boolean collectStudentAttendence(StudentAttendenceDTO studentAttendenceDTO, Staff staff) {
        Attendence attendence = new Attendence();

        long millis = System.currentTimeMillis();
        Date currentDate = new Date(millis);

        attendence.setStatus("attended");
        attendence.setDate(currentDate);
        attendence.setStaffId(staff.getStfRegNumber());

        attendenceDAO.saveAttendenceData(attendence);
        Attendence newAttendence = attendenceDAO.newlyCreatedAttendence();
        long atdId = newAttendence.getAtdEntry();
        System.out.println("attndence entry : " + atdId);

        attendenceDAO.updateStudentMaintaince(atdId, studentAttendenceDTO.getStudentId(), studentAttendenceDTO.getSubject());

        return true;

    }

    @Override
    public boolean collectStudentFees(StudentAttendenceDTO studentAttendenceDTO, Staff staff) {
        Subject subject = subjectDAO.searchSubject(studentAttendenceDTO.getSubject());

        Student_fees stuFees = new Student_fees();

        long millis = System.currentTimeMillis();
        Date currentDate = new Date(millis);

        stuFees.setDate(currentDate);
        stuFees.setMethod("staff");
        stuFees.setAmount(subject.getSubFee());
        stuFees.setStatus("paid");
        stuFees.setStaffId(staff.getStfRegNumber());
        stuFees.setStuIdStuFees(new Student(studentAttendenceDTO.getStudentId()));
        stuFees.setSubjectId(new Subject(studentAttendenceDTO.getSubject()));

        if (null != staffDAO.saveStudentFees(stuFees)) {
           
            return true;
        }
        return false;

    }

}
