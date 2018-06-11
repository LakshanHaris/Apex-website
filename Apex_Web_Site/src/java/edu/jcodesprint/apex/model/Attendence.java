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
public class Attendence implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "atd_entry")
    private Long atdEntry;
    @Column(name = "status")
    private String status;
    @Column(name = "date")
    @Temporal(TemporalType.DATE)
    private Date date;
    @Column(name = "staff_id")
    private Integer staffId;

    public Attendence() {
    }

    public Attendence(Long atdEntry) {
        this.atdEntry = atdEntry;
    }

    public Long getAtdEntry() {
        return atdEntry;
    }

    public void setAtdEntry(Long atdEntry) {
        this.atdEntry = atdEntry;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
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
        hash += (atdEntry != null ? atdEntry.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Attendence)) {
            return false;
        }
        Attendence other = (Attendence) object;
        if ((this.atdEntry == null && other.atdEntry != null) || (this.atdEntry != null && !this.atdEntry.equals(other.atdEntry))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.jcodesprint.apex.model.Attendence[ atdEntry=" + atdEntry + " ]";
    }
    
}
