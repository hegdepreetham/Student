package com.accenture.springboot;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
      @Autowired
      private EmployeeService service;
      
	  @RequestMapping("home")
	  public String home() {
		  return "index";
	  }
	  @RequestMapping("make")
		  public ModelAndView loadReferralPage() {
		  ModelAndView mv= new ModelAndView();
		  mv.setViewName("ReferralPage");
		  mv.addObject("empbean",new EmployeeBean());
		  return mv;
	  }
	  
	  @RequestMapping("success")
	  public ModelAndView process(@Valid @ModelAttribute("empbean") EmployeeBean empbean,BindingResult result) throws InvalidLevel
	  {
		  ModelAndView mv=new ModelAndView();
		  if(result.hasErrors()) 
			  mv.setViewName("ReferralPage");
		 
		  else {
			  service.validate(empbean);
			  service.save(empbean);
			  mv.setViewName("Successpage");
		  }
		  return mv;
	  }
	  
	  @RequestMapping("show")
	  public String show() {
		 return "ShowReferral";
	  }
	  @RequestMapping("showreferral")
	  public ModelAndView showAll(String FromDate, String ToDate) throws ParseException, InvalidLevel {
		  ModelAndView mv=new ModelAndView();
		  Date d1= new SimpleDateFormat("dd-MMM-yyyy").parse(FromDate);
		  Date d2= new SimpleDateFormat("dd-MMM-yyyy").parse(ToDate);
		  List<EmployeeBean> e=service.find(d1,d2);
		  if(e.isEmpty()) {
			  throw new InvalidLevel("no records found");
		  }
		  mv.setViewName("ShowEmployeeReferral");
		  mv.addObject("e",e);
		  System.out.println(e);
		  System.out.println(d1);
		  System.out.println(d2);
		  return mv;
	  }
	  
	  @ExceptionHandler(value = Exception.class)
	  public ModelAndView handleAllExceptions(Exception exception) {
		  ModelAndView mv=new ModelAndView();
		  mv.setViewName("errorpage");
		  mv.addObject("message", exception.getMessage());
		  mv.addObject("exception",exception);
		  return mv;
	  }
	  
}
