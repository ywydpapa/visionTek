package com.vision.tek.editor;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;
import org.apache.log4j.Logger;

import com.vision.tek.util.StringUtil;
import com.vision.tek.util.WebUtil;



public class EditorFileUtil {
	
	/** Buffer size */
	public static final int BUFFER_SIZE = 8192;

	public static final String SEPERATOR = File.separator;

	private static final Logger log = Logger.getLogger(EditorFileUtil.class.getName());

	/**
	 * Stream으로부터 파일을 저장함.
	 * 
	 * @param is
	 *            InputStream
	 * @param file
	 *            File
	 * @throws IOException
	 */
	public static long saveFile(InputStream is, File file) throws IOException {
		// 디렉토리 생성
		if (!file.getParentFile().exists()) {
			file.getParentFile().mkdirs();
		}

		OutputStream os = null;
		long size = 0L;

		try {
			os = new FileOutputStream(file);

			int bytesRead = 0;
			byte[] buffer = new byte[BUFFER_SIZE];

			while ((bytesRead = is.read(buffer, 0, BUFFER_SIZE)) != -1) {
				size += bytesRead;
				os.write(buffer, 0, bytesRead);
			}
		} finally {
			if (os != null) {
				os.close();
			}
		}

		return size;
	}

	/**
	 * Stream으로부터 파일을 저장함.
	 * 
	 * @param is
	 *            InputStream
	 * @param file
	 *            File
	 * @throws IOException
	 */
	public static EditorFileVO saveFile(InputStream is, String fileName,
			String mineType, String uploadUrl) throws IllegalStateException, IOException {

		// lombok(@data) 사용시 EditorFileVO 생성 에러
		EditorFileVO vo = new EditorFileVO();

		String tmp = "";
		if (fileName.lastIndexOf("\\") >= 0)
			tmp = fileName.substring(tmp.lastIndexOf("\\") + 1);

		vo.setFileName(tmp);
		vo.setContentType(mineType);
		vo.setServerSubPath(StringUtil.getTodayString());
		vo.setPhysicalName(StringUtil.getPhysicalFileName());
		
		String filePath = WebUtil.filePathBlackList(uploadUrl + vo.getServerSubPath()  + "/" + vo.getPhysicalName());
		vo.setFilePath(filePath);
		
		if (tmp.lastIndexOf(".") >= 0)
			vo.setPhysicalName(vo.getPhysicalName()); // 2012.11 KISA 보안조치

		OutputStream os = null;
		long size = 0L;
		
		// 디렉토리 생성
		File file = new File(filePath);
		if (!file.getParentFile().exists()) {
			file.getParentFile().mkdirs();
		}
		try {
			os = new FileOutputStream(file);

			int bytesRead = 0;
			byte[] buffer = new byte[BUFFER_SIZE];

			while ((bytesRead = is.read(buffer, 0, BUFFER_SIZE)) != -1) {
				size += bytesRead;
				os.write(buffer, 0, bytesRead);
			}
		} finally {
			if (os != null) {
				os.close();
			}
		}

		return vo;
	}

	/**
	 * 파일을 Upload 처리한다.
	 *
	 * @param request
	 * @param where
	 * @param maxFileSize
	 * @return
	 * @throws Exception
	 */
	public static List<EditorFileVO> uploadFiles(HttpServletRequest request,
			String where, long maxFileSize) throws Exception {
		List<EditorFileVO> list = new ArrayList<EditorFileVO>();

		// Check that we have a file upload request
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);

		if (isMultipart) {
			// Create a new file upload handler
			ServletFileUpload upload = new ServletFileUpload();
			upload.setFileSizeMax(maxFileSize); // SizeLimitExceededException

			// Parse the request
			FileItemIterator iter = upload.getItemIterator(request);
			while (iter.hasNext()) {
				FileItemStream item = iter.next();
				String name = item.getFieldName();
				InputStream stream = item.openStream();
				if (item.isFormField()) {
					Logger.getLogger(EditorFileUtil.class).info(
							"Form field '" + name + "' with value '" + Streams.asString(stream) + "' detected.");
				} else {
					Logger.getLogger(EditorFileUtil.class).info(
							"File field '" + name + "' with file name '" + item.getName() + "' detected.");

					if ("".equals(item.getName())) {
						continue;
					}

					// Process the input stream
					EditorFileVO vo = new EditorFileVO();

					String tmp = item.getName();

					if (tmp.lastIndexOf("\\") >= 0) {
						tmp = tmp.substring(tmp.lastIndexOf("\\") + 1);
					}

					vo.setFileName(tmp);
					vo.setContentType(item.getContentType());
					vo.setServerSubPath(StringUtil.getTodayString());
					vo.setPhysicalName(StringUtil.getPhysicalFileName());

					if (tmp.lastIndexOf(".") >= 0) {
						vo.setPhysicalName(vo.getPhysicalName()
								+ tmp.substring(tmp.lastIndexOf(".")));
					}

					long size = saveFile(stream,
							new File(WebUtil.filePathBlackList(where)
									+ SEPERATOR + vo.getServerSubPath()
									+ SEPERATOR + vo.getPhysicalName()));

					vo.setSize(size);

					list.add(vo);
				}
			}
		} else {
			throw new IOException(
					"form's 'enctype' attribute have to be 'multipart/form-data'");
		}

