/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Lakshan Harischandra
 */
@Entity


public class Tution_class implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "class_ref")
    private Integer classRef;
    @Column(name = "day")
    private String day;
    @Column(name = "time")
    private String time;
    @Column(name = "hall_no")
    private Integer hallNo;
    @Basic(optional = false)
    @Column(name = "grade")
    private int grade;

    public Tution_class() {
    }

    public Tution_class(Integer classRef) {
        this.classRef = classRef;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (getClassRef() != null ? getClassRef().hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tution_class)) {
            return false;
        }
        Tution_class other = (Tution_class) object;
        if ((this.getClassRef() == null && other.getClassRef() != null) || (this.getClassRef() != null && !this.classRef.equals(other.classRef))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.jcodesprint.apex.model.Class[ classRef=" + getClassRef() + " ]";
    }

    /**
     * @return the grade
     */
    public int getGrade() {
        return grade;
    }

    /**
     * @param grade the grade to set
     */
    public void setGrade(int grade) {
        this.grade = grade;
    }

    /**
     * @return the classRef
     */
    public Integer getClassRef() {
        return classRef;
    }

    /**
     * @param classRef the classRef to set
     */
    public void setClassRef(Integer classRef) {
        this.classRef = classRef;
    }

    /**
     * @return the hallNo
     */
    public Integer getHallNo() {
        return hallNo;
    }

    /**
     * @param hallNo the hallNo to set
     */
    public void setHallNo(Integer hallNo) {
        this.hallNo = hallNo;
    }

}
