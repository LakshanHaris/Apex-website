/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.controller;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Salary;
import edu.jcodesprint.apex.model.Tutor;
import edu.jcodesprint.apex.service.TutorService;
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
@RequestMapping("tutor")
@Transactional
public class TutorController {

    @Autowired
    TutorService tutorService;

    @RequestMapping(value = "/checkUserNamePassword", method = RequestMethod.POST)
    public ModelAndView checkUserNamePassword(@RequestParam(value = "regNumber") int regNumber,
            @RequestParam(value = "password") String password, HttpSession session) {

        LoginCredintials loginCredintials = new LoginCredintials();
        loginCredintials.setUserRegId(regNumber);
        loginCredintials.setUserPassword(password);

        Tutor checkedUserPassword = tutorService.checkUserNamePassword(loginCredintials);
        ModelAndView mavCheckedUserPassword = new ModelAndView();

        if (null != checkedUserPassword) {
            mavCheckedUserPassword.setViewName("tutor/tuiViewTutor");
            mavCheckedUserPassword.addObject("tutorResult", checkedUserPassword);
            session.setAttribute("regNumber", regNumber);
            session.setAttribute("password", password);
            session.setAttribute("firstName", checkedUserPassword.getFirstName());
            return mavCheckedUserPassword;
        } else {
            mavCheckedUserPassword.setViewName("tutor/userLogin");
            mavCheckedUserPassword.addObject("tutorResult", checkedUserPassword);
            return mavCheckedUserPassword;
        }

    }

    @RequestMapping(value = "/tuiViewTutor", method = RequestMethod.GET)
    public ModelAndView getTuiViewTutor(HttpSession session) {
        Tutor searchedTutor = tutorService.SearchTutor((int) session.getAttribute("regNumber"));
        if (null != searchedTutor) {
            ModelAndView mavStudent = new ModelAndView();
            mavStudent.addObject("tutorResult", searchedTutor);
            mavStudent.setViewName("tutor/tuiViewTutor");
            return mavStudent;
        }
        return null;
    }

    @RequestMapping(value = "/tuiEditProfile", method = RequestMethod.GET)
    public String getTuiEditProfile() {
        return "tutor/tuiEditProfile";
    }

    @RequestMapping(value = "/tuiEditProfile", method = RequestMethod.POST)
    @ResponseBody
    public String TuiEditProfile(@ModelAttribute("Tutor") Tutor tutor, HttpSession session) {
        tutor.setTuiRegNumber((Integer) session.getAttribute("regNumber"));
        if (tutorService.updateTutor(tutor)) {
            Tutor searchedTutor = tutorService.SearchTutor((Integer) session.getAttribute("regNumber"));
            session.setAttribute("firstName", searchedTutor.getFirstName());
            return "success";
        }
        return "error";
    }

    @RequestMapping(value = "/tuiViewSalary", method = RequestMethod.GET)
    public String getTuiViewSalary() {
        return "tutor/tuiViewSalary";
    }
    
    @RequestMapping(value = "/tuiViewSalary", method = RequestMethod.POST)
    public Salary getTuiViewSalary(@RequestParam("year") String year,HttpSession session,HttpServletResponse response){
        List<Salary> salaryList=tutorService.getSalaryList(new Tutor((Integer) session.getAttribute("regNumber")),year);
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

    @RequestMapping(value = "/tuiSendNotice", method = RequestMethod.GET)
    public String getTuiSendMail() {
        return "tutor/tuiSendMail";
    }

    @RequestMapping(value = "/tuiViewInbox", method = RequestMethod.GET)
    public String getTuiViewInbox() {
        return "tutor/tuiViewInbox";
    }

    @RequestMapping(value = "/tuiEditPic", method = RequestMethod.POST, headers = "content-type=multipart/form-data")
    public ModelAndView tuiEditPicture(@RequestParam("picture") MultipartFile picture, HttpSession session, HttpServletResponse response) throws InterruptedException, IOException {

        int tuiId = (Integer) session.getAttribute("regNumber");

        try {

            String fileName = picture.getOriginalFilename();
            System.out.println(fileName);
            String savePath = "F:\\Git_Projects\\Apex-website\\Apex_Web_Site\\web\\resources\\customPics\\" + fileName;
            File uploadFile = new File(savePath);
            picture.transferTo(uploadFile);
            String refferPath = "../resources/customPics/" + fileName;

            Tutor tutorResult = tutorService.getTuiEditPicture(refferPath, tuiId);
//            String imageMain = "src=\"" + studentResult.getPicture() + "\"";
            String imageLink = tutorResult.getPicture();

            if (null != tutorResult) {
                response.getWriter().write(imageLink);
                ModelAndView mav = new ModelAndView();
                mav.addObject("tutorResult", tutorResult);
                mav.setViewName("tutor/tuiViewTuror");
                session.setAttribute("picture", tutorResult.getPicture());

                return mav;
            }

        } catch (IllegalStateException ex) {
            Logger.getLogger(StudentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
