/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.dto;

import edu.jcodesprint.apex.model.Admin;
import java.util.Date;

/**
 *
 * @author Lakshan Harischandra
 */
public class StudentRegister {

    
    private String parentFirstName;
    private String parentLastName;
    private String occupation;
    private int parentMobileNumber;
    private String parentEmail;
    private Admin adminId;

   
    
    
    
    /**
     * @return the parentFirstName
     */
    public String getParentFirstName() {
        return parentFirstName;
    }

    /**
     * @param parentFirstName the parentFirstName to set
     */
    public void setParentFirstName(String parentFirstName) {
        this.parentFirstName = parentFirstName;
    }

    /**
     * @return the parentLastName
     */
    public String getParentLastName() {
        return parentLastName;
    }

    /**
     * @param parentLastName the parentLastName to set
     */
    public void setParentLastName(String parentLastName) {
        this.parentLastName = parentLastName;
    }

    /**
     * @return the occupation
     */
    public String getOccupation() {
        return occupation;
    }

    /**
     * @param occupation the occupation to set
     */
    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

   
    /**
     * @return the parentEmail
     */
    public String getParentEmail() {
        return parentEmail;
    }

    /**
     * @param parentEmail the parentEmail to set
     */
    public void setParentEmail(String parentEmail) {
        this.parentEmail = parentEmail;
    }

    /**
     * @return the parentMobileNumber
     */
    public int getParentMobileNumber() {
        return parentMobileNumber;
    }

    /**
     * @param parentMobileNumber the parentMobileNumber to set
     */
    public void setParentMobileNumber(int parentMobileNumber) {
        this.parentMobileNumber = parentMobileNumber;
    }

    /**
     * @return the adminId
     */
    public Admin getAdminId() {
        return adminId;
    }

    /**
     * @param adminId the adminId to set
     */
    public void setAdminId(Admin adminId) {
        this.adminId = adminId;
    }

   
   

}
