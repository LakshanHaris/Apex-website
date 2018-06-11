/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.controller;

import edu.jcodesprint.apex.dto.AttendenceSearchDTO;
import edu.jcodesprint.apex.dto.PayExamSearchDto;
import edu.jcodesprint.apex.model.Attendence;
import edu.jcodesprint.apex.model.Exam;
import edu.jcodesprint.apex.model.Student;
import edu.jcodesprint.apex.model.StudentFees;
import edu.jcodesprint.apex.model.Tution_class;
import edu.jcodesprint.apex.model.Tutor;
import edu.jcodesprint.apex.service.ParentService;
import edu.jcodesprint.apex.service.StudentService;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
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
@RequestMapping("student")
@Transactional
public class StudentController {

    @Autowired
    StudentService studentService;
    @Autowired
    ParentService parentService;

    @RequestMapping(value = "/getStudent", method = RequestMethod.GET)
    public String getStudentProfile() {

        return "student/stuViewStudent";
    }

    @RequestMapping(value = "/stuViewPayments", method = RequestMethod.GET)
    public String getStuPayments() {
        return "student/stuViewPayHistory";
    }

    @RequestMapping(value = "/stuViewPayments", method = RequestMethod.POST)
    public StudentFees getStuPayments(@ModelAttribute("payhistorySearchDto") PayExamSearchDto payHistory, HttpSession session, HttpServletResponse response) {
        payHistory.setStuId((int) session.getAttribute("regNumber"));
        List<StudentFees> payHistoryDetails = studentService.getStudentPayHistory(payHistory);
        if (null != payHistoryDetails) {
            try {
                ObjectMapper objectMapper = new ObjectMapper();
                String jsonObj = objectMapper.writeValueAsString(payHistoryDetails);
                response.getWriter().write(jsonObj);
            } catch (IOException ex) {
                Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    @RequestMapping(value = "/stuViewExamResults", method = RequestMethod.GET)
    public String getExamResults() {
        return "student/stuViewExamResults";
    }

    @RequestMapping(value = "/stuViewExamResults", method = RequestMethod.POST)
    public Exam getExamResults(@ModelAttribute("payhistorySearchDto") PayExamSearchDto examHistoty, HttpSession session, HttpServletResponse response) {
        examHistoty.setStuId((int) session.getAttribute("regNumber"));
        List<Exam> examHistoryDetails = studentService.getExamResultsHistory(examHistoty);
        if (null != examHistoryDetails) {
            try {
                ObjectMapper objectMapper = new ObjectMapper();
                String jsonObj = objectMapper.writeValueAsString(examHistoryDetails);
                response.getWriter().write(jsonObj);
            } catch (IOException ex) {
                Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    @RequestMapping(value = "/stuViewAttendence", method = RequestMethod.GET)
    public String getAttendence() {
        return "student/stuViewAttendence";
    }

    @RequestMapping(value = "/stuViewAttendence", method = RequestMethod.POST)
    public Attendence viewAttendence(@ModelAttribute("attendenceSearchDTO") AttendenceSearchDTO attendence, HttpSession session, HttpServletResponse response) throws IOException {

        attendence.setStuId((int) session.getAttribute("regNumber"));
        List<Attendence> attendenceResult = studentService.getAttendenceDetails(attendence);
        if (null != attendenceResult) {

            ObjectMapper objectMapper = new ObjectMapper();
            String jsonObj = objectMapper.writeValueAsString(attendenceResult);
            response.getWriter().write(jsonObj);
        }
        return null;
    }

    @RequestMapping(value = "/stuViewMailbox", method = RequestMethod.GET)
    public String getMailBox() {
        return "student/stuViewMailbox";
    }

    @RequestMapping(value = "/stuFindTutor", method = RequestMethod.GET)
    public String getStuFindTutors() {
        return "student/stuFindTutor";
    }

    @RequestMapping(value = "/stuFindTutor", method = RequestMethod.POST)
    public Tutor getStuFindTutors(@RequestParam("grade") int grade, @RequestParam("subject") int subject, HttpServletResponse response) {
        Tutor tutorList = studentService.getStuSearchTutor(grade, subject);
        if (null != tutorList) {

            try {
                ObjectMapper objectMapper = new ObjectMapper();
                String jsonObj = objectMapper.writeValueAsString(tutorList);
                response.getWriter().write(jsonObj);
            } catch (IOException ex) {
                Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    @RequestMapping(value = "/stuFindClass", method = RequestMethod.GET)
    public String getStuFindClasses() {
        return "student/stuFindClass";
    }

    @RequestMapping(value = "/stuFindClass", method = RequestMethod.POST)
    public Tution_class getStuFindClasses(@RequestParam("grade") int grade, @RequestParam("subject") int subject, HttpServletResponse response) {
        Tution_class classList = studentService.getStuSearchClass(grade, subject);
        if (null != classList) {

            try {
                ObjectMapper objectMapper = new ObjectMapper();
                String jsonObj = objectMapper.writeValueAsString(classList);
                response.getWriter().write(jsonObj);
            } catch (IOException ex) {
                Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    @RequestMapping(value = "/stuViewStudent", method = RequestMethod.GET)
    public ModelAndView getStuViewStudent(HttpSession session) {
        Student searchedStudent = studentService.searchStudent((int) session.getAttribute("regNumber"));
        if (null != searchedStudent) {
            ModelAndView mavStudent = new ModelAndView();
            mavStudent.addObject("studentResult", searchedStudent);
            mavStudent.setViewName("student/stuViewStudent");
            return mavStudent;
        }
        return null;
    }

    @RequestMapping(value = "/stuEditProfile", method = RequestMethod.GET)
    public String getStuEditProfile() {
        return "student/stuEditProfile";
    }

    @RequestMapping(value = "/stuEditProfile", method = RequestMethod.POST)
    @ResponseBody
    public String StuEditProfile(@ModelAttribute("Student") Student student, HttpSession session) {
        student.setStuRegNumber((Integer) session.getAttribute("regNumber"));
        if (studentService.updateStudent(student)) {
            session.setAttribute("firstName", student.getFirstName());
            return "success";
        }
        return "error";
    }

    @RequestMapping(value = "/stuViewSubjects", method = RequestMethod.GET)
    public String getStuViewSubjects() {
        return "student/stuViewSubjects";
    }

    @RequestMapping(value = "/stuPayFeesOnline", method = RequestMethod.GET)
    public String getStuPayOnline() {
        return "student/stuPayFeesOnline";
    }

    @RequestMapping(value = "/stuComposeMail", method = RequestMethod.GET)
    public String getStuComposeMail() {
        return "student/stuComposeEmail";
    }

    @RequestMapping(value = "/backToInbox", method = RequestMethod.GET)
    public String getBackToInbox() {
        return "student/stuViewMailbox";
    }

    @RequestMapping(value = "/stuEditPic", method = RequestMethod.POST, headers = "content-type=multipart/form-data")
    public ModelAndView stuEditPicture(@RequestParam("picture") MultipartFile picture, HttpSession session, HttpServletResponse response) throws InterruptedException {

        int stuId = (Integer) session.getAttribute("regNumber");

        try {

            String fileName = picture.getOriginalFilename();
            System.out.println(fileName);
            String savePath = "F:\\Apex\\Apex_Web_Site\\web\\resources\\customPics\\" + fileName;
            File uploadFile = new File(savePath);
            picture.transferTo(uploadFile);
            String refferPath = "../resources/customPics/" + fileName;

            
                Student studentResult = studentService.getStuEditPicture(refferPath, stuId);
                String imageMain = "src=\"" + studentResult.getPicture() + "\"";

                if (null != studentResult) {
                    ModelAndView mav = new ModelAndView();
                    mav.addObject("studentResult", studentResult);
                    mav.addObject("picResultMain", imageMain);
                    mav.setViewName("student/stuViewStudent");
                    session.setAttribute("picture", studentResult.getPicture());

                    return mav;
                }

            

        } catch (IOException | IllegalStateException ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
