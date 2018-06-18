/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repoImpl;

import edu.jcodesprint.apex.model.Attendence;
import edu.jcodesprint.apex.repo.AttendenceDAO;
import java.io.Serializable;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;

/**
 *
 * @author Lakshan Harischandra
 */
@Repository
public class AttendenceDAOImpl implements AttendenceDAO {

    @Autowired
    SessionFactory factory;

    @Override
    public Serializable saveAttendenceData(Attendence attendence) {
        return factory.getCurrentSession().save(attendence);
    }

    @Override
    public Attendence newlyCreatedAttendence() {
        String sql = "select * from attendence where atd_entry = (select max(atd_entry) from attendence) ";
        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.addEntity(Attendence.class);
        return (Attendence) query.uniqueResult();
    }

    @Override
    public boolean updateStudentMaintaince(long atdId, int studentId, String subject) {
        String sql = "insert into student_maintaince values(atd_entry= :atdId,subject_id_maintaince= :subjectId,stu_id_stuMaintaince= :stuId)";
        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.setParameter("atdId", atdId);
        query.setParameter("subjectId", subject);
        query.setParameter("stuId", studentId);
        return 0 < query.executeUpdate();
    }

}
