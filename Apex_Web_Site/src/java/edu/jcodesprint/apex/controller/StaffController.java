/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.controller;

import edu.jcodesprint.apex.dto.ExamResultDTO;
import edu.jcodesprint.apex.dto.SalaryDetailDTO;
import edu.jcodesprint.apex.dto.StudentAttendenceDTO;
import edu.jcodesprint.apex.model.Salary;
import edu.jcodesprint.apex.model.Staff;
import edu.jcodesprint.apex.model.Student;
import edu.jcodesprint.apex.model.Tutor;
import edu.jcodesprint.apex.service.EmailService;
import edu.jcodesprint.apex.service.SalaryService;
import edu.jcodesprint.apex.service.StaffService;
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
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
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
@RequestMapping("staff")
public class StaffController {

    @Autowired
    StaffService staffService;

    @Autowired
    SalaryService salaryService;

    @Autowired
    StudentService studentService;

    @Autowired
    EmailService emailService;

    @Autowired
    JavaMailSender mailSender;

    @RequestMapping(value = "/stfViewStaff", method = RequestMethod.GET)
    public ModelAndView getStfViewStaff(HttpSession session) {
        Staff searcheStaff = staffService.SearchStaffMember((int) session.getAttribute("regNumber"));
        if (null != searcheStaff) {
            ModelAndView mavStaff = new ModelAndView();
            mavStaff.addObject("staffResult", searcheStaff);
            mavStaff.setViewName("staff/stfViewStaff");
            return mavStaff;
        }
        return null;
    }

    @RequestMapping(value = "/stfViewSalary", method = RequestMethod.GET)
    public String getStfViewSalary() {
        return "staff/stfViewSalary";
    }

