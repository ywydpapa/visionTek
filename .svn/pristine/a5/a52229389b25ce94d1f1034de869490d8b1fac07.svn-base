package com.vision.tek.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vision.tek.board.dao.BoardDAO;
import com.vision.tek.board.vo.BoardVO;
import com.vision.tek.board.vo.BrochureVO;
import com.vision.tek.board.vo.FileVO;
import com.vision.tek.board.vo.ItemVO;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO boardDAO;

	@Override
	public int selectBoardTotalCount(BoardVO boardVO) {
		return boardDAO.selectBoardTotalCount(boardVO);
	}

	@Override
	public List<BoardVO> selectBoardList(BoardVO boardVO) {
		return boardDAO.selectBoardList(boardVO);
	}

	
	@Override
	public List<BoardVO> selectImportantList(BoardVO boardVO) {
		return boardDAO.selectImportantList(boardVO);
	}

	@Override
	public BoardVO selectBoard(int seq) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("seq", seq);
		
		boardDAO.updateReadCount(paramMap);
		
		return boardDAO.selectBoard(paramMap);
	}

	@Override
	public List<FileVO> selectBoardFileList(int seq) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("seq", seq);
		
		return boardDAO.selectBoardFileList(paramMap);
	}

	
	
	@Override
	public int selectItemBoardTotalCount(ItemVO itemVO) {
		return boardDAO.selectItemBoardTotalCount(itemVO);
	}

	@Override
	public List<ItemVO> selectItemBoardList(ItemVO itemVO) {
		List<ItemVO> itemList = boardDAO.selectItemBoardList(itemVO);
		
		int imgStartIndex;
		int imgEndIndex;
		String content;
		String tmp;
		
		 for(ItemVO item : itemList) {
			 content = item.getContent();
			 imgStartIndex = content.indexOf("<img");
			 
			 if(imgStartIndex > -1) {
				 tmp = content.substring(imgStartIndex);
				 imgEndIndex = tmp.indexOf(">");
				 content = tmp.substring(0, imgEndIndex + 1);
				 
				 item.setContent(content);
			 }else {
				 item.setContent("<img/>");
			 }
		 }
		
		return itemList;
	}
	
	
	
	@Override
	public int selectMainItemBoardTotalCount(ItemVO itemVO) {
		return boardDAO.selectMainItemBoardTotalCount(itemVO);
	}
	
	@Override
	public List<ItemVO> selectMainItemBoardList(ItemVO itemVO) {
		List<ItemVO> itemList = boardDAO.selectMainItemBoardList(itemVO);
		
		int imgStartIndex;
		int imgEndIndex;
		String content;
		String tmp;
		
		for(ItemVO item : itemList) {
			content = item.getContent();
			imgStartIndex = content.indexOf("<img");
			
			if(imgStartIndex > -1) {
				tmp = content.substring(imgStartIndex);
				imgEndIndex = tmp.indexOf(">");
				content = tmp.substring(0, imgEndIndex + 1);
				
				item.setContent(content);
			}else {
				item.setContent("<img/>");
			}
			if(item.getType().equals("가상데스크톱")){
				item.setType("틸론");
				item.setUrl("procure02");
			}else if(item.getType().equals("컴퓨터망전환장치")){
				item.setType("틸론");
				item.setUrl("procure02_2");
			}else if(item.getType().equals("트래픽분석관리시스템")){
				item.setType("넷코아테크");
				item.setUrl("procure03");
			}else if(item.getType().equals("망연계솔루션")){
				item.setType("SQI소프트");
				item.setUrl("procure04");
			}else if(item.getType().equals("올플래시 스토리지")){
				item.setType("LG히다찌");
				item.setUrl("procure05");
			}else if(item.getType().equals("CCTV원격관리솔루션")){
				item.setType("큐브바이트");
				item.setUrl("procure06");
			}else if(item.getType().equals("데이터베이스관리소프트웨어")){
				item.setType("알티베이스");
				item.setUrl("procure07");
			}else if(item.getType().equals("랜섬웨어 대응솔루션")){
				item.setType("BeyondTrust");
				item.setUrl("procure08");
			}else if(item.getType().equals("웹방화벽")){
				item.setType("모니터랩");
				item.setUrl("procure01");
			}else if(item.getType().equals("DB방화벽")){
				item.setType("모니터랩");
				item.setUrl("procure01_2");
			}else if(item.getType().equals("APT대응솔루션")){
				item.setType("모니터랩");
				item.setUrl("procure01_3");
			}else if(item.getType().equals("VoIP방화벽")){
				item.setType("모니터랩");
				item.setUrl("procure01_4");
			}else if(item.getType().equals("유해사이트차단")){
				item.setType("모니터랩");
				item.setUrl("procure01_5");
			}else if(item.getType().equals("클라우드웹방화벽")){
				item.setType("모니터랩");
				item.setUrl("procure01_6");
			}
		}
		
		return itemList;
	}

	
	@Override
	public List<BoardVO> selectMainBoardList(BoardVO boardVO) {
		List<BoardVO> boardList = boardDAO.selectMainBoardList(boardVO);
		// 메인화면에 뿌려질 공지사항 html 태그 지우기
		String text;
		String textWithoutTag;
		
		for (BoardVO board : boardList){
			text = board.getContent();
			//html 태그 제거
//			textWithoutTag = text.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
			//모든 태그형식 제거
			textWithoutTag = text.replaceAll("<[^>]*>", " ");
			
			board.setContent(textWithoutTag);
		}
		return boardList;
	}
}
