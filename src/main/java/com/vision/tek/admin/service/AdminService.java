package com.vision.tek.admin.service;

import java.util.List;
import java.util.Map;

import com.vision.tek.admin.vo.AdminVO;
import com.vision.tek.board.vo.BoardVO;
import com.vision.tek.board.vo.BrochureVO;
import com.vision.tek.board.vo.FileVO;
import com.vision.tek.board.vo.ItemVO;

public interface AdminService {

	List<AdminVO> selectAdminList(AdminVO adminVO) throws Exception;

	int selectAdminCnt(AdminVO adminVO) throws Exception;

	int checkAdminId(String adminId) throws Exception;

	void insertAdminInfo(AdminVO adminVO) throws Exception;

	AdminVO selectAdminInfo(AdminVO adminVO) throws Exception;

	void modifyAdminInfo(AdminVO adminVO) throws Exception;

	void deleteAdminInfo(String[] seqs) throws Exception;

	
	List<BoardVO> selectNoticeList(BoardVO boardVO) throws Exception;

	int selectNoticeCnt(BoardVO boardVO) throws Exception;

	void registerNotice(BoardVO boardVO, List<FileVO> fileList) throws Exception;

	BoardVO selectNotice(BoardVO boardVO) throws Exception;

	List<Map<String, String>> selectFileInfo(Map<String, String> fileInfoMap) throws Exception;

	void modifyNotice(BoardVO boardVO, List<FileVO> fileList) throws Exception;

	int deleteFile(String fileId) throws Exception;

	void deleteNotice(String[] seqs) throws Exception;

	FileVO selectDownFileInfo(String fileId) throws Exception;
	
	
	List<ItemVO> selectItemList(ItemVO itemVO) throws Exception;
	
	int selectItemCnt(ItemVO itemVO) throws Exception;
	
	void registerItem(ItemVO itemVO, List<FileVO> fileList) throws Exception;
	
	ItemVO selectItem(ItemVO itemVO) throws Exception;
	
	void modifyItem(ItemVO itemVO, List<FileVO> fileList) throws Exception;
	
	void deleteItem(String[] seqs) throws Exception;
	
	
	
	List<BrochureVO> selectBrochureList(BrochureVO brochureVO) throws Exception;

	int selectBrochureCnt(BrochureVO brochureVO) throws Exception;

	void registerBrochure(BrochureVO brochureVO, List<FileVO> fileList) throws Exception;

	BrochureVO selectBrochure(BrochureVO brochureVO) throws Exception;

	void modifyBrochure(BrochureVO brochureVO, List<FileVO> fileList) throws Exception;
}