/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repoImpl;

import edu.jcodesprint.apex.model.Admin;
import edu.jcodesprint.apex.model.Parent;
import edu.jcodesprint.apex.model.Student;

import edu.jcodesprint.apex.repo.ParentDAO;
import java.io.Serializable;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
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
public class ParentDAOImpl implements ParentDAO {

    @Autowired
    SessionFactory factory;

    @Override
    public Serializable addParent(Parent parent) {
        return factory.getCurrentSession().save(parent);
    }

    @Override
    public boolean deleteParent(int parentIdNo) {
        Query query = factory.getCurrentSession().createQuery("delete from Parent where parent_id=:parentRegNum");
        query.setParameter("parentRegNum", parentIdNo);

        if (query.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean updateParent(Parent parent) {
        Query query = factory.getCurrentSession().createQuery("update Parent set parent_id = :parentRegNum,firstName = :firstName,"
                + "lastName = :lastName,"
                + "email = :email,mobileNumber = :mobileNumber,occupation = :occupation"
                + "   where parent_id = :parentId");

        query.setParameter("parentRegNum", parent.getParentId());
        query.setParameter("firstName", parent.getFirstName());
        query.setParameter("lastName", parent.getLastName());
        query.setParameter("occupation", parent.getOccupation());
        query.setParameter("email", parent.getEmail());
        query.setParameter("mobileNumber", parent.getMobileNumber());

        query.setParameter("parentId", parent.getParentId());

        return 0 < query.executeUpdate();
    }

    @Override
    public Parent SearchParent(int parentIdNo) {
        Criteria criteria = factory.getCurrentSession().createCriteria(Parent.class);
        criteria.add(Restrictions.eq("parentId", parentIdNo));
        return (Parent) criteria.uniqueResult();
    }

    @Override
    public Parent newlyCreatedParent() {
        String sql = "select * from parent where parent_id = (select max(parent_id) from parent) ";
        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.addEntity(Parent.class);
        return (Parent) query.uniqueResult();
    }

    @Override
    public List<Parent> getAllParents() {
        Criteria criteria = factory.getCurrentSession().createCriteria(Parent.class);
        return (List<Parent>) criteria.list();
    }

}
