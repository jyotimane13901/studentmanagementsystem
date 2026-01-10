package edu.cjc.sms.app.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.cjc.sms.app.model.Student;

@Repository
public interface StudentRepoi extends JpaRepository<Student, Integer>{

	
	List<Student> findAll();

	void deleteById(int id);

	List<Student> findByBatchnumberAndBatchMode(String bn, String bm);

	Student findById(int id,String fees);

	void save(Optional<Student> student);


	

}
