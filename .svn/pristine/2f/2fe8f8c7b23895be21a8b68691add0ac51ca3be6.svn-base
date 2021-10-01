package com.vision.tek.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.vision.tek.admin.service.AdminService;
import com.vision.tek.admin.vo.AdminVO;
import com.vision.tek.board.vo.BoardVO;
import com.vision.tek.board.vo.BrochureVO;
import com.vision.tek.board.vo.FileVO;
import com.vision.tek.board.vo.ItemVO;
import com.vision.tek.constant.AdminConstant;
import com.vision.tek.file.FileManagerUtils;
import com.vision.tek.pagination.PaginationInfo;
import com.vision.tek.util.SessionUtil;

@Controller
@RequestMapping("/manager")
public class AdminController extends AdminBaseController {
	
	private static Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private FileManagerUtils fileManagerUtils;
	
	
	/******************************************************************************
	 *  								기타 관리								  *
	 ******************************************************************************/
	
	// 관리자 목록.
	@RequestMapping("/adminList.do")
	public String adminList(
			HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("adminVO") AdminVO adminVO,
			ModelMap model) throws Exception {
		
		model.addAttribute("mainMenu", mainMenu(AdminConstant.MENU_SYSTEM, AdminConstant.MENU_BOARD_ADMIN));
		model.addAttribute("command", AdminConstant.NAME_LIST);
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(adminVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(adminVO.getPageUnit());
		paginationInfo.setPageSize(adminVO.getPageSize());
		adminVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		adminVO.setLastIndex(paginationInfo.getLastRecordIndex());
		adminVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		List<AdminVO> adminList = adminService.selectAdminList(adminVO);
		model.addAttribute("adminList", adminList);
		
		int adminCnt = adminService.selectAdminCnt(adminVO);
		model.addAttribute("adminCnt", adminCnt);
		
		paginationInfo.setTotalRecordCount(adminCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		
		model.addAttribute("adminVO", adminVO);
		
		return "/manager/admin/adminList";
	}
	
	// 관리자 등록 페이지.
	@RequestMapping(value = "/registerAdminInfo", method = RequestMethod.GET)
	public String registerAdminInfoPage(
			HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("adminVO") AdminVO adminVO,
			@RequestParam(value = "mode", defaultValue = "add") String mode,
			ModelMap model) throws Exception {
		
		model.addAttribute("mainMenu", mainMenu(AdminConstant.MENU_SYSTEM, AdminConstant.MENU_BOARD_ADMIN));
		model.addAttribute("command", AdminConstant.NAME_INSERT);
		
		model.addAttribute("mode", mode);
		model.addAttribute("adminVO", adminVO);
		
		return "/manager/admin/registerAdmin";
	}
	
	// 아이디 중복 체크.
	@RequestMapping(value = "/checkAdminId.do")
	public String checkAdminId(
			HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam(value = "adminId") String adminId,
			ModelMap model) throws Exception {

		String result = "N";

		int cnt = adminService.checkAdminId(adminId);
		if (cnt == 0)
			result = "Y";

		model.addAttribute("result", result);
		
		return "jsonView";
	}
	
	// 관리자 등록.
	@RequestMapping(value = "/registerAdminInfo", method = RequestMethod.POST)
	public String registerAdminInfo(
			HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("adminVO") AdminVO adminVO) throws Exception {
		
		adminService.insertAdminInfo(adminVO);
		
		return "redirect:/manager/adminList.do";
	}
	
	// 관리자 수정 페이지.
	@RequestMapping(value="/modifyAdminInfoPage.do")
	public String modifyAdminInfoPage(
			HttpServletRequest request,
			HttpServletResponse response,
			@ModelAttribute("adminVO") AdminVO adminVO, 
			ModelMap model) throws Exception {
		
		model.addAttribute("mainMenu", mainMenu(AdminConstant.MENU_SYSTEM, AdminConstant.MENU_BOARD_ADMIN));
		model.addAttribute("command", AdminConstant.NAME_UPDATE);
		
		AdminVO adminInfo = adminService.selectAdminInfo(adminVO);
		model.addAttribute("adminInfo", adminInfo);
		
		model.addAttribute("mode", "upd");
		
		return "/manager/admin/registerAdmin";
	}
	
	// 관리자 수정.
	@RequestMapping("/modifyAdminInfo.do")
	public String modifyAdminInfo(AdminVO adminVO) throws Exception {
		
		adminService.modifyAdminInfo(adminVO);
		
		return "redirect:/manager/adminList.do";
	}
	
	// 관리자 삭제.
	@RequestMapping("/deleteAdminInfo.do")
	public String deleteAdminInfo(
			HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("seqs")String[] seqs) throws Exception {
		
		adminService.deleteAdminInfo(seqs);
		
		return "redirect:/manager/adminList.do";
	}
	
	/******************************************************************************
	 * 									 게시판 관리							  *
	 ******************************************************************************/
	
	// NEWS 목록.
	@RequestMapping("/noticeList.do")
	public String noticeList(
			@ModelAttribute("boardVO") BoardVO boardVO,
			ModelMap model) throws Exception {
		
		model.addAttribute("mainMenu", mainMenu(AdminConstant.MENU_BOARD, AdminConstant.MENU_BOARD_NOTICE));
		model.addAttribute("command", AdminConstant.NAME_LIST);
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(boardVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(boardVO.getRecordCountPerPage());
		paginationInfo.setPageSize(boardVO.getPageSize());
		
		boardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		
		List<BoardVO> noticeList = adminService.selectNoticeList(boardVO);
		model.addAttribute("noticeList", noticeList);
		
		int noticeCnt = adminService.selectNoticeCnt(boardVO);
		model.addAttribute("noticeCnt", noticeCnt);
		
		paginationInfo.setTotalRecordCount(noticeCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		
		model.addAttribute("boardVO", boardVO);
		
		return "/manager/board/noticeList";
	}
	
	// NEWS 등록 페이지.
	@RequestMapping(value = "/registerNotice.do", method = RequestMethod.GET)
	public String registerNoticePage(
			@ModelAttribute("boardVO") BoardVO boardVO,
			@RequestParam(value = "mode", defaultValue = "add") String mode, 
			ModelMap model) {
		
		model.addAttribute("mainMenu", mainMenu(AdminConstant.MENU_BOARD, AdminConstant.MENU_BOARD_NOTICE));
		model.addAttribute("command", AdminConstant.NAME_INSERT);
		
		model.addAttribute("boardVO", boardVO);
		model.addAttribute("mode", mode);
		
		return "/manager/board/registerNotice";
	}
		
	// NEWS 등록.
	@RequestMapping(value = "/registerNotice.do", method = RequestMethod.POST)
	public String registerNotice(
			final MultipartHttpServletRequest multiRequest,
			@ModelAttribute("boardVO")BoardVO boardVO) throws Exception {
		
		List<FileVO> fileList = new ArrayList<FileVO>();
		final Map<String, MultipartFile> files = multiRequest.getFileMap();
		
		if(!files.isEmpty()) {
			fileList = fileManagerUtils.parseFileInfoApi(files, "");
		}
		
		boardVO.setWriterId(SessionUtil.getLoginAdmin().getAdminId());
		boardVO.setWriterName(SessionUtil.getLoginAdmin().getAdminName());
		
		adminService.registerNotice(boardVO, fileList);
		
		return "redirect:/manager/noticeList.do";
	}
		
	// NEWS 수정 페이지.
	@RequestMapping(value = "/modifyNoticePage.do", method = RequestMethod.POST)
	public String modifyNoticePage(
			@ModelAttribute("boardVO") BoardVO boardVO,
			ModelMap model) throws Exception {
		
		model.addAttribute("mainMenu", mainMenu(AdminConstant.MENU_BOARD, AdminConstant.MENU_BOARD_NOTICE));
		model.addAttribute("command", AdminConstant.NAME_UPDATE);
		
		BoardVO board = adminService.selectNotice(boardVO);
		model.addAttribute("board", board);
		
		Map<String, String> fileInfoMap = new HashMap<String, String>();
		fileInfoMap.put("boardSeq", String.valueOf(board.getSeq()));
		
		List<Map<String, String>> fileList = adminService.selectFileInfo(fileInfoMap);
		model.addAttribute("fileList", fileList);
		
		model.addAttribute("boardVO", boardVO);
		model.addAttribute("mode", "upd");
		
		return "/manager/board/registerNotice";
	}
	
	// NEWS 수정.
	@RequestMapping(value = "/modifyNotice.do", method = RequestMethod.POST)
	public String modifyNotice(
			final MultipartHttpServletRequest multiRequest,
			HttpServletRequest request, 
			@ModelAttribute("boardVO")BoardVO boardVO) throws Exception {
		
		//첨부파일 있는데 글수정했을 시 첨부파일 표시가 없어지는 로직 수정
		String org = request.getParameter("org");
		if(org != null && !org.isEmpty()){
			boardVO.setHasAttachmentGarbage("Y");
		}else{
			boardVO.setHasAttachmentGarbage("N");
		}
		
		boardVO.setUpdaterId(SessionUtil.getLoginAdmin().getAdminId());
		boardVO.setUpdaterName(SessionUtil.getLoginAdmin().getAdminName());
		
		List<FileVO> fileList = new ArrayList<FileVO>();
		final Map<String, MultipartFile> files = multiRequest.getFileMap();
		
		if(!files.isEmpty()) {
			fileList = fileManagerUtils.parseFileInfoApi(files, "");
		}
		
		adminService.modifyNotice(boardVO, fileList);
		
		return "redirect:/manager/noticeList.do";
	}
	
	// 첨부파일 삭제.
	@RequestMapping(value = "/deleteFile.do")
	public String deleteFile(
			@RequestParam(value = "fileId") String fileId,
			ModelMap model) throws Exception {
		
		int result = adminService.deleteFile(fileId);
		
		if(result > 0) 
			model.addAttribute("result", "Y");
		else 
			model.addAttribute("result", "N");
		
		return "jsonView";
	}
	
	// NEWS 삭제.
	@RequestMapping(value = "/deleteNotice.do")
	public String deleteNotice(
			@RequestParam("seqs")String[] seqs) throws Exception {

		adminService.deleteNotice(seqs);
		
		return "redirect:/manager/noticeList.do";
	}
	
	
	//상품등록 게시판
	@RequestMapping("/itemList.do")
	public String itemList(
			@ModelAttribute("itemVO") ItemVO itemVO,
			ModelMap model) throws Exception {
		
		model.addAttribute("mainMenu", mainMenu(AdminConstant.MENU_ITEM, AdminConstant.MENU_BOARD_ITEM));
		model.addAttribute("command", AdminConstant.NAME_LIST);
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(itemVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(itemVO.getRecordCountPerPage());
		paginationInfo.setPageSize(itemVO.getPageSize());
		
		itemVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		
		List<ItemVO> itemList = adminService.selectItemList(itemVO);
		model.addAttribute("itemList", itemList);
		
		int itemCnt = adminService.selectItemCnt(itemVO);
		model.addAttribute("itemCnt", itemCnt);
		
		paginationInfo.setTotalRecordCount(itemCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		
		model.addAttribute("itemVO", itemVO);
		
		return "/manager/board/itemList";
	}
	
	
	//상품등록게시판 이동
	@RequestMapping(value = "/registerItemPage.do", method = RequestMethod.GET)
	public String registerItemPage(
			@ModelAttribute("itemVO") ItemVO itemVO,
			@RequestParam(value = "mode", defaultValue = "add") String mode, 
			ModelMap model) {
		
		model.addAttribute("mainMenu", mainMenu(AdminConstant.MENU_ITEM, AdminConstant.MENU_BOARD_ITEM));
		model.addAttribute("command", AdminConstant.NAME_LIST);
		
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("mode", mode);
		
		return "/manager/board/registerItem";
	}
		
	//상품등록게시판 등록.
	@RequestMapping(value = "/registerItem.do", method = RequestMethod.POST)
	public String registerPhoto(
			final MultipartHttpServletRequest multiRequest,
			@ModelAttribute("itemVO") ItemVO itemVO) throws Exception {
		
		List<FileVO> fileList = new ArrayList<FileVO>();
		final Map<String, MultipartFile> files = multiRequest.getFileMap();
		
		if(!files.isEmpty()) {
			fileList = fileManagerUtils.parseFileInfoApi(files, "");
		}

		itemVO.setWriterId(SessionUtil.getLoginAdmin().getAdminId());
		itemVO.setWriterName(SessionUtil.getLoginAdmin().getAdminName());
		
		adminService.registerItem(itemVO, fileList);
		
		return "redirect:/manager/itemList.do";
	}
	
	// 상품등록게시판 수정 페이지.
	@RequestMapping(value = "/modifyItemPage.do", method = RequestMethod.POST)
	public String modifyItemPage(
			@ModelAttribute("itemVO") ItemVO itemVO,
			ModelMap model) throws Exception {
		
		model.addAttribute("mainMenu", mainMenu(AdminConstant.MENU_ITEM, AdminConstant.MENU_BOARD_ITEM));
		model.addAttribute("command", AdminConstant.NAME_LIST);
		
		ItemVO item = adminService.selectItem(itemVO);
		model.addAttribute("item", item);
		
		Map<String, String> fileInfoMap = new HashMap<String, String>();
		fileInfoMap.put("boardSeq", String.valueOf(item.getSeq()));
		
		List<Map<String, String>> fileList = adminService.selectFileInfo(fileInfoMap);
		model.addAttribute("fileList", fileList);
		
		model.addAttribute("itemVO", itemVO);
		model.addAttribute("mode", "upd");
		
		return "/manager/board/registerItem";
	}
	
	// 보도자료 수정.
	@RequestMapping(value = "/modifyItem.do", method = RequestMethod.POST)
	public String modifyItem(
			final MultipartHttpServletRequest multiRequest,
			@ModelAttribute("itemVO")ItemVO itemVO) throws Exception {
		
		itemVO.setUpdaterId(SessionUtil.getLoginAdmin().getAdminId());
		itemVO.setUpdaterName(SessionUtil.getLoginAdmin().getAdminName());
		
		List<FileVO> fileList = new ArrayList<FileVO>();
		final Map<String, MultipartFile> files = multiRequest.getFileMap();
		
		if(!files.isEmpty()) {
			fileList = fileManagerUtils.parseFileInfoApi(files, "");
		}
		
		adminService.modifyItem(itemVO, fileList);
		
		return "redirect:/manager/itemList.do";
	}
		
	// 첨부파일 삭제.
//	@RequestMapping(value = "/deleteItemFile.do")
//	public String deleteItemFile(
//			@RequestParam(value = "fileId") String fileId,
//			ModelMap model) throws Exception {
//		
//		int result = adminService.deleteFile(fileId);
//		
//		if(result > 0) 
//			model.addAttribute("result", "Y");
//		else 
//			model.addAttribute("result", "N");
//		
//		return "jsonView";
//	}
	
	// 보도자료 삭제.
	@RequestMapping(value = "/deleteItem.do")
	public String deleteItem(
			@RequestParam("seqs")String[] seqs) throws Exception {

		adminService.deleteItem(seqs);
		
		return "redirect:/manager/itemList.do";
	}
	
	/*
	 * 브로슈어 등록
	 * 
	 * */
	
	// 브로슈어 목록.
	@RequestMapping("/brochureList.do")
	public String brochureList(
			@ModelAttribute("BrochureVO") BrochureVO brochureVO,
			ModelMap model) throws Exception {
		
		model.addAttribute("mainMenu", mainMenu(AdminConstant.MENU_ITEM, AdminConstant.MENU_BOARD_BROCHURE));
		model.addAttribute("command", AdminConstant.NAME_LIST);
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(brochureVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(brochureVO.getRecordCountPerPage());
		paginationInfo.setPageSize(brochureVO.getPageSize());
		
		brochureVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		
		List<BrochureVO> brochureList = adminService.selectBrochureList(brochureVO);
		model.addAttribute("brochureList", brochureList);
		
		int brochureCnt = adminService.selectBrochureCnt(brochureVO);
		model.addAttribute("brochureCnt", brochureCnt);
		
		paginationInfo.setTotalRecordCount(brochureCnt);
		model.addAttribute("paginationInfo", paginationInfo);
		
		model.addAttribute("brochureVO", brochureVO);
		
		return "/manager/board/brochureList";
	}
	
	// 브로셔 등록 페이지.
	@RequestMapping(value = "/registerBrochure.do", method = RequestMethod.GET)
	public String registerBrochurePage(
			@ModelAttribute("brochureVO") BrochureVO brochureVO,
			@RequestParam(value = "mode", defaultValue = "add") String mode, 
			ModelMap model) {
		
		model.addAttribute("mainMenu", mainMenu(AdminConstant.MENU_ITEM, AdminConstant.MENU_BOARD_BROCHURE));
		model.addAttribute("command", AdminConstant.NAME_INSERT);
		
		model.addAttribute("brochureVO", brochureVO);
		model.addAttribute("mode", mode);
		
		return "/manager/board/registerBrochure";
	}
		
	// 브로셔 등록.
	@RequestMapping(value = "/registerBrochure.do", method = RequestMethod.POST)
	public String registerBrochure(
			final MultipartHttpServletRequest multiRequest,
			@ModelAttribute("brochureVO")BrochureVO brochureVO) throws Exception {
		
		List<FileVO> fileList = new ArrayList<FileVO>();
		final Map<String, MultipartFile> files = multiRequest.getFileMap();
		
		if(!files.isEmpty()) {
			fileList = fileManagerUtils.parseFileInfoApi(files, "");
		}
		
		adminService.registerBrochure(brochureVO, fileList);
		
		return "redirect:/manager/brochureList.do";
	}
		
	// 브로셔 수정 페이지.
	@RequestMapping(value = "/modifyBrochurePage.do", method = RequestMethod.POST)
	public String modifyBrochurePage(
			@ModelAttribute("brochureVO") BrochureVO brochureVO,
			ModelMap model) throws Exception {
		
		model.addAttribute("mainMenu", mainMenu(AdminConstant.MENU_ITEM, AdminConstant.MENU_BOARD_BROCHURE));
		model.addAttribute("command", AdminConstant.NAME_UPDATE);
		
		BrochureVO brochure = adminService.selectBrochure(brochureVO);
		model.addAttribute("brochure", brochure);
		
		Map<String, String> fileInfoMap = new HashMap<String, String>();
		fileInfoMap.put("boardSeq", String.valueOf(brochure.getSeq()));
		
		List<Map<String, String>> fileList = adminService.selectFileInfo(fileInfoMap);
		model.addAttribute("fileList", fileList);
		
		model.addAttribute("brochureVO", brochureVO);
		model.addAttribute("mode", "upd");
		
		return "/manager/board/registerBrochure";
	}
	
	// 브로셔 수정.
	@RequestMapping(value = "/modifyBrochure.do", method = RequestMethod.POST)
	public String modifyBrochure(
			final MultipartHttpServletRequest multiRequest,
			HttpServletRequest request, 
			@ModelAttribute("brochureVO")BrochureVO brochureVO) throws Exception {
		
		//첨부파일 있는데 글수정했을 시 첨부파일 표시가 없어지는 로직 수정
		String org = request.getParameter("org");
		if(org != null && !org.isEmpty()){
			brochureVO.setHasAttachmentGarbage("Y");
		}else{
			brochureVO.setHasAttachmentGarbage("N");
		}
		
		List<FileVO> fileList = new ArrayList<FileVO>();
		final Map<String, MultipartFile> files = multiRequest.getFileMap();
		
		if(!files.isEmpty()) {
			fileList = fileManagerUtils.parseFileInfoApi(files, "");
		}
		
		adminService.modifyBrochure(brochureVO, fileList);
		
		return "redirect:/manager/brochureList.do";
	}

	
}