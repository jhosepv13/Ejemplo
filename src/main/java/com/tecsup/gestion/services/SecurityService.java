package com.tecsup.gestion.services;

import com.tecsup.gestion.exception.DAOException;
import com.tecsup.gestion.exception.LoginException;
import com.tecsup.gestion.model.Admin;
import com.tecsup.gestion.model.Employee;

public interface SecurityService {

	Employee validate(String idEmployee, String clave) throws LoginException, DAOException;
	
	Admin validate1(String user, String pass) throws LoginException, DAOException;

}
