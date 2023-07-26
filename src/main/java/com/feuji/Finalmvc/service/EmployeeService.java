package com.feuji.Finalmvc.service;

import java.util.List;

import com.feuji.Finalmvc.entity.Employee;

public interface EmployeeService {
	public void insertEmp(Employee employee);
	public List<Employee> fetchData();
	public void deleteEmployee(int numberbean);
	public Employee updateEmployee(int id);
}
