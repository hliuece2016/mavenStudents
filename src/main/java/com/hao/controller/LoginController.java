package com.hao.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hao.pojo.Student;
import com.hao.service.StudentService;

@Controller
public class LoginController {

	@Autowired
	private StudentService studentService;
	
	// 学生用户登录
    @RequestMapping(value = "/studentLogin", method = RequestMethod.POST)
    public String studentLogin(Student student, HttpServletRequest request, RedirectAttributes redirect) {
        // 通过用户名查找User对象
    	System.out.println(student.getName());
        Student user = studentService.doLogin(student);

        // 判断登录信息是否正确
        if (user != null) {
            // 登陆成功，跳转到主页
            request.getSession().setAttribute("user", user);
            return "redirect:/student";
        }

        // 登录失败，跳转页面
        request.setAttribute("Msg", "incorrect username or password");
        return "error";
    }
    
    //教师用户登录
    @RequestMapping(value = "/teacherLogin", method = RequestMethod.POST)
    public String teacherLogin(Student loginUser, HttpServletRequest request, RedirectAttributes redirect) {

    	if(loginUser.getName().equals("teacher") && loginUser.getPassword().equals("teacher")) {
    		request.getSession().setAttribute("username", loginUser.getName());
    		return "redirect:/teacher";
    	}
    	
    	request.setAttribute("Msg", "incorrect username or password");
    	return "error";
    }
    
    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) throws Exception{
    	session.invalidate();
    	return "redirect:/job";
    }
}
