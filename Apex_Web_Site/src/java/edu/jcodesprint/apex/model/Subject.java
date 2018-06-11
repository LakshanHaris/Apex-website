/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.codehaus.jackson.annotate.JsonIgnore;

/**
 *
 * @author Lakshan Harischandra
 */
@Entity

public class Subject implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "subject_id")
    private String subjectId;
    @Column(name = "name")
    private String name;
    @Column(name = "grade")
    private Integer grade;
    @Column(name = "type")
    private String type;
    @Column(name = "level")
    private String level;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "sub_fee")
    private BigDecimal subFee;
    @OneToMany(mappedBy = "subjectId")
    @JsonIgnore
    private List<StudentFees> studentFeesList;
    

    public Subject() {
    }

    public Subject(String subjectId) {
        this.subjectId = subjectId;
    }

    public String getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(String subjectId) {
        this.subjectId = subjectId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public BigDecimal getSubFee() {
        return subFee;
    }

    public void setSubFee(BigDecimal subFee) {
        this.subFee = subFee;
    }

    @JsonIgnore
    public List<StudentFees> getStudentFeesList() {
        return studentFeesList;
    }

    public void setStudentFeesList(List<StudentFees> studentFeesList) {
        this.studentFeesList = studentFeesList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (subjectId != null ? subjectId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Subject)) {
            return false;
        }
        Subject other = (Subject) object;
        if ((this.subjectId == null && other.subjectId != null) || (this.subjectId != null && !this.subjectId.equals(other.subjectId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.jcodesprint.apex.model.Subject[ subjectId=" + subjectId + " ]";
    }

  

}
