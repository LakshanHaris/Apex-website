/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;

import edu.jcodesprint.apex.model.Exam;
import edu.jcodesprint.apex.repo.ExamDAO;
import edu.jcodesprint.apex.service.ExamService;
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
public class ExamServiceImpl implements ExamService {

    @Autowired
    ExamDAO examDAO;

    @Override
    public int getExamCount() {
        List<Exam> examList = examDAO.getAllExams();
        int examCount = examList.size();
        return examCount;
    }

}
