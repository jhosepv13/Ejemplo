package com.tecsup.gestion.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tecsup.gestion.dao.AdminDAO;
import com.tecsup.gestion.dao.EmployeeDAO;
import com.tecsup.gestion.exception.DAOException;
import com.tecsup.gestion.exception.LoginException;
import com.tecsup.gestion.model.Admin;
import com.tecsup.gestion.model.Employee;

@Service
public class SecurityServiceImpl implements SecurityService {

	@Autowired
	private EmployeeDAO employeeDAO;
	
	@Autowired
	private AdminDAO adminDAO;

	@Override
	public Employee validate(String login, String password) throws LoginException, DAOException {

		Employee emp = employeeDAO.validate(login, password);

		return emp;
	}

	@Override
	public Admin validate1(String user, String pass) throws LoginException, DAOException {
		Admin adm = adminDAO.validate1(user, pass);
		
		return adm;
	}

}
