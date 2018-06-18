/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.service;

import edu.jcodesprint.apex.dto.SalaryDetailDTO;
import edu.jcodesprint.apex.model.Salary;
import java.util.List;

/**
 *
 * @author Lakshan Harischandra
 */
public interface SalaryService {

    boolean addSalaryData(SalaryDetailDTO salaryDetailDTO );

    void deleteSalaryData(int salaryInvoiceNumber);

    boolean updateSalaryData(Salary salary);

    List<Salary> getAllSalaryData();
    //public Salary SearchSalaryData(int userId);
}
