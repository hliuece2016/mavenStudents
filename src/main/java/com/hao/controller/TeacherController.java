package com.hao.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hao.pojo.Student;
import com.hao.service.StudentService;

@Controller
public class TeacherController {
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value = "/teacher/studentRecord", method = RequestMethod.POST)
	public String searchStudent(String name, HttpServletRequest request) {
		System.out.println("执行searchStudent()");
		Student user = studentService.getByName(name);
        request.setAttribute("student", user);
        return "teacher/studentRecord";
	}
	
	@RequestMapping(value = "/teacher/addStudent", method = RequestMethod.POST)
	public String addStudent(Student student, HttpServletRequest request) {
		System.out.println("执行addStudent()");
		studentService.add(student);
		request.setAttribute("Msg", "success");
		return "teacher/addStudent";
	}
	
	@RequestMapping(value = "/teacher/listStudent")
	public ModelAndView listStudent() {
		System.out.println("执行listStudent()");
		ModelAndView mav = new ModelAndView();
		List<Student> studentList = studentService.list();
		
		//放入转发函数
		mav.addObject("studentList", studentList);
		//放入jsp路径
		mav.setViewName("teacher/listStudent");
		
		return mav;
	}
	
}