		return list;
	}

	/**
	 * 파일을 Download 처리한다.
	 *
	 * @param response
	 * @param where
	 * @param serverSubPath
	 * @param physicalName
	 * @param original
	 * @throws Exception
	 */
	public static void downloadFile(HttpServletResponse response, String where,
			String serverSubPath, String physicalName, String original)
			throws Exception {
		
		String downFileName = where + SEPERATOR + serverSubPath + SEPERATOR
				+ physicalName;

		File file = new File(WebUtil.filePathBlackList(downFileName));

		if (!file.exists()) {
			throw new FileNotFoundException(downFileName);
		}

		if (!file.isFile()) {
			throw new FileNotFoundException(downFileName);
		}

		byte[] b = new byte[BUFFER_SIZE];

		original = original.replaceAll("\r", "").replaceAll("\n", "");
		response.setContentType("application/octet-stream");
		response.setHeader("Content-Disposition", "attachment; filename=\"" + StringUtil.convert(original) + "\";");
		response.setHeader("Content-Transfer-Encoding", "binary");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");

		BufferedInputStream fin = null;
		BufferedOutputStream outs = null;

		try {
			fin = new BufferedInputStream(new FileInputStream(file));
			outs = new BufferedOutputStream(response.getOutputStream());

			int read = 0;

			while ((read = fin.read(b)) != -1) {
				outs.write(b, 0, read);
			}
		} finally {
			if (outs != null) {
				try { // 2012.11 KISA 보안조치
					outs.close();
				} catch (Exception ignore) {
					log.debug("IGNORE: " + ignore.getMessage());
				}
			}

			if (fin != null) {
				try { // 2012.11 KISA 보안조치
					fin.close();
				} catch (Exception ignore) {
					log.debug("IGNORE: " + ignore.getMessage());
				}
			}
		}
	}

	/**
	 * 이미지에 대한 미리보기 기능을 제공한다.
	 *
	 * mimeType의 경우는 JSP 상에서 다음과 같이 얻을 수 있다.
	 * getServletConfig().getServletContext().getMimeType(name);
	 *
	 * @param response
	 * @param where
	 * @param serverSubPath
	 * @param physicalName
	 * @param mimeType
	 * @throws Exception
	 */
	public static void viewFile(HttpServletResponse response, String where,
			String serverSubPath, String physicalName, String mimeTypeParam)
			throws Exception {
		String mimeType = mimeTypeParam;
		String downFileName = where + SEPERATOR + serverSubPath + SEPERATOR + physicalName;

		File file = new File(WebUtil.filePathBlackList(downFileName));

		if (!file.exists()) {
			throw new FileNotFoundException(downFileName);
		}

		if (!file.isFile()) {
			throw new FileNotFoundException(downFileName);
		}

		byte[] b = new byte[BUFFER_SIZE];

		if (mimeType == null) {
			mimeType = "application/octet-stream;";
		}

		response.setContentType(WebUtil.removeCRLF(mimeType));
		response.setHeader("Content-Disposition", "filename=image;");

		BufferedInputStream fin = null;
		BufferedOutputStream outs = null;

		try {
			fin = new BufferedInputStream(new FileInputStream(file));
			outs = new BufferedOutputStream(response.getOutputStream());

			int read = 0;

			while ((read = fin.read(b)) != -1) {
				outs.write(b, 0, read);
			}
		} catch (Exception e) {

			if (!e.getClass()
					.getName()
					.equals("org.apache.catalina.connector.ClientAbortException")) {

			};

		} finally {
			if (outs != null) {
				try {
					outs.close();
				} catch (Exception ignore) {
					log.debug("IGNORE: " + ignore.getMessage());

				}
			}
			if (fin != null) {
				try {
					fin.close();
				} catch (Exception ignore) {
					log.debug("IGNORE: " + ignore.getMessage());
				}
			}
		}
	}
}
