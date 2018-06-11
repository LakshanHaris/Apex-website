/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.dto;

/**
 *
 * @author Lakshan Harischandra
 */
public class LoginCredintials {
    
    private int userRegId;
    private String userPassword;
    private String firstName;

    /**
     * @return the userRegId
     */
    public int getUserRegId() {
        return userRegId;
    }

    /**
     * @param userRegId the userRegId to set
     */
    public void setUserRegId(int userRegId) {
        this.userRegId = userRegId;
    }

    /**
     * @return the userPassword
     */
    public String getUserPassword() {
        return userPassword;
    }

    /**
     * @param userPassword the userPassword to set
     */
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    
}
