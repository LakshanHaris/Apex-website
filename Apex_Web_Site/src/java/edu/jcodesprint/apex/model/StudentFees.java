/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Lakshan Harischandra
 */
@Entity

public class StudentFees implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "invoice_number")
    private Long invoiceNumber;
    @Column(name = "date")
    @Temporal(TemporalType.DATE)
    private Date date;
    @Column(name = "method")
    private String method;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "amount")
    private Double amount;
    @Column(name = "status")
    private String status;
    @Column(name = "staff_id")
    private Integer staffId;
    @JoinColumn(name = "stu_id_stu_fees", referencedColumnName = "stu_reg_number")
    @ManyToOne
    private Student stuIdStuFees;
    @JoinColumn(name = "subject_id", referencedColumnName = "subject_id")
    @ManyToOne
    private Subject subjectId;

    public StudentFees() {
    }

    public StudentFees(Long invoiceNumber) {
        this.invoiceNumber = invoiceNumber;
    }

    public Long getInvoiceNumber() {
        return invoiceNumber;
    }

    public void setInvoiceNumber(Long invoiceNumber) {
        this.invoiceNumber = invoiceNumber;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Student getStuIdStuFees() {
        return stuIdStuFees;
    }

    public void setStuIdStuFees(Student stuIdStuFees) {
        this.stuIdStuFees = stuIdStuFees;
    }

    public Subject getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Subject subjectId) {
        this.subjectId = subjectId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (invoiceNumber != null ? invoiceNumber.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof StudentFees)) {
            return false;
        }
        StudentFees other = (StudentFees) object;
        if ((this.invoiceNumber == null && other.invoiceNumber != null) || (this.invoiceNumber != null && !this.invoiceNumber.equals(other.invoiceNumber))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.jcodesprint.apex.model.StudentFees[ invoiceNumber=" + invoiceNumber + " ]";
    }
    
}
