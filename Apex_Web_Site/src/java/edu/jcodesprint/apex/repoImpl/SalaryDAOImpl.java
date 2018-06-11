/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repoImpl;

import edu.jcodesprint.apex.model.Salary;
import edu.jcodesprint.apex.repo.SalaryDAO;
import java.io.Serializable;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Lakshan Harischandra
 */
@Repository
public class SalaryDAOImpl implements SalaryDAO {

    @Autowired
    SessionFactory factory;

    @Override
    public Serializable addSalaryData(Salary salary) {
        return factory.getCurrentSession().save(salary);
    }

    @Override
    public boolean deleteSalaryData(int salaryInvoiceNumber) {
        return false;
    }

    @Override
    public boolean updateSalaryData(Salary salary) {
        Query query = factory.getCurrentSession().createQuery("update Salary set invoiceNum = :invoiceNumber,date = :dob,"
                + " receiverType = :receiver,amount = :amount,status = :status,admIdSalary = :admId,stfIdSalary = :stfId,tuiIdSalary = :tuiId"
                + "   where invoiceNum = :invoiceNumber");

        query.setParameter("invoiceNumber", salary.getInvoiceNum());
        query.setParameter("dob", salary.getDate());
        query.setParameter("receiver", salary.getReceiverType());
        query.setParameter("amount", salary.getAmount());
        query.setParameter("status", salary.getStatus());
        query.setParameter("admId", salary.getAdmIdSalary());
        query.setParameter("stfId", salary.getStfIdSalary());
        query.setParameter("tuiId", salary.getTuiIdSalary());

        return 0 < query.executeUpdate();
    }

    @Override
    public List<Salary> getAllSalaryData() {
        Criteria criteria = factory.getCurrentSession().createCriteria(Salary.class);
        return (List<Salary>) criteria.list();
    }

}
