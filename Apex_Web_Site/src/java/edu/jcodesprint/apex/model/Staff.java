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
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.annotate.JsonManagedReference;

/**
 *
 * @author Lakshan Harischandra
 */
@Entity

public class Staff implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "stf_reg_number")
    private Integer stfRegNumber;
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
    @Column(name = "dob")
    @Temporal(TemporalType.DATE)
    private Date dob;
    @Column(name = "address")
    private String address;
    @Column(name = "gender")
    private String gender;
    @Column(name = "email")
    private String email;
    @Column(name = "mobile_number")
    private Integer mobileNumber;
    @Column(name = "bank")
    private String bank;
    @Column(name = "bank_acc")
    private String bankAcc;
    @Column(name = "branch")
    private String branch;
    @Column(name = "password")
    private String password;
    @Lob
    @Column(name = "picture")
    private String picture;
    @JoinColumn(name = "adm_id_stf", referencedColumnName = "adm_reg_number")
    @ManyToOne
    private Admin admIdStf;
    @JsonIgnore
    @OneToMany(mappedBy = "stfIdSalary")
    private List<Salary> salaryList;

    public Staff() {
    }

    public Staff(Integer stfRegNumber) {
        this.stfRegNumber = stfRegNumber;
    }

    public Integer getStfRegNumber() {
        return stfRegNumber;
    }

    public void setStfRegNumber(Integer stfRegNumber) {
        this.stfRegNumber = stfRegNumber;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(Integer mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public String getBankAcc() {
        return bankAcc;
    }

    public void setBankAcc(String bankAcc) {
        this.bankAcc = bankAcc;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

   

    public Admin getAdmIdStf() {
        return admIdStf;
    }

    public void setAdmIdStf(Admin admIdStf) {
        this.admIdStf = admIdStf;
    }

    @JsonIgnore
    public List<Salary> getSalaryList() {
        return salaryList;
    }

    public void setSalaryList(List<Salary> salaryList) {
        this.salaryList = salaryList;
    }

    /**
     * @return the picture
     */
    public String getPicture() {
        return picture;
    }

    /**
     * @param picture the picture to set
     */
    public void setPicture(String picture) {
        this.picture = picture;
    }

}
