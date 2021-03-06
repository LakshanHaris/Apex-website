/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repo;

import edu.jcodesprint.apex.model.Exam;
import java.io.Serializable;
import java.util.List;

/**
 *
 * @author Lakshan Harischandra
 */
public interface ExamDAO {

    public List<Exam> getAllExams();

    public Serializable saveExamData(Exam exam);

    public Exam searchExam(long examId);

    public Exam newlyCreatedExamDetail();

    
}
