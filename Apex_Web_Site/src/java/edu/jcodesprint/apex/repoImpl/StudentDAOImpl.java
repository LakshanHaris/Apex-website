/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.jcodesprint.apex.repoImpl;

import edu.jcodesprint.apex.dto.LoginCredintials;
import edu.jcodesprint.apex.dto.PayExamSearchDto;
import edu.jcodesprint.apex.model.Attendence;
import edu.jcodesprint.apex.model.Exam;
import edu.jcodesprint.apex.model.Student;
import edu.jcodesprint.apex.model.Student_fees;
import edu.jcodesprint.apex.model.Subject;
import edu.jcodesprint.apex.model.Tution_class;
import edu.jcodesprint.apex.model.Tutor;
import edu.jcodesprint.apex.repo.StudentDAO;
import java.io.Serializable;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Lakshan Harischandra
 */
@Repository
public class StudentDAOImpl implements StudentDAO {

    @Autowired
    SessionFactory factory;

    @Override
    public Serializable addStudent(Student student) {
        return factory.getCurrentSession().save(student);
    }

    @Override
    public boolean deleteStudent(int stuId) {
        Query query = factory.getCurrentSession().createQuery("delete from Student where stuRegNumber=:stuRegNum");
        query.setParameter("stuRegNum", stuId);

        if (query.executeUpdate() > 0) {
            return true;
        } else {
            return false;
        }

    }

    @Override
    public boolean updateStudent(Student student) {
        String sql = "update Student set stu_reg_number = :stuRegNum,first_name = :firstName,"
                + "last_name = :lastName,"
                + " dob = :dob,address = :address,gender = :gender,email = :email,mobile_number = :mobileNumber,"
                + "password = :password,picture = :picture,adm_id_stu = :admIdStu    where stu_reg_number = :stuId";
        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.setParameter("stuRegNum", student.getStuRegNumber());
        query.setParameter("firstName", student.getFirstName());
        query.setParameter("lastName", student.getLastName());
        query.setParameter("dob", student.getDob());
        query.setParameter("address", student.getAddress());
        query.setParameter("gender", student.getGender());
        query.setParameter("email", student.getEmail());
        query.setParameter("mobileNumber", student.getMobileNumber());
        query.setParameter("password", student.getPassword());
        query.setParameter("picture", student.getPicture());
        query.setParameter("admIdStu", student.getAdmIdStu());
        query.setParameter("stuId", student.getStuRegNumber());

        return 0 < query.executeUpdate();
    }

    @Override
    public List<Student> getAllStudents() {
        Criteria criteria = factory.getCurrentSession().createCriteria(Student.class);
        return (List<Student>) criteria.list();
    }

    @Override
    public Student searchStudent(int stuId) {
        Criteria criteria = factory.getCurrentSession().createCriteria(Student.class);
        criteria.add(Restrictions.eq("stuRegNumber", stuId));
        return (Student) criteria.uniqueResult();
    }

    @Override
    public Student checkUserNamePassword(LoginCredintials loginCredintials) {
        Criteria criteria = factory.getCurrentSession().createCriteria(Student.class);

        Criterion stuRegNumber = Restrictions.eq("stuRegNumber", loginCredintials.getUserRegId());
        Criterion stuPassword = Restrictions.eq("password", loginCredintials.getUserPassword());
        LogicalExpression andExp = Restrictions.and(stuRegNumber, stuPassword);
        criteria.add(andExp);

        return (Student) criteria.uniqueResult();
    }

    @Override
    public List<Attendence> getAttendenceDetails(String datePattern, String subjectId, int stuId) {
//        String sql = "select * from attendence where date LIKE '"+datePattern+"' and atd_entry IN (select"
//                + "atd_entry from student_maintaince where subject_id_maintaince= :subjectId and stu_id_stuMaintaince= :stuId)";

        String sql = "select t2.*\n"
                + "from student_maintaince as t1\n"
                + "INNER JOIN attendence as t2\n"
                + "where t2.atd_entry = t1.atd_entry and t1.subject_id_maintaince= :subjectId and t1.stu_id_stuMaintaince= :stuId and t2.date LIKE '" + datePattern + "'";

        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.setParameter("subjectId", subjectId);
        query.setParameter("stuId", stuId);
        query.addEntity(Attendence.class);

        return query.list();
    }

    @Override
    public List<Student_fees> getStudentPayHistory(PayExamSearchDto payHistorySearchDto) {

        String datePattern = payHistorySearchDto.getYear() + "%";
        String sql = "select * from student_fees\n"
                + "where subject_id= :subjectId and stu_id_stu_fees= :stuId \n"
                + "and date LIKE '" + datePattern + "'";

        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.setParameter("subjectId", payHistorySearchDto.getSubject());
        query.setParameter("stuId", payHistorySearchDto.getStuId());

        query.addEntity(Student_fees.class);
        return query.list();
    }

    @Override
    public List<Exam> getStudentExamHistory(PayExamSearchDto examHistotySearchDto) {
        String datePattern = examHistotySearchDto.getYear() + "%";
        String sql = "select * from exam where subject= :subjectId and student_stu_reg_number= :stuId and date LIKE '" + datePattern + "' ";

        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.setParameter("subjectId", examHistotySearchDto.getSubject());
        query.setParameter("stuId", examHistotySearchDto.getStuId());

        query.addEntity(Exam.class);
        return query.list();
    }

    @Override
    public Tutor getStuSearchTutor(int grade, int subject) {
        String sql = "select * from tutor\n"
                + "where tui_reg_number=(\n"
                + "select  t1.tui_id_tuiReferences\n"
                + "from tutor_references as t1\n"
                + "INNER JOIN tution_class as t2\n"
                + "where t2.class_ref = t1.class_ref_tuiReferences and t2.grade=:grade and t1.subject_id_tuiReferences= :subjectId )";
        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.setParameter("grade", grade);
        query.setParameter("subjectId", subject);
        query.addEntity(Tutor.class);

        return (Tutor) query.uniqueResult();

    }

    @Override
    public Tution_class getStuSearchClass(int grade, int subject) {
        String sql = "select  t1.*\n"
                + "from tution_class as t1\n"
                + "INNER JOIN tutor_references as t2\n"
                + "where t1.class_ref = t2.class_ref_tuiReferences and t2.subject_id_tuiReferences= :subjectId and t1.grade= :grade";

        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.setParameter("grade", grade);
        query.setParameter("subjectId", subject);
        query.addEntity(Tution_class.class);

        return (Tution_class) query.uniqueResult();

    }

    @Override
    public List<Subject> getStudentSubjects(int stuId) {
        String sql = "select DISTINCT t1.*\n"
                + "from subject as t1\n"
                + "INNER JOIN student_maintaince as t2\n"
                + "where t2.subject_id_maintaince=t1.subject_id and t2.stu_id_stuMaintaince= :studentRegNumber";

        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.setParameter("studentRegNumber", stuId);
        query.addEntity(Subject.class);
        return query.list();
    }

    @Override
    public Student newlyCreatedStudent() {
        String sql = "select * from student where stu_reg_number = (select max(stu_reg_number) from student) ";
        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.addEntity(Student.class);
        return (Student) query.uniqueResult();
    }

    @Override
    public List<Student> getLatestStudents() {
        String sql = "select * from student order by stu_reg_number DESC LIMIT 8";
        SQLQuery query = factory.getCurrentSession().createSQLQuery(sql);
        query.addEntity(Student.class);
        return query.list();
    }

}
