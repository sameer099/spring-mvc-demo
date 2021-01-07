package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldController {

	//need a controller method to show a initial html form
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	//need a controller method to process the html form
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	//new controller method to read 
	//add data to the model
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request,Model model) {
		
		//read the request parameter from html form
		String theName = request.getParameter("studentName");
		
		
		//convert the data into caps
		theName=theName.toUpperCase();
		
		//create the message
		String result="Yo! " +theName;
		
		
		//add message to the model
		model.addAttribute("message", result);
		
		return "helloworld";
		
	}
	
	
	
	
	@RequestMapping("/processFormVersionThree")
	public String processFormVersionThree(
			@RequestParam("studentName") String theName,
			Model model) {
		
		
		
		//convert the data into caps
		theName=theName.toUpperCase();
		
		//create the message
		String result="Hey yo yo! " +theName;
		
		
		//add message to the model
		model.addAttribute("message", result);
		
		return "helloworld";
		
	}
	
}
