package com.vision.tek.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;


public class FileDownloadUtil {

	/**
     * 브라우저 구분 얻기.
     * 
     * @param request
     * @return
     */
    private String getBrowser(HttpServletRequest request) {
        String header = request.getHeader("User-Agent");
        if (header.indexOf("MSIE") > -1) {
            return "MSIE";
        } else if (header.indexOf("Chrome") > -1) {
            return "Chrome";
        } else if (header.indexOf("Opera") > -1) {
            return "Opera";
        } else if (header.indexOf("Trident") > -1) {	// IE11 문자열 깨짐 방지
        	return "Trident";
        }	
        return "Firefox";
    }
    
    /**
     * Disposition 지정하기.
     * 
     * @param filename
     * @param request
     * @param response
     * @throws Exception
     */
    private void setDisposition(String filename, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String browser = getBrowser(request);
		
		String dispositionPrefix = "attachment; filename=";
		String encodedFilename = null;
		
		if (browser.equals("MSIE")) {
		    encodedFilename = URLEncoder.encode(filename, "UTF-8").replaceAll("\\+", "%20");
		} else if (browser.equals("Trident")) {		// IE11 문자열 깨짐 방지
	    	encodedFilename = URLEncoder.encode(filename, "UTF-8").replaceAll("\\+", "%20");
		} else if (browser.equals("Firefox")) {
		    encodedFilename = "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
		} else if (browser.equals("Opera")) {
		    encodedFilename = "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
		} else if (browser.equals("Chrome")) {
		    StringBuffer sb = new StringBuffer();
		    for (int i = 0; i < filename.length(); i++) {
			char c = filename.charAt(i);
			if (c > '~') {
			    sb.append(URLEncoder.encode("" + c, "UTF-8"));
			} else {
			    sb.append(c);
			}
		    }
		    encodedFilename = sb.toString();
		} else {
		    //throw new RuntimeException("Not supported browser");
		    throw new IOException("Not supported browser");
		}
		
		response.setHeader("Content-Disposition", dispositionPrefix + encodedFilename);
	
		if ("Opera".equals(browser)){
		    response.setContentType("application/octet-stream;charset=UTF-8");
		}
	}
    
    /**
     * 파일을 다운로드 한다.
     * @param request
     * @param response
     * @param filePath
     * @param fileName
     * @param oriNm
     * @throws Exception
     */
    public void fileDown(
    		HttpServletRequest request, 
    		HttpServletResponse response,
    		String filePath, 
    		String fileName, 
    		String oriNm) throws Exception {
    	
    	File uFile = new File(filePath, fileName);
    	int fSize = (int)uFile.length();
	    
	    if (fSize > 0) {
			String mimetype = "application/x-msdownload";
			response.setContentType(mimetype);
			setDisposition(oriNm, request, response);
			
			response.setContentLength(fSize);
	
			BufferedInputStream in = null;
			BufferedOutputStream out = null;
	
			try {
			    in = new BufferedInputStream(new FileInputStream(uFile));
			    out = new BufferedOutputStream(response.getOutputStream());
	
			    FileCopyUtils.copy(in, out);
			    out.flush();
			} catch (Exception ex) {		    
				ex.printStackTrace();
			} finally {
			    if (in != null) {
					try {
					    in.close();
					} catch (Exception ignore) {
					  ignore.printStackTrace();
					}
			    }
			    if (out != null) {
					try {
					    out.close();
					} catch (Exception ignore) {
						 ignore.printStackTrace();
					}
			    }
			}
	    } else {
			printBack(response, "File not found");
			
	    }
	}
    
    private void printBack(HttpServletResponse response, String msg) throws IOException{
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
}
