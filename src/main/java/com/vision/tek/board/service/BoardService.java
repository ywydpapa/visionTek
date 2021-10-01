package com.vision.tek.board.service;

import java.util.List;

import com.vision.tek.board.vo.BoardVO;
import com.vision.tek.board.vo.BrochureVO;
import com.vision.tek.board.vo.FileVO;
import com.vision.tek.board.vo.ItemVO;

public interface BoardService {

	int selectBoardTotalCount(BoardVO boardVO);

	List<BoardVO> selectBoardList(BoardVO boardVO);
	
	List<BoardVO> selectImportantList(BoardVO boardVO);

	BoardVO selectBoard(int seq);

	List<FileVO> selectBoardFileList(int seq);

	
	int selectItemBoardTotalCount(ItemVO itemVO);

	List<ItemVO> selectItemBoardList(ItemVO itemVO);
	
	
	int selectMainItemBoardTotalCount(ItemVO itemVO);
	
	List<ItemVO> selectMainItemBoardList(ItemVO itemVO);

	
	List<BoardVO> selectMainBoardList(BoardVO boardVO);
}