package edu.cjc.sms.app.servicei;

import java.util.List;

import edu.cjc.sms.app.model.Student;

public interface StudentServicei {

public 	List<Student> getAllStudent();

	public void saveStudent(Student student);

public 	List<Student> deleteStudent(int id);

public 	List<Student> findByBatchnumberAndBatchMode(String bn, String bm);

	public Student getStudentById(int id);

	public Student updateStudent(Student st);

	public void updateStudentFees(int id, double fees);

	 public void updateStudentBatch(int id, String batch, String bn, String bm);

}
