/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;

import edu.jcodesprint.apex.model.Salary;
import edu.jcodesprint.apex.repo.SalaryDAO;
import edu.jcodesprint.apex.service.SalaryService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Lakshan Harischandra
 */
@Transactional
@Service
public class SalaryServiceImpl implements SalaryService {

    @Autowired
    SalaryDAO salaryDAO;
    @Override
    public boolean  addSalaryData(Salary salary) {
        if (null != salaryDAO.addSalaryData(salary)) {
            return  true;
        } else {
            return false;
        }
    }

    @Override
    public void deleteSalaryData(int salaryInvoiceNumber) {
        salaryDAO.deleteSalaryData(salaryInvoiceNumber);
    }

    @Override
    public boolean  updateSalaryData(Salary salary) {
        return salaryDAO.updateSalaryData(salary);
    }

    @Override
    public List<Salary> getAllSalaryData() {
        return salaryDAO.getAllSalaryData();
    }
    
}
