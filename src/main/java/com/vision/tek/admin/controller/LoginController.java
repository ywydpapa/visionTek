package com.vision.tek.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vision.tek.admin.service.LoginService;
import com.vision.tek.admin.vo.AdminVO;
import com.vision.tek.util.SessionUtil;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String longinPage() {
		
		return "/manager/login";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String onLogin(AdminVO adminVO, ModelMap map) throws Exception {
		System.out.println("로그인 합니다......");
		AdminVO vo = loginService.selectAdminInfo(adminVO);  
		
		String result = "N";
		if(vo != null)	{
			SessionUtil.setLoginAdmin(vo);
			result = "Y";
		}
		map.addAttribute("result", result);
				
		return "jsonView";
	}
	
	@RequestMapping(value = "/logout.do")
	public String onLogout() {
		
		if (SessionUtil.getLoginAdmin() != null) 
			SessionUtil.remove("loginAdmin");
		
		return "redirect:/login.do";
	}
}
