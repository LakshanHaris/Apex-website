/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.service;

import edu.jcodesprint.apex.dto.StudentRegister;
import edu.jcodesprint.apex.model.Parent;



/**
 *
 * @author Lakshan Harischandra
 */
public interface ParentService {
    int  addParent(Parent parent,int adminId);
    void deleteParent(int parentId);
    boolean  updateParent(Parent parent);
    public Parent searchParent(int parentId);

    public int getParentCount();
    
}
