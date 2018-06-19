/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.service;

import edu.jcodesprint.apex.dto.StudentAttendenceDTO;

/**
 *
 * @author Lakshan Harischandra
 */
public interface EmailService {

    public boolean alertStudentFeesToParent(StudentAttendenceDTO studentAttendenceDTO);
}
