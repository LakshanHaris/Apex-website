/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.codehaus.jackson.annotate.JsonIgnore;

/**
 *
 * @author Lakshan Harischandra
 */
@Entity
@Table(name = "exam")
public class Exam implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "exam_no")
    private Long examNo;
    @Column(name = "term")
    private String term;
    @Column(name = "date")
    @Temporal(TemporalType.DATE)
    private Date date;
    @Column(name = "progress")
    private String progress;
    @Column(name = "result")
    private String result;
    @Column(name = "remarks")
    private String remarks;
    @Column(name = "staff_id")
    private Integer staffId;
    @Basic(optional = false)
    @Column(name = "subject")
    private String subject;
    @JsonIgnore
    @JoinColumn(name = "student_stu_reg_number", referencedColumnName = "stu_reg_number")
    @ManyToOne(optional = false)
    private Student stuId;

    public Exam() {
    }

    public Exam(Long examNo) {
        this.examNo = examNo;
    }

    
    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getProgress() {
        return progress;
    }

    public void setProgress(String progress) {
        this.progress = progress;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

   

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (getExamNo() != null ? getExamNo().hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Exam)) {
            return false;
        }
        Exam other = (Exam) object;
        if ((this.getExamNo() == null && other.getExamNo() != null) || (this.getExamNo() != null && !this.examNo.equals(other.examNo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.jcodesprint.apex.model.Exam[ examNo=" + getExamNo() + " ]";
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
     * @return the examNo
     */
    public Long getExamNo() {
        return examNo;
    }

    /**
     * @param examNo the examNo to set
     */
    public void setExamNo(Long examNo) {
        this.examNo = examNo;
    }

    /**
     * @return the stuId
     */
    public Student getStuId() {
        return stuId;
    }

    /**
     * @param stuId the stuId to set
     */
    public void setStuId(Student stuId) {
        this.stuId = stuId;
    }

}
