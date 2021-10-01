package com.vision.tek.util;

import java.io.File;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StringUtil {

	/**
     * 오늘 날짜 문자열 취득.
     * ex) 2017-01-01
     * @return
     */
    public static String getTodayString() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
	
		return format.format(new Date());
    }
    
	/**
     * 클라이언트의 IP를 반환한다.
     * @param request
     * @return clientIp
     */
    public static String getClientIp(HttpServletRequest request) {
    	String clientIp ="";
 
    	clientIp =request.getHeader("X-Forwarded-For");
 
    	if(clientIp == null || clientIp.length() ==0 || "unknown".equalsIgnoreCase(clientIp)){
    		clientIp = request.getHeader("Proxy-Client-IP");    		 
    	}
    	
    	if(clientIp == null || clientIp.length() ==0 || "unknown".equalsIgnoreCase(clientIp)){
    		clientIp = request.getHeader("WL-Proxy-Client-IP");    		 
    	}
    	
    	if(clientIp == null || clientIp.length() ==0 || "unknown".equalsIgnoreCase(clientIp)){
    		clientIp = request.getHeader("HTTP_CLIENT_IP");    		 
    	}
    	
    	if(clientIp == null || clientIp.length() ==0 || "unknown".equalsIgnoreCase(clientIp)){
    		clientIp = request.getHeader("HTTP_X_FORWARDER_FOR");    		 
    	}
    	
    	if(clientIp == null || clientIp.length() ==0 || "unknown".equalsIgnoreCase(clientIp)){
    		clientIp = request.getRemoteAddr();    		 
    	}
    	
    	return clientIp;
    }
    
    /**
     * String 배열에서 해당 값이 존재여부를 반환한다.
     * @param String[], targetValue
     * @return boolean
     */
    public static boolean findValueToArray(String[] arr, String targetValue) {
    	return Arrays.asList(arr).contains(targetValue);
    }
    
    public static String getUrlEncoding(String value) throws UnsupportedEncodingException {
	    return URLEncoder.encode(value, "UTF-8");
	}
	
	public static String getUrlDecoding(String value) throws UnsupportedEncodingException {
		if("".equals(value) || value == null) return "";
	    return URLDecoder.decode(value, "UTF-8");
	}
	
	public static String getUUID(){
		UUID uid = UUID.randomUUID();
		return uid.toString().toUpperCase();
	}
	
	/**
     * 물리적 파일명 생성.
     * @return
     */
    public static String getPhysicalFileName() {
    	return UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
    }
    
    public static String convert(String filename) throws Exception {
		//return java.net.URLEncoder.encode(filename, "utf-8");
		return filename;
    }
    
    
    public static String convertHtml(String value) {
		if (value == null || "".equals(value)) return "";


		value = value.replaceAll("&amp;", "&");
		value = value.replaceAll("&lt;", "<");
		value = value.replaceAll("&gt;", ">");
		value = value.replaceAll("&quot;", "\"");
		value = value.replaceAll("&apos;", "\'");
		return value;
	}
    
    public static void deleteFile(String filePath){
    	File file = new File(filePath);
    	if(file.exists()){
    		file.delete();
    	}
    }
    
    public static void viewMsg(String msg, HttpServletResponse response) throws Exception{
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter printwriter = response.getWriter();
		printwriter.println("<html>");
		printwriter.println("<head>");
		printwriter.println("<script type='text/javascript'>alert('"+msg+"'); history.back(-1);</script>");
		printwriter.println("</head>");
		printwriter.println("</html>");
		printwriter.flush();
		printwriter.close();
    }
    
    public static void viewMsgUrl(String msg, String url, HttpServletResponse response) throws Exception{
    	PrintWriter printwriter = response.getWriter();
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		printwriter.println("<html>");
		printwriter.println("<head>");
		printwriter.println("<script type='text/javascript'>alert('"+msg+"'); window.location.href='"+url+"';</script>");
		printwriter.println("</head>");
		printwriter.println("</html>");
		printwriter.flush();
		printwriter.close();
    }
}