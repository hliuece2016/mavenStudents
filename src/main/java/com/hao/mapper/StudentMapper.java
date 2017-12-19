package com.hao.mapper;

import java.util.List;

import com.hao.pojo.Student;

public interface StudentMapper {

	public void add(Student student);
	
	public void delete(int id);
	
	public Student getById(int id);
	
	public Student getByName(String name);
	
	public Student getPassword(String name);
	
	public void update(Student student);
	
	public List<Student> list();
	
}
