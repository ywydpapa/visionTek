package com.vision.tek.admin.service;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vision.tek.admin.dao.AdminDAO;
import com.vision.tek.admin.vo.AdminVO;
import com.vision.tek.board.vo.BoardVO;
import com.vision.tek.board.vo.BrochureVO;
import com.vision.tek.board.vo.FileVO;
import com.vision.tek.board.vo.ItemVO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDAO;
	

	public List<AdminVO> selectAdminList(AdminVO vo) throws Exception {
		return adminDAO.selectAdminList(vo);
	}

	public int selectAdminCnt(AdminVO vo) throws Exception {
		return adminDAO.selectAdminCnt(vo);
	}

	public int checkAdminId(String adminId) throws Exception {
		return adminDAO.checkAdminId(adminId);
	}
	
	public void insertAdminInfo(AdminVO vo) throws Exception {
		adminDAO.insertAdminInfo(vo);
	}


	public AdminVO selectAdminInfo(AdminVO vo) throws Exception {
		return adminDAO.selectAdminInfo(vo);
	}

	public void modifyAdminInfo(AdminVO vo) throws Exception {
		adminDAO.modifyAdminInfo(vo);
	}

	public void deleteAdminInfo(String[] seqs) throws Exception {
		adminDAO.deleteAdminInfo(seqs);
	}
	
	
	public List<BoardVO> selectNoticeList(BoardVO vo) throws Exception {
		return adminDAO.selectNoticeList(vo);
	}

	public int selectNoticeCnt(BoardVO vo) throws Exception {
		return adminDAO.selectNoticeCnt(vo);
	}

	public void registerNotice(BoardVO vo, List<FileVO> fileList) throws Exception {
		if(fileList.size() > 0) {
			vo.setHasAttachment("Y");
		}else {
			vo.setHasAttachment("N");
		}
		
		int boardId = adminDAO.registerNotice(vo);
		
		for(FileVO fileVO : fileList) {
			fileVO.setBoardSeq(Integer.valueOf(boardId));
			adminDAO.insertFileInfo(fileVO);
		}
	}

	public BoardVO selectNotice(BoardVO vo) throws Exception {
		return adminDAO.selectNotice(vo);
	}

	public List<Map<String, String>> selectFileInfo(Map<String, String> fileInfoMap) throws Exception {
		return adminDAO.selectFileInfo(fileInfoMap);
	}
	
	public void modifyNotice(BoardVO boardVO, List<FileVO> fileList) throws Exception {
		if(boardVO.getHasAttachmentGarbage().equals("Y")){
			boardVO.setHasAttachment(boardVO.getHasAttachmentGarbage());
		}else if(fileList.size() > 0){
			boardVO.setHasAttachment("Y");
		}else{
			boardVO.setHasAttachment("N");
		}
		adminDAO.modifyNotice(boardVO);
		
		for(FileVO fileVO : fileList) {
			fileVO.setBoardSeq(boardVO.getSeq());
			adminDAO.insertFileInfo(fileVO);
		}
	}

	public int deleteFile(String fileId) throws Exception {
		Properties props = new Properties();
		props.load(getClass().getClassLoader().getResourceAsStream("file.properties"));

		String storedPath = props.getProperty("fileupload.notice.target-directory");
		
		FileVO file = adminDAO.selectDownFileInfo(fileId);
		String filename = file.getRealFilename();
		
		File deleteFile = new File(storedPath, filename);
		deleteFile.delete();
		
		return adminDAO.deleteFile(fileId);
	}

	public void deleteNotice(String[] seqs) throws Exception {
		Properties props = new Properties();
		props.load(getClass().getClassLoader().getResourceAsStream("file.properties"));

		String storedPath = props.getProperty("fileupload.notice.target-directory");
		
		List<String> deleteFilenameList = adminDAO.selectBoardFilenameList(seqs);
		File deleteFile;
		
		for(String filename : deleteFilenameList) {
			deleteFile = new File(storedPath, filename);
			deleteFile.delete();
		}
		
		adminDAO.deleteNotice(seqs);
		adminDAO.deleteNoticeFiles(seqs);
	}

	public FileVO selectDownFileInfo(String fileId) throws Exception {
		return adminDAO.selectDownFileInfo(fileId);
	}

	@Override
	public List<ItemVO> selectItemList(ItemVO vo) throws Exception {
		return adminDAO.selectItemList(vo);
	}

	@Override
	public int selectItemCnt(ItemVO vo) throws Exception {
		return adminDAO.selectItemCnt(vo);
	}

	@Override
	public void registerItem(ItemVO vo, List<FileVO> fileList) throws Exception {
		if(fileList.size() > 0) {
		vo.setHasAttachment("Y");
	}else {
		vo.setHasAttachment("N");
	}
	
	int photoId = adminDAO.registerItem(vo);
	
	for(FileVO fileVO : fileList) {
		fileVO.setBoardSeq(Integer.valueOf(photoId));
		adminDAO.insertFileInfo(fileVO);
	}
}
	@Override
	public ItemVO selectItem(ItemVO vo) throws Exception {
		return adminDAO.selectItem(vo);
	}

	@Override
	public void modifyItem(ItemVO itemVO, List<FileVO> fileList) throws Exception {
		if(fileList.size() > 0) {
			itemVO.setHasAttachment("Y");
		}else {
			itemVO.setHasAttachment("N");
		}
		
		adminDAO.modifyItem(itemVO);
		
		for(FileVO fileVO : fileList) {
			fileVO.setBoardSeq(itemVO.getSeq());
			adminDAO.insertFileInfo(fileVO);
		}
	}

	@Override
	public void deleteItem(String[] seqs) throws Exception {
		Properties props = new Properties();
		props.load(getClass().getClassLoader().getResourceAsStream("file.properties"));

		String storedPath = props.getProperty("fileupload.notice.target-directory");
		
		List<String> deleteFilenameList = adminDAO.selectBoardFilenameList(seqs);
		File deleteFile;
		
		for(String filename : deleteFilenameList) {
			deleteFile = new File(storedPath, filename);
			deleteFile.delete();
		}
		
		adminDAO.deleteItem(seqs);
		adminDAO.deleteNoticeFiles(seqs);
	}

	@Override
	public List<BrochureVO> selectBrochureList(BrochureVO vo) throws Exception {
		return adminDAO.selectBrochureList(vo);
	}

	@Override
	public int selectBrochureCnt(BrochureVO vo) throws Exception {
		return adminDAO.selectBrochureCnt(vo);
	}

	@Override
	public void registerBrochure(BrochureVO vo, List<FileVO> fileList) throws Exception {
		if(fileList.size() > 0) {
			vo.setHasAttachment("Y");
		}else {
			vo.setHasAttachment("N");
		}
		
		int boardId = adminDAO.registerBrochure(vo);
		
		for(FileVO fileVO : fileList) {
			fileVO.setBoardSeq(Integer.valueOf(boardId));
			adminDAO.insertFileInfo(fileVO);
		}
	}

	@Override
	public BrochureVO selectBrochure(BrochureVO vo) throws Exception {
		return adminDAO.selectBrochure(vo);
	}

	@Override
	public void modifyBrochure(BrochureVO brochureVO, List<FileVO> fileList) throws Exception {
		if(brochureVO.getHasAttachmentGarbage().equals("Y")){
			brochureVO.setHasAttachment(brochureVO.getHasAttachmentGarbage());
		}else if(fileList.size() > 0){
			brochureVO.setHasAttachment("Y");
		}else{
			brochureVO.setHasAttachment("N");
		}
		adminDAO.modifyBrochure(brochureVO);
		
		for(FileVO fileVO : fileList) {
			fileVO.setBoardSeq(brochureVO.getSeq());
			adminDAO.insertFileInfo(fileVO);
		}
	}
	
	
	
}