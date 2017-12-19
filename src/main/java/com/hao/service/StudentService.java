package com.hao.service;

import java.util.List;

import com.hao.pojo.Student;

public interface StudentService {

	void add(Student student);
	
	void delete(int id);
	
	Student getById(int id);
	
	Student getByName(String name);
	
	void update(Student student);
	
	String getPassword(String name);
	
	Student doLogin(Student student);
	
	List<Student> list();
}
