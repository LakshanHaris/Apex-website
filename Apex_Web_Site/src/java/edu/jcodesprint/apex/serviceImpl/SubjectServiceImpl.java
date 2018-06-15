/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;

import edu.jcodesprint.apex.model.Subject;
import edu.jcodesprint.apex.repo.SubjectDAO;
import edu.jcodesprint.apex.service.SubjectService;
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
public class SubjectServiceImpl implements SubjectService {

    @Autowired
    SubjectDAO subjectDAO;

    @Override
    public int getSubjectCount() {
        List<Subject> subjectList = subjectDAO.getAllSubjects();
        int subjectCount = subjectList.size();
        return subjectCount;
    }

}
