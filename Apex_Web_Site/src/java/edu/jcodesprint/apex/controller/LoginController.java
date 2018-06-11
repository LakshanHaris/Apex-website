/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.controller;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Admin;
import edu.jcodesprint.apex.model.Staff;
import edu.jcodesprint.apex.model.Student;
import edu.jcodesprint.apex.model.Tutor;
import edu.jcodesprint.apex.service.AdminService;
import edu.jcodesprint.apex.service.StaffService;
import edu.jcodesprint.apex.service.StudentService;
import edu.jcodesprint.apex.service.TutorService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Lakshan Harischandra
 */
@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    AdminService adminService;

    @Autowired
    StudentService studentService;

    @Autowired
    TutorService tutorService;

    @Autowired
    StaffService staffService;

    @RequestMapping(value = "/userLogin", method = RequestMethod.GET)
    public String getAdminLogin(HttpSession session) {

        return "admin/userLogin";
    }

    @RequestMapping(value = "/checkUserNamePassword", method = RequestMethod.POST)
    public ModelAndView checkUserNamePassword(@RequestParam(value = "regNumber") int regNumber,
            @RequestParam(value = "password") String password, @RequestParam(value = "role") String role, HttpSession session) {

        LoginCredintials loginCredintials = new LoginCredintials();
        loginCredintials.setUserRegId(regNumber);
        loginCredintials.setUserPassword(password);
        ModelAndView mavCheckedUserPassword = new ModelAndView();

        if (role.equalsIgnoreCase("admin")) {
            Admin checkedUserPassword = adminService.checkUserNamePassword(loginCredintials);
            if (null != checkedUserPassword) {
                mavCheckedUserPassword.setViewName("admin/admViewAdmin");
                mavCheckedUserPassword.addObject("adminResult", checkedUserPassword);

                session.setAttribute("regNumber", regNumber);
                session.setAttribute("password", password);
                session.setAttribute("firstName", checkedUserPassword.getFirstName());
                session.setAttribute("picture", checkedUserPassword.getPicture());
                session.setAttribute("role", role);
                return mavCheckedUserPassword;

            } else {
                mavCheckedUserPassword.setViewName("admin/userLogin");
                return mavCheckedUserPassword;
            }

        } else if (role.equalsIgnoreCase("student")) {
            Student checkedUserPassword = studentService.checkUserNamePassword(loginCredintials);
            if (null != checkedUserPassword) {
                mavCheckedUserPassword.setViewName("student/stuViewStudent");
                mavCheckedUserPassword.addObject("studentResult", checkedUserPassword);

                session.setAttribute("regNumber", regNumber);
                session.setAttribute("password", password);
                session.setAttribute("firstName", checkedUserPassword.getFirstName());
                session.setAttribute("picture", checkedUserPassword.getPicture());
                session.setAttribute("role", role);
                return mavCheckedUserPassword;

            } else {
                mavCheckedUserPassword.setViewName("admin/userLogin");
                return mavCheckedUserPassword;
            }
        } else if (role.equalsIgnoreCase("tutor")) {
            Tutor checkedUserPassword = tutorService.checkUserNamePassword(loginCredintials);
            if (null != checkedUserPassword) {
                mavCheckedUserPassword.setViewName("tutor/tuiViewTutor");
                mavCheckedUserPassword.addObject("tutorResult", checkedUserPassword);

                session.setAttribute("regNumber", regNumber);
                session.setAttribute("password", password);
                session.setAttribute("firstName", checkedUserPassword.getFirstName());
                session.setAttribute("picture", checkedUserPassword.getPicture());
                session.setAttribute("role", role);
                return mavCheckedUserPassword;

            } else {
                mavCheckedUserPassword.setViewName("admin/userLogin");
                return mavCheckedUserPassword;
            }

        } else if (role.equalsIgnoreCase("staff")) {
            Staff checkedUserPassword = staffService.checkUserNamePassword(loginCredintials);
            if (null != checkedUserPassword) {
                mavCheckedUserPassword.setViewName("staff/stfViewStaff");
                mavCheckedUserPassword.addObject("staffResult", checkedUserPassword);

                session.setAttribute("regNumber", regNumber);
                session.setAttribute("password", password);
                session.setAttribute("firstName", checkedUserPassword.getFirstName());
                session.setAttribute("picture", checkedUserPassword.getPicture());
                session.setAttribute("role", role);
                return mavCheckedUserPassword;

            } else {
                mavCheckedUserPassword.setViewName("admin/userLogin");
                return mavCheckedUserPassword;
            }

        }
        return null;

    }

    @RequestMapping(value = "/userLogOut", method = RequestMethod.GET)
    public String getUserOut(HttpSession session) {

        session.removeAttribute("regNumber");
        session.removeAttribute("password");
        session.removeAttribute("firstName");
        session.removeAttribute("role");
        session.removeAttribute("picture");
        return "admin/userLogin";
    }

}
