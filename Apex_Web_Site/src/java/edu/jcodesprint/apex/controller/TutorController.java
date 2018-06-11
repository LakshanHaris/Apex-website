/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.controller;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Tutor;
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
@RequestMapping("tutor")
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

}
