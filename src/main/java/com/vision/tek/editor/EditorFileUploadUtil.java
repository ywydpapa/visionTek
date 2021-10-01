package com.vision.tek.editor;

import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.vision.tek.util.StringUtil;
import com.vision.tek.util.WebUtil;



public class EditorFileUploadUtil extends EditorFileUtil {
	
	/**
	 * 파일을 Upload 처리한다.
	 *
	 * @param request
	 * @param where
	 * @param maxFileSize
	 * @return
	 * @throws Exception
	 */
	public static List<EditorFileVO> uploadFiles(
			HttpServletRequest request, 
			String where, 
			long maxFileSize) throws Exception {
		
		List<EditorFileVO> list = new ArrayList<EditorFileVO>();

		MultipartHttpServletRequest mptRequest = (MultipartHttpServletRequest) request;
		Iterator<?> fileIter = mptRequest.getFileNames();

		while (fileIter.hasNext()) {
			MultipartFile mFile = mptRequest.getFile((String) fileIter.next());

			EditorFileVO vo = new EditorFileVO();

			String tmp = mFile.getOriginalFilename();
			if (tmp.lastIndexOf("\\") >= 0) {
				tmp = tmp.substring(tmp.lastIndexOf("\\") + 1);
			}

			vo.setFileName(tmp);
			vo.setContentType(mFile.getContentType());
			vo.setServerSubPath(StringUtil.getTodayString());
			vo.setPhysicalName(StringUtil.getPhysicalFileName());
			vo.setSize(mFile.getSize());
			if (tmp.lastIndexOf(".") >= 0) {
				vo.setPhysicalName(vo.getPhysicalName()); // 2012.11 KISA 보안조치
			}

			if (mFile.getSize() > 0) {
				InputStream is = null;

				try {
					is = mFile.getInputStream();
					saveFile(is, new File(WebUtil.filePathBlackList(where + SEPERATOR + vo.getServerSubPath()
									+ SEPERATOR + vo.getPhysicalName())));
				} finally {
					if (is != null) {
						is.close();
					}
				}
				list.add(vo);
			}
		}
		return list;
	}
}
