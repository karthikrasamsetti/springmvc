package com.feuji.Finalmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.feuji.Finalmvc.entity.Employee;
import com.feuji.Finalmvc.repo.EmployeeDAO;
@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	private EmployeeDAO dao;

	@Override
	public void insertEmp(Employee employee) {
	dao.insertEmp(employee);	

	}

	@Override
	public List<Employee> fetchData() {
		
		return dao.fetchData();
	}

	@Override
	public void deleteEmployee(int numberbean) {
		
		dao.deleteEmployee(numberbean);
	}

	@Override
	public Employee updateEmployee(int id) {
	
		return dao.updateEmployee(id);
	}

}
