/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.service;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.model.Tutor;
import java.util.List;

/**
 *
 * @author Lakshan Harischandra
 */
public interface TutorService {
    boolean  addTutor(Tutor tutor);
    boolean  deleteTutor(int tutorId);
    boolean  updateTutor(Tutor tutor);
    List<Tutor> getAllTutors();
    public Tutor SearchTutor(int tutorId);
    public Tutor checkUserNamePassword(LoginCredintials loginCredintials);

}
