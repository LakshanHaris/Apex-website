/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.controller;

import edu.jcodesprint.apex.model.Salary;
import edu.jcodesprint.apex.service.SalaryService;
import edu.jcodesprint.apex.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
    
   @RequestMapping(value = "/stfViewStaff" , method = RequestMethod.GET)
    public String getStfViewStaff(){
        return "staff/stfViewStaff";
    }
    
    
    @RequestMapping(value = "/stfViewSalary" , method = RequestMethod.GET)
    public String getStfViewSalary(){
        return "staff/stfViewSalary";
    }
    
    @RequestMapping(value = "/stfCollectStuAttendence" , method = RequestMethod.GET)
    public String getStuAttendenceCollect(){
        return "staff/stfCollectAttendence";
    }
    
    @RequestMapping(value = "/stfCollectStuFees" , method = RequestMethod.GET)
    public String getStuFeesCollect(){
        return "staff/stfCollectStudentFees";
    }
    
    @RequestMapping(value = "/stfCollectExamResults" , method = RequestMethod.GET)
    public String getStfExamResultCollect(){
        return "staff/stfEnterExamResults";
    }
    
    @RequestMapping(value = "/stfEnterSalaryDetails" , method = RequestMethod.GET)
    public String getEnterSalaryDetails(){
        return "staff/stfEnterSalaryDetails";
    }
    
    @RequestMapping(value = "/stfViewMailbox" , method = RequestMethod.GET)
    public String getMailbox(){
        return "staff/stfViewMailbox";
    }
    
    @RequestMapping(value = "/stfEditStaff" , method = RequestMethod.GET)
    public String getStfEditStaff(){
        return "staff/stfEditProfile";
    }
    
    
    @RequestMapping(value = "/stfEnterSalaryDetails", method = RequestMethod.POST)
    public @ResponseBody
    String addSalaryDetail(@ModelAttribute("Salary") Salary salary) {

        if (salaryService.addSalaryData(salary)) {
            return "success";
        } else {
            return "error";
        }
    }
    
   
    
    
}
