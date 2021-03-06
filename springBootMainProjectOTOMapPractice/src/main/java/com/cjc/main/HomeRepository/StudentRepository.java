package com.cjc.main.HomeRepository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cjc.main.model.Student;

@Repository
public interface StudentRepository extends CrudRepository<Student, Integer>{

	public Student findByStuid(int stuid);
}
