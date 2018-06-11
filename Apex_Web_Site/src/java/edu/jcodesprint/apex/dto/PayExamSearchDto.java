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
public class PayExamSearchDto {
    
    private String year;
    private int subject;
    private int stuId;

    /**
     * @return the year
     */
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
     * @return the subject
     */
    public int getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(int subject) {
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
