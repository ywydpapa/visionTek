package com.vision.tek.file;

import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.vision.tek.board.vo.FileVO;
import com.vision.tek.util.WebUtil;

@Component("FileManagerUtils")
public class FileManagerUtils {
	
	private static final Logger LOG = Logger.getLogger(FileManagerUtils.class.getName());
	
	/**
     * 첨부파일에 대한 목록 정보를 취득한다.
     *
     * @param files
     * @return
     * @throws Exception
     */
	 public List<FileVO> parseFileInfoApi(Map<String, MultipartFile> files, String folder) throws Exception {
			String storedPath = "";
			storedPath = rtnGunbun();		// 구분 값으로 파일 저장 경로를 선택한다.
			
			File saveFolder = new File(WebUtil.filePathBlackList(storedPath));
			if (!saveFolder.exists() || saveFolder.isFile()) {			
			    saveFolder.mkdirs();											// 파일을 저장할 폴더가 없을 경우 생성.
			}
			
			Iterator<Entry<String, MultipartFile>> itr = files.entrySet().iterator();
			MultipartFile file;
			List<FileVO> result  = new ArrayList<FileVO>();
			FileVO fvo;
			
			while (itr.hasNext()) {
			    Entry<String, MultipartFile> entry = itr.next();
		
			    file = entry.getValue();
			    String orginFileName = file.getOriginalFilename();
			    String fileName = file.getName();
		
			    // 원 파일명이 없는 경우 처리(첨부가 되지 않은 input file type)
			    if ("".equals(orginFileName)) {
			    	continue;
			    }
			    
			    String newName = getTimeStamp() + "_" + orginFileName;		// 파일의 새로운 이름을 현재 시간 + 원 파일 명의 형식으로 생성.
			    String thumbName = "s_" + newName;							// 섬네일은 새로은 파일 명에 s_ 를 붙인다.
			    
			    String fileExt = rtnExtension(orginFileName);				// 파일의 확장자 명을 취득한다.
			    
			    String filePath = "";
			    String thumbFilePath = "";
			    
			    long fileSize = file.getSize();
			    
			    if (!"".equals(orginFileName)) {
			    	filePath = storedPath + File.separator + newName;
			    	file.transferTo(new File(WebUtil.filePathBlackList(filePath)));
			    	
			    	// 업로드 할 파일이 이미지 파일일 경우 Thumbnailator로 이미지를 변환한다.
//			    	if(checkExtension(fileExt)) {
//				    	thumbFilePath = storedPath + File.separator + thumbName;
//						Thumbnails.of(filePath).size(160, 160).toFile(thumbFilePath);
//			    	}
			    	
					fvo = new FileVO();
					fvo.setFilePath(filePath);
					fvo.setFileSize(fileSize);
				    fvo.setOrgFilename(orginFileName);
				    fvo.setRealFilename(newName);
				    
				    result.add(fvo);
			    }
			}

			return result;
	    }
	 
	 /**
      * 구분 값을 받아서 저장 경로를 반환한다.
      * @param gubun
      * @return storedPathString
      */
	 private String rtnGunbun() throws Exception {
	    	Properties props = new Properties();
			props.load(getClass().getClassLoader().getResourceAsStream("file.properties"));
			
			String storedPath = props.getProperty("fileupload.notice.target-directory");
			
			return storedPath;
	    }
	 
	 /**
	  * 확장자를 체크하여 이미지 파일인지 구분한다.
	  * @param extention
	  * @return true or false
	  */
	 private boolean checkExtension (String extention) {
		 return (extention.equals("jpg") || extention.equals("jpeg") || extention.equals("gif") || extention.equals("png") || extention.equals("bmp")) ? true : false;
	 }
	 
	 /**
	  * 파일명에서 확장자를 추출하여 반환한다.
	  * @param fileName
	  * @return
	  */
	 private String rtnExtension(String fileName) {
		 int index = fileName.lastIndexOf(".");
		 String fileExt = fileName.substring(index + 1);
		 return fileExt;
	 }
	 
	/**
     * 공통 컴포넌트 utl.fcc 패키지와 Dependency제거를 위해 내부 메서드로 추가 정의함
     * 응용어플리케이션에서 고유값을 사용하기 위해 시스템에서17자리의TIMESTAMP값을 구하는 기능
     *
     * @param
     * @return Timestamp 값
     * @exception MyException
     * @see
     */
    private static String getTimeStamp() {
		String rtnStr = null;
	
		// 문자열로 변환하기 위한 패턴 설정(년도-월-일 시:분:초:초(자정이후 초))
		String pattern = "yyyyMMddhhmmssSSS";
	
		try {
		    SimpleDateFormat sdfCurrent = new SimpleDateFormat(pattern, Locale.KOREA);
		    Timestamp ts = new Timestamp(System.currentTimeMillis());
	
		    rtnStr = sdfCurrent.format(ts.getTime());
		} catch (Exception e) {	    
		    LOG.debug("IGNORED: " + e.getMessage());
		}
	
		return rtnStr;
    }
}
