/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repoImpl;

import edu.jcodesprint.apex.model.Tution_class;
import edu.jcodesprint.apex.repo.Tution_classDAO;
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
public class Tution_classDAOImpl implements Tution_classDAO{
    
    @Autowired
    SessionFactory factory;

    @Override
    public List<Tution_class> getAllTution_classes() {
        Criteria criteria = factory.getCurrentSession().createCriteria(Tution_class.class);
        return (List<Tution_class>) criteria.list();
    }
    
}
