/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.service;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Staff;
import edu.jcodesprint.apex.model.Tutor;
import java.util.List;

/**
 *
 * @author Lakshan Harischandra
 */
public interface StaffService {
    int  addStaffMember(Staff staff);
    boolean  deleteStaffMember(int staffId);
    boolean  updateStaffMember(Staff staff);
    List<Staff> getAllStaffMember();
    public Staff SearchStaffMember(int staffId);
    public Staff checkUserNamePassword(LoginCredintials loginCredintials);

    public int getStaffCount();
}
