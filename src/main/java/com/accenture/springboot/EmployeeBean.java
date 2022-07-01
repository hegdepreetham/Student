package com.accenture.springboot;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity(name = "employee")
@Table(name = "employee")
public class EmployeeBean {
	

	@NotEmpty(message="This is a required field")
	@Size(max = 7,min = 3,message = "Employee EmpName should be between 3 and 7 characters long")
	private String empname;
	@NotNull(message="This is a required field")
	@DateTimeFormat(pattern = "dd-MMM-yyyy")
	private Date dor;
	@Id
	@NotEmpty(message="This is a required field")
	private String candname;
	@NotEmpty(message="This is a required field")
	private String candskill;
	@NotNull(message="This is a required field")
	private Integer candlevel;
	@Override
	public String toString() {
		return "EmployeeBean [empname=" + empname + ", dor=" + dor + ", candname=" + candname + ", candskill="
				+ candskill + ", candlevel=" + candlevel + "]";
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public Date getDor() {
		return dor;
	}
	public void setDor(Date dor) {
		this.dor = dor;
	}
	public String getCandname() {
		return candname;
	}
	public void setCandname(String candname) {
		this.candname = candname;
	}
	public String getCandskill() {
		return candskill;
	}
	public void setCandskill(String candskill) {
		this.candskill = candskill;
	}
	public Integer getCandlevel() {
		return candlevel;
	}
	public void setCandlevel(Integer candlevel) {
		this.candlevel = candlevel;
	}
	

}
