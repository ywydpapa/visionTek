package com.vision.tek.util;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import com.vision.tek.admin.vo.AdminVO;

public class SessionUtil {

	private static String loginAdmin = "loginAdmin";

	public static Object get(String name) {
		return (Object) RequestContextHolder.getRequestAttributes().getAttribute(name, RequestAttributes.SCOPE_SESSION);
	}	
	
	public static Object get(HttpServletRequest request, String name) {
		return (Object) request.getSession().getAttribute(name);
	}

	public static void set(String name, Object value) {
		RequestContextHolder.getRequestAttributes().setAttribute(name, value,RequestAttributes.SCOPE_SESSION);
	}
	
	public static void set(HttpServletRequest request, String name, Object value){
		request.getSession().setAttribute(name, value);
	}
	
	public static void setLoginAdmin(AdminVO admin) {
		SessionUtil.set(loginAdmin, admin);
	}

	public static AdminVO getLoginAdmin() {
		return (AdminVO) SessionUtil.get(loginAdmin);
	}
	
	public static void remove(String name){
		RequestContextHolder.getRequestAttributes().removeAttribute(name, RequestAttributes.SCOPE_SESSION);
	}
	
	public static void remove(HttpServletRequest request, String name){
		request.getSession().removeAttribute(name);
	}
	
	public static void invalidate(HttpServletRequest request){
		request.getSession().invalidate();
	}
	
	public static void setLoginAdmin(HttpServletRequest request, AdminVO admin) {
		SessionUtil.set(request, loginAdmin, admin);
	}

	public static AdminVO getLoginAdmin(HttpServletRequest request) {
		return (AdminVO) SessionUtil.get(request, loginAdmin);
	}
}
