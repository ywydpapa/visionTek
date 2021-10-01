package com.vision.tek.admin.service;

import com.vision.tek.admin.vo.AdminVO;

public interface LoginService {

	AdminVO selectAdminInfo(AdminVO adminVO) throws Exception;

}