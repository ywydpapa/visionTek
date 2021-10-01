package com.vision.tek.admin.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vision.tek.admin.vo.AdminVO;
import com.vision.tek.board.vo.BoardVO;
import com.vision.tek.board.vo.BrochureVO;
import com.vision.tek.board.vo.FileVO;
import com.vision.tek.board.vo.ItemVO;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private final String ADMIN_NAMESPACE = "adminDAO.";
	private final String BOARD_NAMESPACE = "boardDAO.";
	
	/******************************************************************************
	 *  								기타 관리								  *
	 ******************************************************************************/
	public List<AdminVO> selectAdminList(AdminVO vo) throws SQLException {
		return sqlSession.selectList(ADMIN_NAMESPACE + "selectAdminList", vo);
	}

	public int selectAdminCnt(AdminVO vo) throws SQLException {
		return sqlSession.selectOne(ADMIN_NAMESPACE + "selectAdminCnt", vo);
	}

	public int checkAdminId(String adminId) throws SQLException {
		return sqlSession.selectOne(ADMIN_NAMESPACE + "checkAdminId", adminId);
	}
	
	public void findAccount(String adminId) throws SQLException {
		sqlSession.update(ADMIN_NAMESPACE + "findAccount", adminId);
	}
	
	public AdminVO selectFindResult(AdminVO adminVO) {
		AdminVO admin = sqlSession.selectOne(ADMIN_NAMESPACE + "selectFindResult", adminVO);
		
		return admin;
	}

	public void insertAdminInfo(AdminVO vo) throws SQLException {
		sqlSession.insert(ADMIN_NAMESPACE + "insertAdminInfo", vo);
	}

	public AdminVO selectAdminInfo(AdminVO vo) throws SQLException {
		return sqlSession.selectOne(ADMIN_NAMESPACE + "selectAdminInfo", vo);
	}

	public void modifyAdminInfo(AdminVO vo) throws SQLException {
		sqlSession.update(ADMIN_NAMESPACE + "modifyAdminInfo", vo);
	}

	public void deleteAdminInfo(String[] seqs) throws SQLException {
		sqlSession.delete(ADMIN_NAMESPACE + "deleteAdminInfo", seqs);
	}
	
	
	/******************************************************************************
	 *  								게시판 관리								  *
	 ******************************************************************************/
	public List<BoardVO> selectNoticeList(BoardVO vo) throws SQLException {
		return sqlSession.selectList(BOARD_NAMESPACE + "selectNoticeList", vo);
	}

	public int selectNoticeCnt(BoardVO vo) throws SQLException {
		return sqlSession.selectOne(BOARD_NAMESPACE + "selectNoticeCnt", vo);
	}

	public int registerNotice(BoardVO vo) throws SQLException {
		sqlSession.insert(BOARD_NAMESPACE + "registerNotice", vo);
		return vo.getSeq();
	}

	public void insertFileInfo(FileVO vo) throws SQLException {
		sqlSession.insert(BOARD_NAMESPACE + "insertFileInfo", vo);
	}

	public BoardVO selectNotice(BoardVO vo) throws SQLException {
		return sqlSession.selectOne(BOARD_NAMESPACE + "selectNotice", vo);
	}

	public List<Map<String, String>> selectFileInfo(Map<String, String> fileInfoMap) throws SQLException {
		return sqlSession.selectList(BOARD_NAMESPACE + "selectFileInfo", fileInfoMap);
	}

	public void modifyNotice(BoardVO vo) throws SQLException {
		sqlSession.update(BOARD_NAMESPACE + "modifyNotice", vo);
	}

	public int deleteFile(String fileId) throws SQLException {
		return sqlSession.delete(BOARD_NAMESPACE + "deleteFile", fileId);
	}

	public void deleteNotice(String[] seqs) throws SQLException {
		sqlSession.delete(BOARD_NAMESPACE + "deleteNotice", seqs);
	}
	
	public void deleteNoticeFiles(String[] seqs) {
		sqlSession.delete(BOARD_NAMESPACE + "deleteNoticeFiles", seqs);
	}
	
	public List<String> selectBoardFilenameList(String[] seqs) {
		return sqlSession.selectList(BOARD_NAMESPACE + "selectBoardFilenameList", seqs);
	}

	public FileVO selectDownFileInfo(String fileId) throws SQLException {
		return sqlSession.selectOne(BOARD_NAMESPACE + "selectDownFileInfo", fileId);
	}
	
	public List<ItemVO> selectItemList(ItemVO vo) throws SQLException {
		return sqlSession.selectList(BOARD_NAMESPACE + "selectItemList", vo);
	}
	
	public int selectItemCnt(ItemVO vo) throws SQLException {
		return sqlSession.selectOne(BOARD_NAMESPACE + "selectItemCnt", vo);
	}
	
	public int registerItem(ItemVO vo) throws SQLException {
		sqlSession.insert(BOARD_NAMESPACE + "registerItem", vo);
		return vo.getSeq();
	}
	
	public ItemVO selectItem(ItemVO vo) throws SQLException {
		return sqlSession.selectOne(BOARD_NAMESPACE + "selectItem", vo);
	}
	
	public void modifyItem(ItemVO vo) throws SQLException {
		sqlSession.update(BOARD_NAMESPACE + "modifyItem", vo);
	}
	
	public void deleteItem(String[] seqs) throws SQLException {
		sqlSession.delete(BOARD_NAMESPACE + "deleteItem", seqs);
	}
	
	public void deleteItemFiles(String[] seqs) {
		sqlSession.delete(BOARD_NAMESPACE + "deleteItemFiles", seqs);
	}

	
	
	public List<BrochureVO> selectBrochureList(BrochureVO vo) throws SQLException {
		return sqlSession.selectList(BOARD_NAMESPACE + "selectBrochureList", vo);
	}

	public int selectBrochureCnt(BrochureVO vo) throws SQLException {
		return sqlSession.selectOne(BOARD_NAMESPACE + "selectBrochureCnt", vo);
	}

	public int registerBrochure(BrochureVO vo) throws SQLException {
		sqlSession.insert(BOARD_NAMESPACE + "registerBrochure", vo);
		return vo.getSeq();
	}

	public BrochureVO selectBrochure(BrochureVO vo) throws SQLException {
		return sqlSession.selectOne(BOARD_NAMESPACE + "selectBrochure", vo);
	}

	public void modifyBrochure(BrochureVO vo) throws SQLException {
		sqlSession.update(BOARD_NAMESPACE + "modifyBrochure", vo);
	}
}