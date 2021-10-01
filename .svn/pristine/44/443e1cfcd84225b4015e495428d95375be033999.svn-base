package com.vision.tek.file;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vision.tek.admin.service.AdminService;
import com.vision.tek.board.vo.FileVO;
import com.vision.tek.util.FileDownloadUtil;

@Controller
public class FileDownloadController {

	private static Logger logger =  LoggerFactory.getLogger(FileDownloadController.class);

	@Autowired
	private AdminService adminService;

	/**
	 * 첨부파일로 등록된 파일에 대하여 다운로드를 제공한다.
	 * 
	 * @param commandMap
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value = "/common/FileDown.do")
	public void cvplFileDownload(
			HttpServletRequest request, 
			HttpServletResponse response,
			@RequestParam("fileId") String fileId) throws Exception {

		String fileName = "";
		String oriName = "";

		FileVO vo = adminService.selectDownFileInfo(fileId);
		fileName = vo.getRealFilename();
		oriName = vo.getOrgFilename();

		String storedPath = rtnGunbun(); // 구분 값으로 저장 경로를 받아온다.

		FileDownloadUtil util = new FileDownloadUtil();
		util.fileDown(request, response, storedPath, fileName, oriName);
	}
	
	
	/**
	 * 구분 값을 받아서 저장 경로를 반환한다.
	 * 
	 * @param gubun
	 * @return storedPath
	 */
	private String rtnGunbun() throws Exception {
		Properties props = new Properties();
		props.load(getClass().getClassLoader().getResourceAsStream("file.properties"));

		String storedPath = props.getProperty("fileupload.notice.target-directory");

		return storedPath;
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
}
