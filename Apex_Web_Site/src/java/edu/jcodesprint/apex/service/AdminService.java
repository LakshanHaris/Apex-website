/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.service;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Admin;
import java.util.List;

/**
 *
 * @author Lakshan Harischandra
 */
public interface AdminService {

    int addAdmin(Admin admin);

    boolean deleteAdmin(int adminId);

    boolean updateAdmin(Admin admin);

    List<Admin> getAllAdmins();

    public Admin SearchAdmin(int adminId);

    public Admin checkUserNamePassword(LoginCredintials loginCredintials);

    public Admin getAdmEditPicture(String refferPath, int admID);

    public int getAdminCount();
}
