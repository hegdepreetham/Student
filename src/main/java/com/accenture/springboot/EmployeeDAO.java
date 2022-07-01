package com.accenture.springboot;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface EmployeeDAO extends JpaRepository<EmployeeBean,String> {

	@Query("select e from employee e where e.dor between ?1 and ?2")
	List<EmployeeBean> findbyDate(Date d1, Date d2);

}
