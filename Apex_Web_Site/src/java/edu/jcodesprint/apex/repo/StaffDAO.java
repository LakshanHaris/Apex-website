/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repo;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Salary;
import edu.jcodesprint.apex.model.Staff;
import java.io.Serializable;
import java.util.List;

/**
 *
 * @author Lakshan Harischandra
 */
public interface StaffDAO {

    Serializable addStaffMember(Staff staff);

    boolean deleteStaffMember(int staffId);

    boolean updateStaffMember(Staff staff);

    List<Staff> getAllStaffMember();

    public Staff SearchStaffMember(int staffId);

    public Staff checkUserNamePassword(LoginCredintials loginCredintials);

    public Staff newlyCreatedStaff();

    public List<Salary> getSalaryList(Staff staff, String year);
}
