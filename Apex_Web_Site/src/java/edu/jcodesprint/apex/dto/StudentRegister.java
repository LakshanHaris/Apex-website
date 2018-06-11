/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.dto;

import java.util.Date;

/**
 *
 * @author Lakshan Harischandra
 */
public class StudentRegister {

    private Integer stuRegNumber;
    private String firstName;
    private String lastName;
    private Integer grade;
    private Date dob;
    private String address;
    private Integer mobileNumber;
    private String email;
    private String password;
    private String gender;
    private byte[] picture;
    private int admId;

    /**
     * @return the stuRegNumber
     */
    public Integer getStuRegNumber() {
        return stuRegNumber;
    }

    /**
     * @param stuRegNumber the stuRegNumber to set
     */
    public void setStuRegNumber(Integer stuRegNumber) {
        this.stuRegNumber = stuRegNumber;
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

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the grade
     */
    public Integer getGrade() {
        return grade;
    }

    /**
     * @param grade the grade to set
     */
    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    /**
     * @return the dob
     */
    public Date getDob() {
        return dob;
    }

    /**
     * @param dob the dob to set
     */
    public void setDob(Date dob) {
        this.dob = dob;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the mobileNumber
     */
    public Integer getMobileNumber() {
        return mobileNumber;
    }

    /**
     * @param mobileNumber the mobileNumber to set
     */
    public void setMobileNumber(Integer mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the picture
     */
    public byte[] getPicture() {
        return picture;
    }

    /**
     * @param picture the picture to set
     */
    public void setPicture(byte[] picture) {
        this.picture = picture;
    }

    /**
     * @return the admId
     */
    public int getAdmId() {
        return admId;
    }

    /**
     * @param admId the admId to set
     */
    public void setAdmId(int admId) {
        this.admId = admId;
    }

   

}
