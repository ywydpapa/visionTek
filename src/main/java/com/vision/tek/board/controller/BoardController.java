package com.vision.tek.board.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vision.tek.board.service.BoardService;
import com.vision.tek.board.vo.BoardVO;
import com.vision.tek.board.vo.BrochureVO;
import com.vision.tek.board.vo.FileVO;
import com.vision.tek.board.vo.ItemVO;
import com.vision.tek.pagination.PaginationInfo;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService boardService;
	
	//news
	@RequestMapping("/news/notice_list")
	public String moveToNoticeList(Model model, BoardVO boardVO) {
		logger.info("moveToNoticeList");
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(boardVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(boardVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(boardVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(boardVO.getRecordCountPerPage());
		paginationInfo.setPageSize(boardVO.getPageSize());
		boardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		
		int totalCount = boardService.selectBoardTotalCount(boardVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<BoardVO> boardList = boardService.selectBoardList(boardVO);
		model.addAttribute("boardList", boardList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		model.addAttribute("boardVO", boardVO);
		
		return "/news/notice_list";
	}
	
	@RequestMapping("/news/notice_view")
	public String moveToNoticeView(@RequestParam("seq") int seq, Model model) {
		logger.info("moveToNoticeView");
		BoardVO boardVO = boardService.selectBoard(seq);
		List<FileVO> fileList = boardService.selectBoardFileList(seq);
		
		model.addAttribute("boardVO", boardVO);
		model.addAttribute("fileList", fileList);
		
		return "/news/notice_view";
	}
	
	
	//procure
	@RequestMapping(value = "/procure/procure01")
	public String moveToProcure01(ItemVO itemVO, Model model,
			BrochureVO brochureVO) {
		logger.info("moveToProcure01");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(2);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
	
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("웹방화벽");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure01";
	}
	
	@RequestMapping(value = "/procure/procure01_2")
	public String moveToProcure01_2(ItemVO itemVO, Model model) {
		logger.info("moveToProcure01_2");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(3);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
		
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("DB방화벽");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure01_2";
	}
	
	@RequestMapping(value = "/procure/procure01_3")
	public String moveToProcure01_3(ItemVO itemVO, Model model) {
		logger.info("moveToProcure01_3");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(4);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
		
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("APT대응솔루션");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure01_3";
	}
	
	@RequestMapping(value = "/procure/procure01_4")
	public String moveToProcure01_4(ItemVO itemVO, Model model) {
		logger.info("moveToProcure01_4");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(5);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
		
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("VoIP방화벽");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure01_4";
	}
	
	@RequestMapping(value = "/procure/procure01_5")
	public String moveToProcure01_5(ItemVO itemVO, Model model) {
		logger.info("moveToProcure01_5");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(6);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
		
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("유해사이트차단");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure01_5";
	}
	
	@RequestMapping(value = "/procure/procure01_6")
	public String moveToProcure01_6(ItemVO itemVO, Model model) {
		logger.info("moveToProcure01_6");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(14);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
		
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("클라우드웹방화벽");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure01_6";
	}
	
	@RequestMapping(value = "/procure/procure02")
	public String moveToProcure02(ItemVO itemVO, Model model) {
		logger.info("moveToProcure02");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(15);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
		
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("가상데스크톱");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure02";
	}
	
	@RequestMapping(value = "/procure/procure02_2")
	public String moveToProcure02_2(ItemVO itemVO, Model model) {
		logger.info("moveToProcure02_2");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(16);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
		
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("컴퓨터망전환장치");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure02_2";
	}
	
	@RequestMapping(value = "/procure/procure03")
	public String moveToProcure03(ItemVO itemVO, Model model) {
		logger.info("moveToProcure03");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(17);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
		
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("트래픽분석관리시스템");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure03";
	}
	
	@RequestMapping(value = "/procure/procure04")
	public String moveToProcure04(ItemVO itemVO, Model model) {
		logger.info("moveToProcure04");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(18);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
		
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("망연계솔루션");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure04";
	}
	
	@RequestMapping(value = "/procure/procure05")
	public String moveToProcure05(ItemVO itemVO, Model model) {
		logger.info("moveToProcure05");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(19);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
		
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("올플래시 스토리지");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure05";
	}
	
	@RequestMapping(value = "/procure/procure06")
	public String moveToProcure06(ItemVO itemVO, Model model) {
		logger.info("moveToProcure06");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(20);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
		
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("CCTV원격관리솔루션");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure06";
	}
	
	@RequestMapping(value = "/procure/procure07")
	public String moveToProcure07(ItemVO itemVO, Model model) {
		logger.info("moveToProcure07");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(21);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
		
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("데이터베이스관리소프트웨어");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure07";
	}
	
	@RequestMapping(value = "/procure/procure08")
	public String moveToProcure08(ItemVO itemVO, Model model) {
		logger.info("moveToProcure08");
		
		//브로셔 불러오기
		List<FileVO> fileList = boardService.selectBoardFileList(22);
		model.addAttribute("fileList", fileList);
		
		itemVO.setRecordCountPerPage(5);
		
		//모바일버전
		PaginationInfo paginationInfo2 = new PaginationInfo();
		paginationInfo2.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo2.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo2.setPageSize(1);
		
		//pc버전		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		itemVO.setType("랜섬웨어 대응솔루션");
		
		int totalCount = boardService.selectItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectItemBoardList(itemVO);
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/procure/procure08";
	}
}