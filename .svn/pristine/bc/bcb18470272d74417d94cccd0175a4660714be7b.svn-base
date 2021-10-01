package com.vision.tek.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vision.tek.admin.dao.LoginDAO;
import com.vision.tek.admin.vo.AdminVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDAO loginDAO;
	
	public AdminVO selectAdminInfo(AdminVO vo) throws Exception {
		return loginDAO.selectAdminInfo(vo);
	}
}
