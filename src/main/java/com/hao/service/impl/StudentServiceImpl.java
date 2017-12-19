package com.hao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hao.mapper.StudentMapper;
import com.hao.pojo.Student;
import com.hao.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentMapper studentMapper;

	public void add(Student student) {
		// TODO Auto-generated method stub
		studentMapper.add(student);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		studentMapper.delete(id);
	}

	public Student getById(int id) {
		// TODO Auto-generated method stub
		return studentMapper.getById(id);
	}

	public Student getByName(String name) {
		// TODO Auto-generated method stub
		return studentMapper.getByName(name);
	}
	
	public String getPassword(String name) {
		return studentMapper.getPassword(name).getPassword();
	}

	public void update(Student student) {
		// TODO Auto-generated method stub
		studentMapper.update(student);
	}
	
	public List<Student> list(){
		return studentMapper.list();
	}
	
	public Student doLogin(Student student) {
		Student user = studentMapper.getByName(student.getName());
        //System.out.println(user.getName());
        
        if (user != null) {
            if(user.getPassword().equals(student.getPassword())) {
            	return user;
            }else {
            	return null;
            }
        }
        return null;
	}
	
}
