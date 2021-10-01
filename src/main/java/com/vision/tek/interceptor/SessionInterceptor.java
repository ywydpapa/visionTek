package com.vision.tek.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.vision.tek.admin.vo.AdminVO;
import com.vision.tek.util.SessionUtil;

public class SessionInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String contextPath = request.getContextPath();
		AdminVO adminVO = SessionUtil.getLoginAdmin();
		
		if(adminVO == null) {
			response.sendRedirect(contextPath + "/login.do");
			return false;
		} else {
			return true;
		}
	}
}