/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Admin;
import edu.jcodesprint.apex.repo.AdminDAO;
import edu.jcodesprint.apex.service.AdminService;
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
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminDAO adminDAO;

    @Override
    public int addAdmin(Admin admin) {

        if (null != adminDAO.addAdmin(admin)) {
            Admin newAdmin = adminDAO.newlyCreatedAdmin();
            int adminId = newAdmin.getAdmRegNumber();
            return adminId;
        } else {
            return 0;
        }
    }

    @Override
    public boolean deleteAdmin(int adminId) {
        return adminDAO.deleteAdmin(adminId);
    }

    @Override
    public boolean updateAdmin(Admin admin) {

        return adminDAO.updateAdmin(admin);
    }

    @Override
    public List<Admin> getAllAdmins() {
        return adminDAO.getAllAdmins();
    }

    @Override
    public Admin SearchAdmin(int adminId) {
        return adminDAO.SearchAdmin(adminId);
    }

    @Override
    public Admin checkUserNamePassword(LoginCredintials loginCredintials) {
        return adminDAO.checkUserNamePassword(loginCredintials);
    }

    @Override
    public Admin getAdmEditPicture(String refferPath, int admID) {
        Admin admin = adminDAO.SearchAdmin(admID);
        admin.setPicture(refferPath);
        if (adminDAO.updateAdmin(admin)) {
            return adminDAO.SearchAdmin(admID);
        } else {
            return null;
        }

    }

    @Override
    public int getAdminCount() {
        List<Admin> adminList = adminDAO.getAllAdmins();
        int adminCount = adminList.size();
        return adminCount;
    }

}
