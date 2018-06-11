/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;


import edu.jcodesprint.apex.dto.StudentRegister;
import edu.jcodesprint.apex.model.Parent;
import edu.jcodesprint.apex.repo.ParentDAO;
import edu.jcodesprint.apex.service.ParentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Lakshan Harischandra
 */
@Service
@Transactional
public class ParentServiceImpl implements ParentService{

    @Autowired
    ParentDAO parentDAO;
    
   
    
    @Override
    public int addParent(StudentRegister studentParentDetail) {
        
//        Parent parent = new Parent();
//        parent.setParentId(studentParentDetail.getParentId());
//        parent.setParentFirstName(studentParentDetail.getParentFirstName());
//        parent.setParentLastName(studentParentDetail.getParentLastName());
//        parent.setOccupation(studentParentDetail.getOcupation());
//        parent.setParentEmail(studentParentDetail.getParentEmail());
//        parent.setParentMobileNumber(studentParentDetail.getParentMobileNumber());
        
        
        
//        parentDAO.addParent(parent);
        return 0;
    }
    

    @Override
    public void deleteParent(int parentId) {
        parentDAO.deleteParent(parentId);
    }

    @Override
    public void updateParent(Parent parent) {
        parentDAO.updateParent(parent);
    }

    @Override
    public Parent searchParent(int parentId) {
        return  parentDAO.SearchParent(parentId);
    }

    
    
}
