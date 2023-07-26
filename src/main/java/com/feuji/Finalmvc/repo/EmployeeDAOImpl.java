package com.feuji.Finalmvc.repo;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.feuji.Finalmvc.entity.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {
	
	@Autowired
	private SessionFactory bean;
	
	public void insertEmp(Employee employee) {
		Session currSession=bean.getCurrentSession();	
		currSession.saveOrUpdate(employee);
//		currSession.close();
		
	}
	public List<Employee> fetchData(){
		Session currSession=bean.getCurrentSession();	
		NativeQuery<Employee> nativeQuery= currSession.createNativeQuery("select * from employee_mvc", Employee.class);
		return nativeQuery.getResultList();
 		
	}
	
	public void deleteEmployee(int numberbean) {
		Session currSession=bean.getCurrentSession();	
		Employee employee=currSession.get(Employee.class, numberbean);
		currSession.delete(employee);		
	}
	public Employee updateEmployee(int id) {
		Session session=bean.getCurrentSession();
		Employee employee= session.get(Employee.class, id);
		return employee;
	}
	
}
