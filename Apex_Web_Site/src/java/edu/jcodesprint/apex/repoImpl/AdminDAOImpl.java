/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repoImpl;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Admin;
import edu.jcodesprint.apex.repo.AdminDAO;
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
public class AdminDAOImpl implements AdminDAO {

    @Autowired
    private SessionFactory factory;

    @Override
    public Serializable addAdmin(Admin admin) {
        return factory.getCurrentSession().save(admin);
    }

    @Override
    public boolean deleteAdmin(int adminId) {
        Query query = factory.getCurrentSession().createQuery("delete from Admin where admRegNumber=:admRegNum");
        query.setParameter("admRegNum", adminId);

        if (query.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean updateAdmin(Admin admin) {
        String sql = "update Admin set adm_reg_number = :admRegNum,first_name = :firstName,"
                + "last_name = :lastName,"
                + " dob = :dob, address = :address, gender = :gender, email = :email, mobile_number = :mobileNumber, bank = :bank,bank_acc = :bankAcc,"
                + "branch = :branch, password = :password, picture = :picture where adm_reg_number = :admId";
        
        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);

        query.setParameter("admRegNum", admin.getAdmRegNumber());
        query.setParameter("firstName", admin.getFirstName());
        query.setParameter("lastName", admin.getLastName());
        query.setParameter("dob", admin.getDob());
        query.setParameter("address", admin.getAddress());
        query.setParameter("gender", admin.getGender());
        query.setParameter("email", admin.getEmail());
        query.setParameter("mobileNumber", admin.getMobileNumber());
        query.setParameter("bank", admin.getBank());
        query.setParameter("bankAcc", admin.getBankAcc());
        query.setParameter("branch", admin.getBranch());
        query.setParameter("password", admin.getPassword());
        query.setParameter("picture", admin.getPicture());
        query.setParameter("admId", admin.getAdmRegNumber());

        return 0 < query.executeUpdate();
    }

    @Override
    public List<Admin> getAllAdmins() {
        Criteria criteria = factory.getCurrentSession().createCriteria(Admin.class);
        return (List<Admin>) criteria.list();
    }

    @Override
    public Admin SearchAdmin(int adminId) {
        Criteria criteria = factory.getCurrentSession().createCriteria(Admin.class);
        criteria.add(Restrictions.eq("admRegNumber", adminId));
        return (Admin) criteria.uniqueResult();
    }

    @Override
    public Admin checkUserNamePassword(LoginCredintials loginCredintials) {
        Criteria criteria = factory.getCurrentSession().createCriteria(Admin.class);

        Criterion admRegNumber = Restrictions.eq("admRegNumber", loginCredintials.getUserRegId());
        Criterion admPassword = Restrictions.eq("password", loginCredintials.getUserPassword());
        LogicalExpression andExp = Restrictions.and(admRegNumber, admPassword);
        criteria.add(andExp);

        return (Admin) criteria.uniqueResult();
    }

}
