package com.hao.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hao.pojo.Student;
import com.hao.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	StudentService studentService;
	
	// 显示个人成绩
    @RequestMapping(value = "/student/studentRecord", method = RequestMethod.POST)
    public String studentRecord(HttpServletRequest request) {
    	Student student = (Student) request.getSession().getAttribute("user");
    	System.out.println(student.getName());
        request.setAttribute("student", student);
        return "studentRecord";
    }
	
	
	
}
