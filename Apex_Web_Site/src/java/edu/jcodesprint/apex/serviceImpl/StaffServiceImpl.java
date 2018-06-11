/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Staff;
import edu.jcodesprint.apex.repo.StaffDAO;
import edu.jcodesprint.apex.service.StaffService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Lakshan Harischandra
 */
@Service
@Transactional
public class StaffServiceImpl implements StaffService {

    @Autowired
    StaffDAO staffDAO;

    @Override
    public boolean addStaffMember(Staff staff) {

        if (null != staffDAO.addStaffMember(staff)) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean deleteStaffMember(int staffId) {
        return staffDAO.deleteStaffMember(staffId);
    }

    @Override
    public boolean updateStaffMember(Staff staff) {
        return staffDAO.updateStaffMember(staff);
    }

    @Override
    public List<Staff> getAllStaffMember() {
        return staffDAO.getAllStaffMember();
    }

    @Override
    public Staff SearchStaffMember(int staffId) {
        return staffDAO.SearchStaffMember(staffId);
    }

    @Override
    public Staff checkUserNamePassword(LoginCredintials loginCredintials) {
        return staffDAO.checkUserNamePassword(loginCredintials);
    }

}
