/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;

import edu.jcodesprint.apex.dto.SalaryDetailDTO;
import edu.jcodesprint.apex.model.Admin;
import edu.jcodesprint.apex.model.Salary;
import edu.jcodesprint.apex.model.Staff;
import edu.jcodesprint.apex.model.Tutor;
import edu.jcodesprint.apex.repo.SalaryDAO;
import edu.jcodesprint.apex.service.SalaryService;
import java.sql.Date;
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
    public boolean  addSalaryData(SalaryDetailDTO salaryDetailDTO) {
        
        Salary salary = new Salary();
        long millis = System.currentTimeMillis();
        Date currentDate = new Date(millis);
        salary.setDate(currentDate);
        salary.setReceiverType(salaryDetailDTO.getReceiverType());
        salary.setAmount(salaryDetailDTO.getAmount());
        salary.setStatus("paid");
        
        String role = salaryDetailDTO.getReceiverType();
        if (null!=role) switch (role) {
            case "admin":
                salary.setAdmIdSalary(new Admin(salaryDetailDTO.getUserId()));
                salary.setStfIdSalary(new Staff(1));
                salary.setTuiIdSalary(new Tutor(1));
                break;
            case "staff":
                salary.setStfIdSalary(new Staff(salaryDetailDTO.getUserId()));
                salary.setAdmIdSalary(new Admin(1));
                salary.setTuiIdSalary(new Tutor(1));
                break;
            case "tutor":
                salary.setTuiIdSalary(new Tutor(salaryDetailDTO.getUserId()));
                salary.setAdmIdSalary(new Admin(1));
                salary.setStfIdSalary(new Staff(1));
                break;
            default:
                break;
        }
        
        
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
