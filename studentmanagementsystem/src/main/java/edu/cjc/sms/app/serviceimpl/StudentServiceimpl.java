package edu.cjc.sms.app.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cjc.sms.app.model.Student;
import edu.cjc.sms.app.repository.StudentRepoi;
import edu.cjc.sms.app.servicei.StudentServicei;

@Service
public class StudentServiceimpl implements StudentServicei{

	@Autowired
	StudentRepoi sr;

	@Override
	public List<Student> getAllStudent() {
		return 	sr.findAll();
	}

	@Override
	public void saveStudent(Student student) {
		sr.save(student);
		
	}

	@Override
	public List<Student> deleteStudent(int id) {
		
		sr.deleteById(id);
		return sr.findAll();
			
	}

	@Override
	public List<Student> findByBatchnumberAndBatchMode(String bn, String bm) {
		return sr.findByBatchnumberAndBatchMode(bn, bm);
	}

	@Override
	public Student getStudentById(int id) {
		return  sr.findById(id).orElse(null);
	}

	@Override
	public Student updateStudent(Student st) {
		return sr.save(st);
	}

	@Override
	public void updateStudentFees(int id, double fees) {
		Student student = sr.findById(id).orElse(null);
	    if(student != null) {
	        student.setFeesPaid(student.getFeesPaid() + fees);
	        sr.save(student);
	    }
	}

	@Override
	public void updateStudentBatch(int id, String batch, String bn, String bm) {
		 Student student = sr.findById(id).orElse(null);

	        if (student != null) {
	            student.setBatch(batch);
	            student.setBatchMode(bm);
	            student.setBatchnumber(bn);

	            sr.save(student);
	        }
		
	
	}

}
