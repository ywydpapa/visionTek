package com.vision.tek.constant;

import java.util.ArrayList;
import java.util.List;

import com.vision.tek.admin.vo.MenuVO;

public class AdminConstant {

	public static String NAME_LIST = "리스트";
	public static String NAME_INSERT = "등록";
	public static String NAME_UPDATE = "수정";
	public static String NAME_VIEW = "상세정보";
	
	public static String MENU_EQUIPMENT = "M1";
	public static String MENU_BOARD = "M5";
	public static String MENU_ITEM = "M7";
	public static String MENU_SYSTEM = "M9";
	
	
	public static String MENU_BOARD_EQUIPMENT = "10";
	public static String MENU_BOARD_REG_EQUIPMENT = "12";
	
	public static String MENU_BOARD_NOTICE = "20";
	public static String MENU_BOARD_ITEM = "22";
	public static String MENU_BOARD_BROCHURE = "24";
	
	public static String MENU_BOARD_ADMIN = "30";	
	public static String MENU_BOARD_DATE = "32";
	
	public static String MENU_SYSTEM_ADMIN = "91";	
	public static String MENU_SYSTEM_CODE = "92";
	
	public static List<MenuVO> MAIN_MENU(){
		List<MenuVO> list = new ArrayList<MenuVO>();
		list.add(new MenuVO(MENU_BOARD, "게시판", "/manager/noticeList.do"));
		list.add(new MenuVO(MENU_ITEM, "제품 등록", "/manager/itemList.do"));		
		list.add(new MenuVO(MENU_SYSTEM, "기타 관리", "/manager/adminList.do"));		
		
		return list;
	}
	
	public static List<MenuVO> SUB_MENU(String mainId) {
		List<MenuVO> list = new ArrayList<MenuVO>();
		
		if(MENU_EQUIPMENT.equals(mainId)) {
		} else if (MENU_BOARD.equals(mainId)) {
			list.add(new MenuVO(MENU_BOARD_NOTICE, "NEWS", "/manager/noticeList.do"));
		} else if(MENU_ITEM.equals(mainId)) {
			list.add(new MenuVO(MENU_BOARD_ITEM, "제품", "/manager/itemList.do"));
			list.add(new MenuVO(MENU_BOARD_BROCHURE, "브로셔", "/manager/brochureList.do"));
		}else if(MENU_SYSTEM.equals(mainId)) {
			list.add(new MenuVO(MENU_BOARD_ADMIN, "관리자 관리", "/manager/adminList.do"));
		}

		return list;
	}
}