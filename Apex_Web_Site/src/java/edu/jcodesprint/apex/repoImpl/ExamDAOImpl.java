/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repoImpl;

import edu.jcodesprint.apex.model.Exam;
import edu.jcodesprint.apex.repo.ExamDAO;
import java.io.Serializable;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Lakshan Harischandra
 */
@Repository
public class ExamDAOImpl implements ExamDAO {

    @Autowired
    SessionFactory factory;

    @Override
    public List<Exam> getAllExams() {
        Criteria criteria = factory.getCurrentSession().createCriteria(Exam.class);
        return (List<Exam>) criteria.list();
    }

    @Override
    public Serializable saveExamData(Exam exam) {
        return factory.getCurrentSession().save(exam);
    }

    @Override
    public Exam searchExam(long examId) {
        Criteria criteria = factory.getCurrentSession().createCriteria(Exam.class);
        criteria.add(Restrictions.eq("exam_no", examId));
        return (Exam) criteria.uniqueResult();
    }

    @Override
    public Exam newlyCreatedExamDetail() {
        String sql = "select * from exam where exam_no = (select max(exam_no) from exam) ";
        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.addEntity(Exam.class);
        return (Exam) query.uniqueResult();
    }

    
}
