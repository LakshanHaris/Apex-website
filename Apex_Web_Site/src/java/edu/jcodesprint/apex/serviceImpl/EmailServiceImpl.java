/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.serviceImpl;

import edu.jcodesprint.apex.dto.StudentAttendenceDTO;
import edu.jcodesprint.apex.model.Parent;
import edu.jcodesprint.apex.model.Student;
import edu.jcodesprint.apex.model.Subject;
import edu.jcodesprint.apex.repo.ParentDAO;
import edu.jcodesprint.apex.repo.StudentDAO;
import edu.jcodesprint.apex.repo.SubjectDAO;
import edu.jcodesprint.apex.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Lakshan Harischandra
 */
@Service
@Transactional
public class EmailServiceImpl implements EmailService {

    @Autowired
    JavaMailSender mailSender;

    @Autowired
    SubjectDAO subjectDAO;

    @Autowired
    ParentDAO parentDAO;

    @Autowired
    StudentDAO studentDAO;

    @Override
    public boolean alertStudentFeesToParent(StudentAttendenceDTO studentAttendenceDTO) {

        Parent parent = parentDAO.SearchParent(studentAttendenceDTO.getStudentId());
        Subject subjectDetail = subjectDAO.searchSubject(studentAttendenceDTO.getSubject());
        Student student = studentDAO.searchStudent(studentAttendenceDTO.getStudentId());
        
        String text = "Dear Parent \n\nYour child : "+student.getFirstName()+" "+student.getLastName()+ " done a payment worth Rs. " + subjectDetail.getSubFee() + " for"
                + " the subject : " + subjectDetail.getName() + "\nBest regards!\nEnquery call : Main admin (Lakshan | +94774511679)\n\nTechnical Division\nApex Institution\nKalutara"
                + "\nWestern 12000\nSri Lanka\nTel : +94342221902";

        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(parent.getEmail());
        message.setSubject("Payment received");
        message.setText(text);
        mailSender.send(message);
        return true;

    }

}
