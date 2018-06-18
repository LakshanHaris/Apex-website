/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repo;

import edu.jcodesprint.apex.model.Attendence;
import java.io.Serializable;

/**
 *
 * @author Lakshan Harischandra
 */
public interface AttendenceDAO {

    public Serializable saveAttendenceData(Attendence attendence);

    public Attendence newlyCreatedAttendence();

    public boolean updateStudentMaintaince(long atdId, int studentId, String subject);
}
