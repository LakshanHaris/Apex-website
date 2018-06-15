/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repoImpl;

import edu.jcodesprint.apex.model.Exam;
import edu.jcodesprint.apex.repo.ExamDAO;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Lakshan Harischandra
 */
@Repository
public class ExamDAOImpl implements ExamDAO{

    @Autowired
    SessionFactory factory;
    
    @Override
    public List<Exam> getAllExams() {
        Criteria criteria = factory.getCurrentSession().createCriteria(Exam.class);
        return (List<Exam>) criteria.list();
    }
    
}
