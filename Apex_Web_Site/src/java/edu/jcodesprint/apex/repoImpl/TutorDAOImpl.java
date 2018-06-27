/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repoImpl;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Admin;
import edu.jcodesprint.apex.model.Salary;
import edu.jcodesprint.apex.model.Tutor;

import edu.jcodesprint.apex.repo.TutorDAO;
import java.io.Serializable;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Lakshan Harischandra
 */
@Repository
public class TutorDAOImpl implements TutorDAO {

    @Autowired
    SessionFactory factory;

    @Override
    public Serializable addTutor(Tutor tutor) {
        return factory.getCurrentSession().save(tutor);
    }

    @Override
    public boolean deleteTutor(int tutorId) {
        Query query = factory.getCurrentSession().createQuery("delete from Tutor where tuiRegNumber=:tuiRegNum");
        query.setParameter("tuiRegNum", tutorId);

        if (query.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean updateTutor(Tutor tutor) {
        String sql = "update Tutor set tui_reg_number = :tuiRegNum,first_name = :firstName,"
                + "last_name = :lastName,"
                + " dob = :dob,address = :address,gender = :gender,graduation =:graduation,stream =:tutorStream,"
                + "email = :email,mobile_number = :mobileNumber,bank = :bank,bank_acc = :bankAcc,branch = :branch,password = :password,picture = :picture,adm_id_tui = :admIdStu    where tui_reg_number = :tuiId";

        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.setParameter("tuiRegNum", tutor.getTuiRegNumber());
        query.setParameter("firstName", tutor.getFirstName());
        query.setParameter("lastName", tutor.getLastName());
        query.setParameter("dob", tutor.getDob());
        query.setParameter("address", tutor.getAddress());
        query.setParameter("gender", tutor.getGender());
        query.setParameter("email", tutor.getEmail());
        query.setParameter("mobileNumber", tutor.getMobileNumber());
        query.setParameter("graduation", tutor.getGraduation());
        query.setParameter("tutorStream", tutor.getStream());
        query.setParameter("bank", tutor.getBank());
        query.setParameter("bankAcc", tutor.getBankAcc());
        query.setParameter("branch", tutor.getBranch());
        query.setParameter("password", tutor.getPassword());
        query.setParameter("picture", tutor.getPicture());
        query.setParameter("admIdStu", tutor.getAdmIdTui());
        query.setParameter("tuiId", tutor.getTuiRegNumber());

        return 0 < query.executeUpdate();
    }

    @Override
    public List<Tutor> getAllTutors() {
        Criteria criteria = factory.getCurrentSession().createCriteria(Tutor.class);
        return (List<Tutor>) criteria.list();
    }

    @Override
    public Tutor SearchTutor(int tutorId) {
        Criteria criteria = factory.getCurrentSession().createCriteria(Tutor.class);
        criteria.add(Restrictions.eq("tuiRegNumber", tutorId));
        return (Tutor) criteria.uniqueResult();
    }

    @Override
    public Tutor checkUserNamePassword(LoginCredintials loginCredintials) {
        Criteria criteria = factory.getCurrentSession().createCriteria(Tutor.class);

        Criterion tuiRegNumber = Restrictions.eq("tuiRegNumber", loginCredintials.getUserRegId());
        Criterion tuiPassword = Restrictions.eq("password", loginCredintials.getUserPassword());
        LogicalExpression andExp = Restrictions.and(tuiRegNumber, tuiPassword);
        criteria.add(andExp);

        return (Tutor) criteria.uniqueResult();
    }

    @Override
    public Tutor newlyCreatedTutor() {
        String sql = "select * from tutor where tui_reg_number = (select max(tui_reg_number) from tutor) ";
        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.addEntity(Tutor.class);
        return (Tutor) query.uniqueResult();
    }

    @Override
    public List<Salary> getSalaryList(Tutor tutor, String year) {
        String datePattern = year + "%";
        String sql = "select * from salary \n"
                + "where tui_id_salary= :tutorId and date LIKE '" + datePattern + "'";

        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.setParameter("tutorId", tutor.getTuiRegNumber());
        query.addEntity(Salary.class);
        return query.list();
    }

}
