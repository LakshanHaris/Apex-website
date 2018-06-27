/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;

import edu.jcodesprint.apex.dto.StudentRegister;
import edu.jcodesprint.apex.model.Admin;
import edu.jcodesprint.apex.model.Parent;
import edu.jcodesprint.apex.model.Student;
import edu.jcodesprint.apex.repo.ParentDAO;
import edu.jcodesprint.apex.repo.StudentDAO;
import edu.jcodesprint.apex.service.ParentService;
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
public class ParentServiceImpl implements ParentService {

    @Autowired
    ParentDAO parentDAO;

    @Autowired
    StudentDAO studentDAO;

    @Override
    public int addParent(Parent parent, int adminId) {

        if (null != parentDAO.addParent(parent)) {
            Parent newParent = parentDAO.newlyCreatedParent();
            Student student = new Student();
            student.setFirstName("student");
            student.setParentparentId(newParent);
            System.out.println("admin : "+adminId);
            student.setAdmIdStu(new Admin(adminId));
            student.setPassword("student");

            System.out.println("parent id" + newParent.getParentId());
            studentDAO.addStudent(student);

            Student newStudent = studentDAO.newlyCreatedStudent();
            int stuId = newStudent.getStuRegNumber();
            System.out.println("student id" + newStudent.getStuRegNumber());

            return stuId;

        } else {
            return 0;
        }
    }

    @Override
    public void deleteParent(int parentId) {
        parentDAO.deleteParent(parentId);
    }

    @Override
    public boolean updateParent(Parent parent) {
        return parentDAO.updateParent(parent);
    }

    @Override
    public Parent searchParent(int parentId) {
        return parentDAO.SearchParent(parentId);
    }

    @Override
    public int getParentCount() {
        List<Parent> parentList = parentDAO.getAllParents();
        int parentCount = parentList.size();
        return parentCount;
    }

}
