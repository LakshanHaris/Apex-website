/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;

import edu.jcodesprint.apex.model.Tution_class;
import edu.jcodesprint.apex.repo.Tution_classDAO;
import edu.jcodesprint.apex.service.Tution_classService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Lakshan Harischandra
 */
@Service
@Transactional
public class Tution_classServiceImpl implements Tution_classService {

    @Autowired
    Tution_classDAO tution_classDAO;

    @Override
    public int getClassCount() {
        List<Tution_class> tution_classList = tution_classDAO.getAllTution_classes();
        int tution_classCount = tution_classList.size();
        return tution_classCount;
    }

}
