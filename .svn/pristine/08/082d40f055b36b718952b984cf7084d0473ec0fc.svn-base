package com.vision.tek.main.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vision.tek.board.service.BoardService;
import com.vision.tek.board.vo.BoardVO;
import com.vision.tek.board.vo.BrochureVO;
import com.vision.tek.board.vo.ItemVO;
import com.vision.tek.pagination.PaginationInfo;

@Controller
public class MainController {
	
	private static Logger logger = LoggerFactory.getLogger(MainController.class);

	@Autowired
	BoardService boardService;
	
	//메인화면
	@RequestMapping(value = "/main/index")
	public String moveToIndex(Model model,
			BoardVO boardVO, 
			ItemVO itemVO) {
		logger.info("moveToIndex");
		
		//공지사항 불러오기
		boardVO.setFirstIndex(0);
		boardVO.setRecordCountPerPage(2);
		List<BoardVO> boardList = boardService.selectMainBoardList(boardVO);
		model.addAttribute("boardList", boardList);

		
		//조달상품 불러제품
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
		
		int totalCount = boardService.selectMainItemBoardTotalCount(itemVO);
		paginationInfo.setTotalRecordCount(totalCount);
		paginationInfo2.setTotalRecordCount(totalCount);
		
		List<ItemVO> itemList = boardService.selectMainItemBoardList(itemVO);
		
		model.addAttribute("itemList", itemList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("paginationInfo2", paginationInfo2);
		
		return "/main/index";
	}

	
	//solution
	@RequestMapping("/solution/solution01")
	public String moveToSolution01(Model model) {
		return "/solution/solution01";
	}
	@RequestMapping("/solution/solution01_2")
	public String moveToSolution01_2(Model model) {
		return "/solution/solution01_2";
	}
	@RequestMapping("/solution/solution01_3")
	public String moveToSolution01_3(Model model) {
		return "/solution/solution01_3";
	}
	@RequestMapping("/solution/solution01_4")
	public String moveToSolution01_4(Model model) {
		return "/solution/solution01_4";
	}
	@RequestMapping("/solution/solution01_5")
	public String moveToSolution01_5(Model model) {
		return "/solution/solution01_5";
	}
	@RequestMapping("/solution/solution01_6")
	public String moveToSolution01_6(Model model) {
		return "/solution/solution01_6";
	}
	@RequestMapping("/solution/solution01_7")
	public String moveToSolution01_7(Model model) {
		return "/solution/solution01_7";
	}
	@RequestMapping("/solution/solution02")
	public String moveToSolution02(Model model) {
		return "/solution/solution02";
	}
	@RequestMapping("/solution/solution02_2")
	public String moveToSolution02_2(Model model) {
		return "/solution/solution02_2";
	}
	@RequestMapping("/solution/solution02_3")
	public String moveToSolution02_3(Model model) {
		return "/solution/solution02_3";
	}
	@RequestMapping("/solution/solution02_4")
	public String moveToSolution02_4(Model model) {
		return "/solution/solution02_4";
	}
	@RequestMapping("/solution/solution03")
	public String moveToSolution03(Model model) {
		return "/solution/solution03";
	}
	@RequestMapping("/solution/solution03_2")
	public String moveToSolution03_2(Model model) {
		return "/solution/solution03_2";
	}
	@RequestMapping("/solution/solution03_3")
	public String moveToSolution03_3(Model model) {
		return "/solution/solution03_3";
	}
	@RequestMapping("/solution/solution03_4")
	public String moveToSolution03_4(Model model) {
		return "/solution/solution03_4";
	}
	@RequestMapping("/solution/solution04")
	public String moveToSolution04(Model model) {
		return "/solution/solution04";
	}
	@RequestMapping("/solution/solution04_2")
	public String moveToSolution04_2(Model model) {
		return "/solution/solution04_2";
	}
	@RequestMapping("/solution/solution04_3")
	public String moveToSolution04_3(Model model) {
		return "/solution/solution04_3";
	}
	@RequestMapping("/solution/solution04_4")
	public String moveToSolution04_4(Model model) {
		return "/solution/solution04_4";
	}
	@RequestMapping("/solution/solution04_5")
	public String moveToSolution04_5(Model model) {
		return "/solution/solution04_5";
	}
	@RequestMapping("/solution/solution04_6")
	public String moveToSolution04_6(Model model) {
		return "/solution/solution04_6";
	}
	@RequestMapping("/solution/solution05")
	public String moveToSolution05(Model model) {
		return "/solution/solution05";
	}
	@RequestMapping("/solution/solution05_2")
	public String moveToSolution05_2(Model model) {
		return "/solution/solution05_2";
	}
	
	
	//company
	@RequestMapping("/company/company01")
	public String moveToCompany01(Model model) {
		return "/company/company01";
	}
	@RequestMapping("/company/company02")
	public String moveToCompany02(Model model) {
		return "/company/company02";
	}
	@RequestMapping("/company/company03")
	public String moveToCompany03(Model model) {
		return "/company/company03";
	}
	@RequestMapping("/company/company04")
	public String moveToCompany04(Model model) {
		return "/company/company04";
	}
	@RequestMapping("/company/company05")
	public String moveToCompany05(Model model) {
		return "/company/company05";
	}
	
	
	//maintenance
	@RequestMapping("/maintenance/maintenance01")
	public String moveToMaintenance01(Model model) {
		return "/maintenance/maintenance01";
	}
	
	
	//security
	@RequestMapping("/security/security01")
	public String moveToSecurity01(Model model) {
		return "/security/security01";
	}
}