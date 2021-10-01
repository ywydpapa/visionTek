package com.vision.tek.board.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vision.tek.board.vo.BoardVO;
import com.vision.tek.board.vo.BrochureVO;
import com.vision.tek.board.vo.FileVO;
import com.vision.tek.board.vo.ItemVO;

@Repository
public class BoardDAO {
	private final static String BOARD_NAMESPACE = "board.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int selectBoardTotalCount(BoardVO boardVO) {
		return sqlSession.selectOne(BOARD_NAMESPACE + "selectBoardTotalCount", boardVO);
	}

	public List<BoardVO> selectBoardList(BoardVO boardVO) {
		return sqlSession.selectList(BOARD_NAMESPACE + "selectBoardList", boardVO);
	}
	
	public List<BoardVO> selectImportantList(BoardVO boardVO) {
		return sqlSession.selectList(BOARD_NAMESPACE + "selectImportantList", boardVO);
	}
	
	public void updateReadCount(Map<String, Object> paramMap) {
		sqlSession.update(BOARD_NAMESPACE + "updateReadCount", paramMap);
	}

	public BoardVO selectBoard(Map<String, Object> paramMap) {
		return sqlSession.selectOne(BOARD_NAMESPACE + "selectBoard", paramMap);
	}

	public List<FileVO> selectBoardFileList(Map<String, Object> paramMap) {
		return sqlSession.selectList(BOARD_NAMESPACE + "selectBoardFileList", paramMap);
	}
	
	
	public int selectItemBoardTotalCount(ItemVO itemVO) {
		return sqlSession.selectOne(BOARD_NAMESPACE + "selectItemBoardTotalCount", itemVO);
	}

	public List<ItemVO> selectItemBoardList(ItemVO itemVO) {
		return sqlSession.selectList(BOARD_NAMESPACE + "selectItemBoardList", itemVO);
	}
	
	
	public int selectMainItemBoardTotalCount(ItemVO itemVO) {
		return sqlSession.selectOne(BOARD_NAMESPACE + "selectMainItemBoardTotalCount", itemVO);
	}
	
	public List<ItemVO> selectMainItemBoardList(ItemVO itemVO) {
		return sqlSession.selectList(BOARD_NAMESPACE + "selectMainItemBoardList", itemVO);
	}
	
	
	public List<BoardVO> selectMainBoardList(BoardVO boardVO) {
		return sqlSession.selectList(BOARD_NAMESPACE + "selectMainBoardList", boardVO);
	}
	
}