package com.hao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	// 显示主页
    @RequestMapping("/")
    public String index() {
        return "index";
    }
	
	@RequestMapping("/job")
	public String jobpage() {
		return "job";
	}
	
	@RequestMapping("/studentLogin")
	public String studentLogin() {
		return "studentLogin";
	}
	
	@RequestMapping("/teacherLogin")
	public String teacherLogin() {
		return "teacherLogin";
	}
	
	@RequestMapping("/student")
	public String student() {
		return "student";
	}
	
	@RequestMapping("/teacher")
	public String teacher() {
		return "teacher";
	}
}
