/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Salary;
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
public class TutorServiceImpl implements TutorService {

    @Autowired
    TutorDAO tutorDAO;

    @Override
    public int addTutor(Tutor tutor) {

        if (null != tutorDAO.addTutor(tutor)) {
            Tutor newTutor = tutorDAO.newlyCreatedTutor();
            int tuiId = newTutor.getTuiRegNumber();
            return tuiId;
        } else {
            return 0;
        }
    }

    @Override
    public boolean deleteTutor(int tutorId) {
        return tutorDAO.deleteTutor(tutorId);
    }

    @Override
    public boolean updateTutor(Tutor tutor) {
        return tutorDAO.updateTutor(tutor);
    }

    @Override
    public List<Tutor> getAllTutors() {
        return tutorDAO.getAllTutors();
    }

    @Override
    public Tutor SearchTutor(int tutorId) {
        return tutorDAO.SearchTutor(tutorId);
    }

    @Override
    public Tutor checkUserNamePassword(LoginCredintials loginCredintials) {
        return tutorDAO.checkUserNamePassword(loginCredintials);
    }

    @Override
    public int getTutorCount() {
        List<Tutor> tutorList = tutorDAO.getAllTutors();
        int tutorCount = tutorList.size();
        return tutorCount;
    }

    @Override
    public Tutor getTuiEditPicture(String refferPath, int tuiId) {
        Tutor tutor = tutorDAO.SearchTutor(tuiId);
        tutor.setPicture(refferPath);
        
        if (tutorDAO.updateTutor(tutor)) {
            System.out.println(tutor);
            return tutorDAO.SearchTutor(tuiId);
        } else {
            return null;
        }
    }

    @Override
    public List<Salary> getSalaryList(Tutor tutor, String year) {
        return tutorDAO.getSalaryList(tutor,year);
    }

}
