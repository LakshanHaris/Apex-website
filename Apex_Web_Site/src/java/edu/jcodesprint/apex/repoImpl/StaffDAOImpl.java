/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repoImpl;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Staff;

import edu.jcodesprint.apex.repo.StaffDAO;
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
public class StaffDAOImpl implements StaffDAO {

    @Autowired
    private SessionFactory factory;

    @Override
    public Serializable addStaffMember(Staff staff) {
        return factory.getCurrentSession().save(staff);
    }

    @Override
    public boolean deleteStaffMember(int staffId) {
        Query query = factory.getCurrentSession().createQuery("delete from Staff where stfRegNumber=:sftRegNum");
        query.setParameter("sftRegNum", staffId);

        if (query.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean updateStaffMember(Staff staff) {
        String sql = "update Staff set stf_reg_number = :sftRegNum,first_name = :firstName,"
                + "last_name = :lastName,"
                + " dob = :dob,address = :address,gender = :gender,email = :email,mobile_number = :mobileNumber,"
                + "bank = :bank,bank_acc = :bankAcc,branch = :branch,password = :password,picture = :picture,adm_id_stf = :admIdStf    where stf_reg_number = :stfId";

        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.setParameter("sftRegNum", staff.getStfRegNumber());
        query.setParameter("firstName", staff.getFirstName());
        query.setParameter("lastName", staff.getLastName());
        query.setParameter("dob", staff.getDob());
        query.setParameter("address", staff.getAddress());
        query.setParameter("gender", staff.getGender());
        query.setParameter("email", staff.getEmail());
        query.setParameter("mobileNumber", staff.getMobileNumber());
        query.setParameter("password", staff.getPassword());
        query.setParameter("picture", staff.getPicture());
        query.setParameter("admIdStf", staff.getAdmIdStf());
        query.setParameter("stfId", staff.getStfRegNumber());

        return 0 < query.executeUpdate();
    }

    @Override
    public List<Staff> getAllStaffMember() {
        Criteria criteria = factory.getCurrentSession().createCriteria(Staff.class);
        return (List<Staff>) criteria.list();
    }

    @Override
    public Staff SearchStaffMember(int staffId) {
        Criteria criteria = factory.getCurrentSession().createCriteria(Staff.class);
        criteria.add(Restrictions.eq("stfRegNumber", staffId));
        return (Staff) criteria.uniqueResult();
    }

    @Override
    public Staff checkUserNamePassword(LoginCredintials loginCredintials) {
        Criteria criteria = factory.getCurrentSession().createCriteria(Staff.class);

        Criterion stfRegNumber = Restrictions.eq("stfRegNumber", loginCredintials.getUserRegId());
        Criterion stfPassword = Restrictions.eq("password", loginCredintials.getUserPassword());
        LogicalExpression andExp = Restrictions.and(stfRegNumber, stfPassword);
        criteria.add(andExp);

        return (Staff) criteria.uniqueResult();
    }

    @Override
    public Staff newlyCreatedStaff() {
        String sql = "select *  from staff where stf_reg_number = (select max(stf_reg_number) from staff) ";
        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.addEntity(Staff.class);
        return (Staff) query.uniqueResult();
    }

}
