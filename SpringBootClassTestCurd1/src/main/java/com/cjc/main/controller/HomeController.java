package com.cjc.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.main.model.Student;

@Controller
public class HomeController {

	
	@RequestMapping("/log")
	public String prePage(@RequestParam("userid") String uname,@RequestParam("pass") String pass)
	{
		System.out.println("UserName: "+uname);
		System.out.println("PassWord: "+pass);
		
		return "index";
		
	}
	@RequestMapping("/register")
	public String reggpage()
	{
		return "Register";
		
	}
	@RequestMapping("/reg")
	public String regPage(@ModelAttribute Student stu,Model m)
	{
		System.out.println("UserID: "+stu.getUserid());
		System.out.println("Pass: "+stu.getPass());
		System.out.println("Name :"+stu.getName());
		System.out.println("Address: "+stu.getAddr());
		System.out.println("Mobile No: "+stu.getMono());
		
		m.addAttribute("data", stu);
		return "success";
		
		
	}
	
	
}
