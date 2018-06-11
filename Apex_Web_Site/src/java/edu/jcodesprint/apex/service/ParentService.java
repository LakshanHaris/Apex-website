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
    int addParent(StudentRegister studentParentDetail);
    void deleteParent(int parentId);
    void updateParent(Parent parent);
    public Parent searchParent(int parentId);
    
}
