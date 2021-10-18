package com.cjc.main.HomeRepasitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cjc.main.Model.Department;

@Repository
public interface DepartmentRepository extends JpaRepository<Department, Integer>{

	 Department findByDname(String dname); 
}
