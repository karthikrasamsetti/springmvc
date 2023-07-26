package com.feuji.Finalmvc.repo;

import java.util.List;

import com.feuji.Finalmvc.entity.Employee;

public interface EmployeeDAO {
	public void insertEmp(Employee employee);
	public List<Employee> fetchData();
	public void deleteEmployee(int numberbean);
	public Employee updateEmployee(int id);
}
