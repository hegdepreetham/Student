package com.accenture.springboot;

import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeDAO dao;
	public void validate(@Valid EmployeeBean empbean) throws InvalidLevel {
		// TODO Auto-generated method stub	
		String skill=empbean.getCandskill();
		int level=empbean.getCandlevel();
		int flag=0;
	
		if(skill.equals("J2EE")) {
			if(level==10 || level==9) {
				flag=1;
			}
		}
		else if(skill.equals("SAP ABAP")) {
			if(level==10 || level==9) {
				flag=1;
			}
		}
	    else if(skill.equals("Sales Force")) {
		    if(level==10 || level==8) {
			     flag=1;
		    }
	    }
		if(flag==0) {
		    throw new InvalidLevel("Exception Occured is: Skill Level mismatchException");
	    }
	}

	public void save(@Valid EmployeeBean empbean) {
		// TODO Auto-generated method stub
		dao.save(empbean);
	}

	public List<EmployeeBean> find(Date d1, Date d2) {
		// TODO Auto-generated method stub
		return dao.findbyDate(d1,d2);
	}
}