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
public class AttendenceSearchDTO {
    
    private String year;
    private String month;
    private String subject;
    private int stuId;
    

    /**
     * @return the year
     */
    
    
    
    public AttendenceSearchDTO() {
    }

    public AttendenceSearchDTO(int stuId) {
        this.stuId = stuId;
    }
    
    
    

    public String getYear() {
        return year;
    }

    /**
     * @param year the year to set
     */
    public void setYear(String year) {
        this.year = year;
    }

    /**
     * @return the month
     */
    public String getMonth() {
        return month;
    }

    /**
     * @param month the month to set
     */
    public void setMonth(String month) {
        this.month = month;
    }

    /**
     * @return the subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * @return the stuId
     */
    public int getStuId() {
        return stuId;
    }

    /**
     * @param stuId the stuId to set
     */
    public void setStuId(int stuId) {
        this.stuId = stuId;
    }

  

    
    
    
}