    @RequestMapping(value = "/stfViewSalary", method = RequestMethod.POST)
    public Salary StfViewSalary(@RequestParam("year") String year, HttpServletResponse response, HttpSession session) {
        List<Salary> salaryList = staffService.getStfSalary(new Staff((Integer) session.getAttribute("regNumber")), year);
        if (null != salaryList) {
            try {
                ObjectMapper objectMapper = new ObjectMapper();
                String jsonObj = objectMapper.writeValueAsString(salaryList);
                response.getWriter().write(jsonObj);
            } catch (IOException ex) {
                Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    @RequestMapping(value = "/stfCollectStuAttendence", method = RequestMethod.GET)
    public String getStuAttendenceCollect() {
        return "staff/stfCollectAttendence";
    }

    @RequestMapping(value = "/stfCollectStuAttendence", method = RequestMethod.POST)
    @ResponseBody
    public String StuAttendenceCollect(@ModelAttribute("StudentAttendenceDTO") StudentAttendenceDTO studentAttendenceDTO, HttpSession session) {
        if (staffService.collectStudentAttendence(studentAttendenceDTO, new Staff((Integer) session.getAttribute("regNumber")))) {
            return "success";
        }
        return "error";
    }

    @RequestMapping(value = "/stfCollectStuAttendenceGetStuDetails", method = RequestMethod.POST)
    public String StuAttendenceCollectStuDetails(@RequestParam("studentId") int stuId, HttpSession session, HttpServletResponse response) {
        Student student = studentService.searchStudent(stuId);
        if (null != student) {
            try {
                ObjectMapper objectMapper = new ObjectMapper();
                String jsonObj = objectMapper.writeValueAsString(student);
                response.getWriter().write(jsonObj);
            } catch (IOException ex) {
                Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    @RequestMapping(value = "/stfCollectStuFees", method = RequestMethod.GET)
    public String getStuFeesCollect() {
        return "staff/stfCollectStudentFees";
    }

    @RequestMapping(value = "/stfCollectStuFees", method = RequestMethod.POST)
    @ResponseBody
    public String StuFeesCollect(@ModelAttribute("StudentAttendenceDTO") StudentAttendenceDTO studentAttendenceDTO, HttpSession session) {

        if (staffService.collectStudentFees(studentAttendenceDTO, new Staff((Integer) session.getAttribute("regNumber")))) {

            if (emailService.alertStudentFeesToParent(studentAttendenceDTO)) {
                return "success";
            }

//            SimpleMailMessage message = new SimpleMailMessage();
//            message.setTo("lakshan.harischandra2014@gmail.com");
//            message.setSubject("Apex institution | Payment received");
//            message.setText("Your child done a payment of Rs. 1800.00 for the Subject ICT \n\nTechnical Division\nApex Institution\nKalutara\nWestern 12000\nSri Lanka\nTel : +942221902");
//            mailSender.send(message);
        }
        return "error";
    }

    @RequestMapping(value = "/stfCollectExamResults", method = RequestMethod.GET)
    public String getStfExamResultCollect() {
        return "staff/stfEnterExamResults";
    }

    @RequestMapping(value = "/stfCollectExamResults", method = RequestMethod.POST)
    @ResponseBody
    public String StfExamResultCollect(@ModelAttribute("ExamResultDTO") ExamResultDTO examResultDTO, HttpSession session
    ) {

        if (staffService.collectExamResults(new Staff((Integer) session.getAttribute("regNumber")), examResultDTO)) {
            return "success";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "/stfEnterSalaryDetails", method = RequestMethod.GET)
    public String getEnterSalaryDetails() {
        return "staff/stfEnterSalaryDetails";
    }

    @RequestMapping(value = "/stfViewMailbox", method = RequestMethod.GET)
    public String getMailbox() {
        return "staff/stfViewMailbox";
    }

    @RequestMapping(value = "/stfEditStaff", method = RequestMethod.GET)
    public String getStfEditStaff() {
        return "staff/stfEditProfile";
    }

    @RequestMapping(value = "/stfEditStaff", method = RequestMethod.POST)
    @ResponseBody
    public String StfEditStaff(@ModelAttribute("Staff") Staff staff, HttpSession session
    ) {
        staff.setStfRegNumber((Integer) session.getAttribute("regNumber"));
        if (staffService.updateStaffMember(staff)) {
            Staff searchedStaff = staffService.SearchStaffMember((Integer) session.getAttribute("regNumber"));
            session.setAttribute("firstName", searchedStaff.getFirstName());
            return "success";
        }
        return "error";
    }

    @RequestMapping(value = "/stfEnterSalaryDetails", method = RequestMethod.POST)
    public @ResponseBody
    String addSalaryDetail(@ModelAttribute("SalaryDetailDTO") SalaryDetailDTO salaryDetailDTO
    ) {

        if (salaryService.addSalaryData(salaryDetailDTO)) {
            return "success";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "/stfEditPic", method = RequestMethod.POST, headers = "content-type=multipart/form-data")
    public ModelAndView tuiEditPicture(@RequestParam("picture") MultipartFile picture, HttpSession session,
            HttpServletResponse response) throws InterruptedException, IOException {

        int stfId = (Integer) session.getAttribute("regNumber");

        try {

            String fileName = picture.getOriginalFilename();
            System.out.println(fileName);
            String savePath = "F:\\Git_Projects\\Apex-website\\Apex_Web_Site\\web\\resources\\customPics\\" + fileName;
            File uploadFile = new File(savePath);
            picture.transferTo(uploadFile);
            String refferPath = "../resources/customPics/" + fileName;

            Staff staffResult = staffService.getStfEditPicture(refferPath, stfId);
//            String imageMain = "src=\"" + studentResult.getPicture() + "\"";
            String imageLink = staffResult.getPicture();

            if (null != staffResult) {
                response.getWriter().write(imageLink);
                ModelAndView mav = new ModelAndView();
                mav.addObject("staffResult", staffResult);
                mav.setViewName("staff/stfViewStaff");
                session.setAttribute("picture", staffResult.getPicture());

                return mav;
            }

        } catch (IllegalStateException ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
