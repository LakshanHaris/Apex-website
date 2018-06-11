/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.model;

import java.io.Serializable;
import java.math.BigDecimal;
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
import org.codehaus.jackson.annotate.JsonManagedReference;

/**
 *
 * @author Lakshan Harischandra
 */
@Entity

public class Salary implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "invoice_num")
    private Long invoiceNum;
    @Column(name = "date")
    @Temporal(TemporalType.DATE)
    private Date date;
    @Column(name = "receiver_type")
    private String receiverType;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "amount")
    private BigDecimal amount;
    @Column(name = "status")
    private String status;
    @JoinColumn(name = "adm_id_salary", referencedColumnName = "adm_reg_number")
    @ManyToOne(optional = true)
    @JsonManagedReference
    private Admin admIdSalary;
    @JoinColumn(name = "stf_id_salary", referencedColumnName = "stf_reg_number")
    @ManyToOne(optional = true)
    
    private Staff stfIdSalary;
    @JoinColumn(name = "tui_id_salary", referencedColumnName = "tui_reg_number")
    @ManyToOne(optional = true)
    
    private Tutor tuiIdSalary;

    public Salary() {
    }

    public Salary(Long invoiceNum) {
        this.invoiceNum = invoiceNum;
    }

    public Long getInvoiceNum() {
        return invoiceNum;
    }

    public void setInvoiceNum(Long invoiceNum) {
        this.invoiceNum = invoiceNum;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getReceiverType() {
        return receiverType;
    }

    public void setReceiverType(String receiverType) {
        this.receiverType = receiverType;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the admIdSalary
     */
    public Admin getAdmIdSalary() {
        return admIdSalary;
    }

    /**
     * @param admIdSalary the admIdSalary to set
     */
    public void setAdmIdSalary(Admin admIdSalary) {
        this.admIdSalary = admIdSalary;
    }

    /**
     * @return the stfIdSalary
     */
    public Staff getStfIdSalary() {
        return stfIdSalary;
    }

    /**
     * @param stfIdSalary the stfIdSalary to set
     */
    public void setStfIdSalary(Staff stfIdSalary) {
        this.stfIdSalary = stfIdSalary;
    }

    /**
     * @return the tuiIdSalary
     */
    public Tutor getTuiIdSalary() {
        return tuiIdSalary;
    }

    /**
     * @param tuiIdSalary the tuiIdSalary to set
     */
    public void setTuiIdSalary(Tutor tuiIdSalary) {
        this.tuiIdSalary = tuiIdSalary;
    }

}
