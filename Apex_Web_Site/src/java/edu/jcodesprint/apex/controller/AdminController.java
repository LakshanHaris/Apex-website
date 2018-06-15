/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.controller;

import edu.jcodesprint.apex.dto.DashboardData;
import edu.jcodesprint.apex.dto.StudentRegister;
import edu.jcodesprint.apex.model.Admin;
import edu.jcodesprint.apex.model.Staff;
import edu.jcodesprint.apex.model.Student;
import edu.jcodesprint.apex.model.Tutor;
import edu.jcodesprint.apex.model.Parent;
import edu.jcodesprint.apex.service.AdminService;
import edu.jcodesprint.apex.service.ExamService;
import edu.jcodesprint.apex.service.ParentService;
import edu.jcodesprint.apex.service.StaffService;
import edu.jcodesprint.apex.service.StudentService;
import edu.jcodesprint.apex.service.SubjectService;
import edu.jcodesprint.apex.service.Tution_classService;
import edu.jcodesprint.apex.service.TutorService;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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

    @Autowired
    Tution_classService tution_class_Service;

    @Autowired
    ParentService parentService;
    
    @Autowired
    ExamService examService;
    
    @Autowired
    SubjectService subjectService;

    @RequestMapping(value = "/admAddAdmin", method = RequestMethod.GET)
    public String getAdmin() {

        return "admin/admAddAdmin";
    }

    @RequestMapping(value = "/admAddAdmin", method = RequestMethod.POST)
    public @ResponseBody
    int addAdmin(@ModelAttribute("Admin") Admin admin) {
        int admId = adminService.addAdmin(admin);
        if (0 != admId) {
            return admId;
        } else {
            return 0;
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
    public ModelAndView getAdmindashboard(HttpServletResponse response) {
        ModelAndView mavDashboardDetails = new ModelAndView();

        DashboardData dbData = new DashboardData();
        dbData.setTutorCount(tutorService.getTutorCount());
        dbData.setStudentCount(studentService.getStudentCount());
        dbData.setStaffCount(staffService.getStaffCount());
        dbData.setClassCount(tution_class_Service.getClassCount());
        dbData.setAdminCount(adminService.getAdminCount());
        dbData.setExamCount(examService.getExamCount());
        dbData.setParentCount(parentService.getParentCount());
        dbData.setSubjectCount(subjectService.getSubjectCount());

        List<Student> latestStudents = studentService.getLatestStudents();

        mavDashboardDetails.addObject("userStats", dbData);
        mavDashboardDetails.addObject("latestStudents", latestStudents);
        mavDashboardDetails.setViewName("admin/admViewDashboard");
        return mavDashboardDetails;

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

    @RequestMapping(value = "/admEditStudentParent", method = RequestMethod.GET)
    public String getEditParent() {
        return "admin/admEditStudentParent";
    }

    @RequestMapping(value = "/admEditStudentParent", method = RequestMethod.POST)
    @ResponseBody
    public String getEditParent(@ModelAttribute("Parent") Parent parent) {
        if (parentService.updateParent(parent)) {
            return "success";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "/admAddParentStuRegister", method = RequestMethod.POST)
    public @ResponseBody
    int addStudent(@ModelAttribute("Parent") Parent parent, HttpSession session) {

        int adminId = (int) session.getAttribute("regNumber");
        int stuId = parentService.addParent(parent, adminId);
        if (0 != stuId) {
            return stuId;
        } else {
            return 0;
        }
    }

    @RequestMapping(value = "/admAddParentStuRegisterExists", method = RequestMethod.POST)
    public @ResponseBody
    int addStudent(@RequestParam("parentId") int parentId, HttpSession session) {

        int adminId = (int) session.getAttribute("regNumber");
        int stuId = studentService.addStudentParentExists(parentId, adminId);

        if (0 != stuId) {
            return stuId;
        } else {
            return 0;
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
    public ModelAndView viewStudent(@ModelAttribute("Student") Student student, HttpServletResponse httpServletResponse) {

        Student searchStudent = studentService.searchStudent(student.getStuRegNumber());
        ModelAndView mavStudent = new ModelAndView();
        mavStudent.addObject("studentSearchView", searchStudent);
        mavStudent.setViewName("admin/admViewStudent");
        return mavStudent;
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
    int addTutor(@ModelAttribute("Tutor") Tutor tutor, HttpSession session) {

        tutor.setAdmIdTui(new Admin((int) session.getAttribute("regNumber")));
        int tuiId = tutorService.addTutor(tutor);
        if (0 != tuiId) {
            return tuiId;
        } else {
            return 0;
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
        ModelAndView mavTutor = new ModelAndView();
        mavTutor.addObject("tutorSearchView", searchTutor);
        mavTutor.setViewName("admin/admViewTutor");
        return mavTutor;

    }

// ============  admin  do staff functionalities =============    
    @RequestMapping(value = "/admAddStaff", method = RequestMethod.GET)
    public String getAddStaff() {
        return "admin/admAddStaff";
    }

    @RequestMapping(value = "/admAddStaff", method = RequestMethod.POST)
    public @ResponseBody
    int addStaff(@ModelAttribute("Staff") Staff staff, HttpSession session) {

        staff.setAdmIdStf(new Admin((Integer) session.getAttribute("regNumber")));
        int staffId = staffService.addStaffMember(staff);
        if (0 != staffId) {
            return staffId;
        } else {
            return 0;
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
        ModelAndView mavStaff = new ModelAndView();
        mavStaff.addObject("staffSearchView", searchStaff);
        mavStaff.setViewName("admin/admViewStaff");
        return mavStaff;

    }

    @RequestMapping(value = "/admEditPic", method = RequestMethod.POST, headers = "content-type=multipart/form-data")
    public ModelAndView admEditPicture(@RequestParam("picture") MultipartFile picture, HttpSession session, HttpServletResponse response) throws InterruptedException, IOException {

        int admID = (Integer) session.getAttribute("regNumber");

        try {

            String fileName = picture.getOriginalFilename();
            System.out.println(fileName);
            String savePath = "F:\\Git_Projects\\Apex-website\\Apex_Web_Site\\web\\resources\\customPics\\" + fileName;
            File uploadFile = new File(savePath);
            picture.transferTo(uploadFile);
            String refferPath = "../resources/customPics/" + fileName;

            Admin adminResult = adminService.getAdmEditPicture(refferPath, admID);
//            String imageMain = "src=\"" + studentResult.getPicture() + "\"";
            String imageLink = adminResult.getPicture();

            if (null != adminResult) {
                ModelAndView mav = new ModelAndView();
                mav.addObject("adminResult", adminResult);
                mav.setViewName("admin/admViewAdmin");
                session.setAttribute("picture", adminResult.getPicture());
                return mav;
            }

        } catch (IllegalStateException ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
