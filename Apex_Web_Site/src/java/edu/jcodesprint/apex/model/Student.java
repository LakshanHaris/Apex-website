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
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.annotate.JsonManagedReference;

/**
 *
 * @author Lakshan Harischandra
 */
@Entity

public class Student implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "stu_reg_number")
    private Integer stuRegNumber;

    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
    @Column(name = "dob")
    @Temporal(TemporalType.DATE)
    private Date dob;
    @Column(name = "grade")
    private Integer grade;
    @Column(name = "gender")
    private String gender;
    @Column(name = "address")
    private String address;
    @Column(name = "email")
    private String email;
    @Column(name = "mobile_number")
    private Integer mobileNumber;
    @Column(name = "password")
    private String password;
    @Lob
    @Column(name = "picture")
    private String picture;
    @JsonIgnore
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "stuId")
    private List<Exam> examList;
    @JoinColumn(name = "adm_id_stu", referencedColumnName = "adm_reg_number")
    @JsonIgnore
    @ManyToOne
    private Admin admIdStu;
    @JsonIgnore
    @JoinColumn(name = "parent_parent_Id", referencedColumnName = "parentId")
    @ManyToOne(optional = false)
    private Parent parentparentId;
    @OneToMany(mappedBy = "stuIdStuFees")
    @JsonIgnore
    private List<Student_fees> studentFeesList;

    public Student() {
    }

    public Student(Integer stuRegNumber) {
        this.stuRegNumber = stuRegNumber;
    }

    public Student(Admin admIdStu, Parent parentparentId) {
        this.admIdStu = admIdStu;
        this.parentparentId = parentparentId;
    }

   

    
    public Integer getStuRegNumber() {
        return stuRegNumber;
    }

    public void setStuRegNumber(Integer stuRegNumber) {
        this.stuRegNumber = stuRegNumber;
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

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @JsonIgnore
    public List<Exam> getExamList() {
        return examList;
    }

    public void setExamList(List<Exam> examList) {
        this.examList = examList;
    }

    public Admin getAdmIdStu() {
        return admIdStu;
    }

    public void setAdmIdStu(Admin admIdStu) {
        this.admIdStu = admIdStu;
    }

    @JsonIgnore
    public Parent getParentparentId() {
        return parentparentId;
    }

    public void setParentparentId(Parent parentparentId) {
        this.parentparentId = parentparentId;
    }

    @JsonIgnore
    public List<Student_fees> getStudentFeesList() {
        return studentFeesList;
    }

    public void setStudentFeesList(List<Student_fees> studentFeesList) {
        this.studentFeesList = studentFeesList;
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
