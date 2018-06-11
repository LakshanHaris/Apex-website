/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Tutor;
import edu.jcodesprint.apex.repo.TutorDAO;
import edu.jcodesprint.apex.service.TutorService;
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
public class TutorServiceImpl implements TutorService{

    @Autowired
    TutorDAO tutorDAO;
    @Override
    public boolean  addTutor(Tutor tutor) {
        
       
         if (null != tutorDAO.addTutor(tutor)) {
            return true;
        } else {
             return false;
        }
    }

    @Override
    public boolean  deleteTutor(int tutorId) {
        return  tutorDAO.deleteTutor(tutorId);
    }

    @Override
    public boolean  updateTutor(Tutor tutor) {
        return  tutorDAO.updateTutor(tutor);
    }

    @Override
    public List<Tutor> getAllTutors() {
        return tutorDAO.getAllTutors();
    }

    @Override
    public Tutor SearchTutor(int tutorId) {
        return  tutorDAO.SearchTutor(tutorId);
    }

  

    @Override
    public Tutor checkUserNamePassword(LoginCredintials loginCredintials) {
        return tutorDAO.checkUserNamePassword(loginCredintials);
    }
    
}
