package com.vision.tek.editor;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.vision.tek.board.vo.FileVO;



@Controller
public class WebEditorImageController {
	
	/** 첨부 최대 파일 크기 지정 */
    private final long maxFileSize = 1024 * 1024 * 100;
    
    @RequestMapping(value="/editor/insertImage.do", method=RequestMethod.POST)
    public void imageUpload(
    		HttpServletRequest request, 
    		HttpServletResponse response,
    		ModelAndView mv) throws Exception {
    	
    	Properties props = new Properties();
    	props.load(getClass().getClassLoader().getResourceAsStream("file.properties"));
    	
    	// 첨부파일 위치 지정
    	String uploadDir = props.getProperty("fileupload.editor.target-directory");
    	
    	// Spring multipartResolver 사용시
		List<EditorFileVO> list = EditorFileUploadUtil.uploadFiles(request, uploadDir, maxFileSize);
    
		// 콜백 
		String callback = "";
		String callbackFunc = "";
		Enumeration<?> value = request.getParameterNames(); 
		
	    while(value.hasMoreElements()) {
	        String name = (String)value.nextElement(); 
	        
	        if(name.equals("callback"))
	        	callback = request.getParameter(name);
	        else if(name.equals("callback_func")) 
	        	callbackFunc = request.getParameter(name);
	    }

		String url = "";
		String fileName = "";
		if (list.size() > 0) {
		    EditorFileVO vo = list.get(0);	// 첫번째 이미지
	
		    url = request.getContextPath() + "/editor/" + vo.getServerSubPath() + "/" + vo.getPhysicalName()
		    							   + "/" + vo.getContentType() + "/imageSrc.do";
		    fileName = vo.getFileName();
		}
		
		response.sendRedirect(callback + "?callback_func=" + callbackFunc + "&bNewLine=true&sFileName=" + fileName + "&sFileURL=" + url);
    }
    
    // 단일 이미지 업로드 처리 및 콜백
    @RequestMapping(value="/editor/insertMultiImage.do", method=RequestMethod.POST)
    public void insertMultiImage(
    		HttpServletRequest request, 
    		HttpServletResponse response, 
    		HttpSession session,
    		Model model) throws Exception {
    	
    	// 첨부파일 위치 지정
    	Properties props = new Properties();
    	props.load(getClass().getClassLoader().getResourceAsStream("file.properties"));
    	String uploadDir = props.getProperty("fileupload.editor.target-directory");
        	
		EditorFileVO vo = EditorFileUtil.saveFile(request.getInputStream(), request.getHeader("file-name"), request.getHeader("file-type"), uploadDir);
		
		String filePath = vo.getFilePath();
		String fileName = vo.getFileName();
		String physical = vo.getPhysicalName();
		String contentType = vo.getContentType();
		String path = vo.getServerSubPath();
		
		// 이미지 뷰 실행 경로
		String url = request.getContextPath() + "/editor/" + path + "/" + physical + "/" + contentType + "/imageSrc.do";
		
		PrintWriter out = response.getWriter(); 
		out.append("&bNewLine=true&sFileName=" + fileName + "&sFileURL=" + url);
		
		out.flush();
		out.close();
		
		List<EditorFileVO> editorFileList;
		
		if(session.getAttribute("editorFileList") != null) {
			editorFileList = (List<EditorFileVO>) session.getAttribute("editorFileList");
		}else {
			editorFileList = new ArrayList<EditorFileVO>();
		}
		
		editorFileList.add(vo);
		
		session.setAttribute("editorFileList", editorFileList);
    }
    
    // html 지원 브라우저 스마트웹 에디터 콜백
    @RequestMapping(value =  "/editor/insertMultiCallback.do")
 	public void insertMultiCallback(
 			@RequestHeader(value = "file-name")String fileName,
 			@RequestParam(value = "physical")String physical,
 			@RequestParam(value = "contentType")String contentType,
 			@RequestParam(value = "path")String path,
 			HttpServletRequest request,
 			HttpServletResponse response) throws Exception {

     	String url = request.getContextPath() + "/editor/" + path + "/" + physical + "/imageSrc.do";
     	
 		PrintWriter out = response.getWriter(); 
 		out.append("&bNewLine=true&sFileName=" + fileName + "&sFileURL=" + url);
 		out.flush();
 		out.close();
 	}
    
    //이미지 뷰 
    @RequestMapping(value="/editor/{path}/{physical}/{mine1}/{mine2}/imageSrc.do", method=RequestMethod.GET)
    public void download(HttpServletRequest request, 
			    		@PathVariable String path,
			    		@PathVariable String physical,
			    		@PathVariable String mine1,
			    		@PathVariable String mine2,
			    		HttpSession session,
			    		HttpServletResponse response) throws Exception {
    	
    	Properties props = new Properties();
    	props.load(getClass().getClassLoader().getResourceAsStream("file.properties"));
    	
    	String uploadDir = props.getProperty("fileupload.editor.target-directory");
    	
    	String contentType = mine1 +"/"+ mine2;
		EditorFileUtil.viewFile(response, uploadDir, path, physical, contentType);
		
		
    }
}
