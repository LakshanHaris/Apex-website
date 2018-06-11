/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.controller;

import edu.jcodesprint.apex.dto.StudentDto;
import edu.jcodesprint.apex.model.Admin;
import edu.jcodesprint.apex.model.Parent;
import edu.jcodesprint.apex.model.Staff;
import edu.jcodesprint.apex.model.Student;
import edu.jcodesprint.apex.model.Tutor;
import edu.jcodesprint.apex.service.AdminService;
import edu.jcodesprint.apex.service.StaffService;
import edu.jcodesprint.apex.service.StudentService;
import edu.jcodesprint.apex.service.TutorService;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Lakshan Harischandra
 */
@Controller
@RequestMapping("admin")

public class AdminController {

    @Autowired
    AdminService adminService;

    @Autowired
    StudentService studentService;

    @Autowired
    StaffService staffService;

    @Autowired
    TutorService tutorService;

    @RequestMapping(value = "/admAddAdmin", method = RequestMethod.GET)
    public String getAdmin() {

        return "admin/admAddAdmin";
    }

    @RequestMapping(value = "/admAddAdmin", method = RequestMethod.POST)
    public @ResponseBody
    String addAdmin(@ModelAttribute("Admin") Admin admin) {

        if (adminService.addAdmin(admin)) {
            return "success";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "/admViewTimetable", method = RequestMethod.GET)
    public String getTimetable() {
        return "admin/admViewTimetable";
    }

    @RequestMapping(value = "/admBanUser", method = RequestMethod.GET)
    public String getAdminBanUser() {
        return "admin/admBanUser";
    }

    @RequestMapping(value = "/admSendMail", method = RequestMethod.GET)
    public String getSendMail() {
        return "admin/admSendMail";
    }

    @RequestMapping(value = "/admViewInbox", method = RequestMethod.GET)
    public String getAdminInboxMail() {
        return "admin/admViewInbox";
    }

    @RequestMapping(value = "/admViewDashboard", method = RequestMethod.GET)
    public String getAdmindashboard() {
        return "admin/admViewDashboard";
    }

    @RequestMapping(value = "/admViewAdmin", method = RequestMethod.GET)
    public ModelAndView getViewAdmin(HttpServletResponse response, HttpSession session) {

        Admin searchAdmin = adminService.SearchAdmin((int) session.getAttribute("regNumber"));
        if (searchAdmin != null) {
            ModelAndView mavAdmin = new ModelAndView();
            mavAdmin.addObject("adminResult", searchAdmin);
            mavAdmin.setViewName("admin/admViewAdmin");
            return mavAdmin;

        }
        return null;

    }

    @RequestMapping(value = "/admDeleteAdmin", method = RequestMethod.GET)
    public String getDeleteAdmin() {
        return "admin/admDeleteAdmin";

    }

    @RequestMapping(value = "/admDeleteAdmin", method = RequestMethod.POST)
    public @ResponseBody
    String deleteAdmin(@RequestParam(value = "admRegNumber") int admRegNumber) throws IOException {

        boolean isDeleted = adminService.deleteAdmin(admRegNumber);

        if (isDeleted == false) {
            return "false";
        } else {
            return "success";
        }
    }

    @RequestMapping(value = "/admUpdateAdmin", method = RequestMethod.GET)
    public ModelAndView GetUpdateAdmin(HttpSession session) {

        Admin searchAdmin = adminService.SearchAdmin((int) session.getAttribute("regNumber"));
        ModelAndView mavSearchedAdmin = new ModelAndView();
        mavSearchedAdmin.setViewName("admin/admUpdateAdmin");
        mavSearchedAdmin.addObject("adminResult", searchAdmin);
        return mavSearchedAdmin;

    }

    @RequestMapping(value = "/admUpdateAdmin", method = RequestMethod.POST)
    public @ResponseBody
    String UpdateAdmin(@ModelAttribute("Admin") Admin admin, HttpSession session) throws IOException {
        admin.setAdmRegNumber((int) session.getAttribute("regNumber"));
        if (adminService.updateAdmin(admin)) {
            return "success";
        }
        return "error";
    }

    // Admin do Student Functionalities ==================================
    @RequestMapping(value = "/admAddStudent", method = RequestMethod.GET)
    public String getAddStudent() {
        return "admin/admAddStudent";
    }

    @RequestMapping(value = "/admAddStudent", method = RequestMethod.POST)
    public @ResponseBody
    String addStudent(@ModelAttribute("Student") Student student, HttpSession session) {

        
            
            student.setAdmIdStu(new Admin((int) session.getAttribute("regNumber")));
            student.setParentparentId(new Parent(1));

            if (studentService.addStudent(student)) {
                return "success";
            } else {
                return "error";
            }

           
           
    }

    @RequestMapping(value = "/admDeleteStudent", method = RequestMethod.GET)
    public String getDeleteStudent() {
        return "admin/admDeleteStudent";

    }

    @RequestMapping(value = "/admDeleteStudent", method = RequestMethod.POST)
    public @ResponseBody
    String deleteStudent(@RequestParam(value = "stuRegNumber") int stuRegNumber) throws IOException {

        if (studentService.deleteStudent(stuRegNumber)) {
            return "success";
        } else {
            return "error";
        }

    }

    @RequestMapping(value = "/admViewStudent", method = RequestMethod.GET)
    public String getViewStudent() {
        return "admin/admViewStudent";
    }

    @RequestMapping(value = "/admViewStudentLoaded", method = RequestMethod.GET)
    public ModelAndView viewStudent(@ModelAttribute("Student") Student student, ModelMap studentModel, HttpServletResponse httpServletResponse) {

        Student searchStudent = studentService.searchStudent(student.getStuRegNumber());
        if (searchStudent != null) {
            student.setStuRegNumber(searchStudent.getStuRegNumber());
            student.setFirstName(searchStudent.getFirstName());
            student.setLastName(searchStudent.getLastName());
            student.setAddress(searchStudent.getAddress());
            student.setDob(searchStudent.getDob());
            student.setGrade(searchStudent.getGrade());
            student.setGender(searchStudent.getGender());
            student.setEmail(searchStudent.getEmail());
            student.setMobileNumber(searchStudent.getMobileNumber());
            student.setPassword(searchStudent.getPassword());
            student.setPicture(searchStudent.getPicture());
            student.setAdmIdStu(searchStudent.getAdmIdStu());
//            student.setParentParentId(searchStudent.getParentParentId());

            studentModel.addAttribute("searchedStudent", student);

        }

        return new ModelAndView("admin/admViewStudentLoaded", "Student", studentModel);

    }

    @RequestMapping(value = "/admScanStudentAttendence", method = RequestMethod.GET)
    public String getScanStudentAttendence() {
        return "admin/admScanStudentAttendence";
    }

    @RequestMapping(value = "/admScanStudentFees", method = RequestMethod.GET)
    public String getScanStudentFees() {
        return "admin/admScanStudentFees";
    }

// ============  admin  do tutor functionalities =============    
    @RequestMapping(value = "/admAddTutor", method = RequestMethod.GET)
    public String getAddTutuor() {
        return "admin/admAddTutor";
    }

    @RequestMapping(value = "/admAddTutor", method = RequestMethod.POST)
    public @ResponseBody
    String addTutor(@ModelAttribute("Tutor") Tutor tutor, HttpSession session) {

        Admin admin = new Admin();
        admin.setAdmRegNumber((int) session.getAttribute("regNumber"));
        tutor.setAdmIdTui(admin);

        if (tutorService.addTutor(tutor)) {
            return "success";
        } else {
            return "error";
        }

    }

    @RequestMapping(value = "/admDeleteTutor", method = RequestMethod.GET)
    public String getDeleteTutor() {
        return "admin/admDeleteTutor";

    }

    @RequestMapping(value = "/admDeleteTutor", method = RequestMethod.POST)
    public @ResponseBody
    String deleteTutor(@RequestParam(value = "tuiRegNumber") int tuiRegNumber) {

        if (tutorService.deleteTutor(tuiRegNumber)) {
            return "success";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "/admViewTutor", method = RequestMethod.GET)
    public String getViewTutor() {
        return "admin/admViewTutor";
    }

    @RequestMapping(value = "/admViewTutor", method = RequestMethod.POST)
    public ModelAndView viewTutor(@ModelAttribute("Tutor") Tutor tutor, ModelMap tutorModel) {

        Tutor searchTutor = tutorService.SearchTutor(tutor.getTuiRegNumber());
        if (searchTutor != null) {
            tutor.setTuiRegNumber(searchTutor.getTuiRegNumber());
            tutor.setFirstName(searchTutor.getFirstName());
            tutor.setLastName(searchTutor.getLastName());
            tutor.setAddress(searchTutor.getAddress());
            tutor.setGender(searchTutor.getGender());
            tutor.setDob(searchTutor.getDob());
            tutor.setGraduation(searchTutor.getGraduation());
            tutor.setStream(searchTutor.getStream());
            tutor.setMobileNumber(searchTutor.getMobileNumber());
            tutor.setEmail(searchTutor.getEmail());
            tutor.setBank(searchTutor.getBank());
            tutor.setBranch(searchTutor.getBranch());
            tutor.setBankAcc(searchTutor.getBankAcc());
            tutor.setPassword(searchTutor.getPassword());
            tutor.setPicture(searchTutor.getPicture());
            tutor.setAdmIdTui(searchTutor.getAdmIdTui());

            tutorModel.addAttribute("searchedTutor", tutor);

        }

        return new ModelAndView("admin/admViewTutor", "Tutor", tutorModel);

    }

// ============  admin  do staff functionalities =============    
    @RequestMapping(value = "/admAddStaff", method = RequestMethod.GET)
    public String getAddStaff() {
        return "admin/admAddStaff";
    }

    @RequestMapping(value = "/admAddStaff", method = RequestMethod.POST)
    public @ResponseBody
    String addStaff(@ModelAttribute("Staff") Staff staff, HttpSession session) {

        Admin admin = new Admin();
        admin.setAdmRegNumber(1);
        staff.setAdmIdStf(admin);

        if (staffService.addStaffMember(staff)) {
            return "success";
        } else {
            return "error";
        }

    }

    @RequestMapping(value = "/admDeleteStaff", method = RequestMethod.GET)
    public String getDeleteStaff() {
        return "admin/admDeleteStaff";

    }

    @RequestMapping(value = "/admDeleteStaff", method = RequestMethod.POST)
    public String deleteStaff(@RequestParam(value = "stfRegNumber") int stafRegNumber) {

        if (staffService.deleteStaffMember(stafRegNumber)) {
            return "success";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "/admViewStaff", method = RequestMethod.POST)
    public ModelAndView viewStaff(@ModelAttribute("Staff") Staff staff, ModelMap staffModel) {

        Staff searchStaff = staffService.SearchStaffMember(staff.getStfRegNumber());
        if (searchStaff != null) {
            staff.setStfRegNumber(searchStaff.getStfRegNumber());
            staff.setFirstName(searchStaff.getFirstName());
            staff.setLastName(searchStaff.getLastName());
            staff.setAddress(searchStaff.getAddress());
            staff.setDob(searchStaff.getDob());
            staff.setGender(searchStaff.getGender());
            staff.setMobileNumber(searchStaff.getMobileNumber());
            staff.setEmail(searchStaff.getEmail());
            staff.setBank(searchStaff.getBank());
            staff.setBankAcc(searchStaff.getBankAcc());
            staff.setBranch(searchStaff.getBranch());
            staff.setPassword(searchStaff.getPassword());
            staff.setPicture(searchStaff.getPicture());
            staff.setAdmIdStf(searchStaff.getAdmIdStf());

            staffModel.addAttribute("searchedStaff", staff);

        }

        return new ModelAndView("admin/admViewStaff", "Staff", staffModel);

    }

}
