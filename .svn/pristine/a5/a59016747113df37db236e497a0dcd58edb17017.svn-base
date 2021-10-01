package com.vision.tek.admin.controller;

import java.util.List;

import org.springframework.web.bind.annotation.ModelAttribute;

import com.vision.tek.admin.vo.MenuVO;
import com.vision.tek.constant.AdminConstant;


public class AdminBaseController{
	@ModelAttribute("mainMenu")
	public List<MenuVO> mainMenu(String mainId, String subId) {
		List<MenuVO> list = AdminConstant.MAIN_MENU();
		
		for(MenuVO menu:list){
			if(menu.getId().equals(mainId)){
				menu.setSetYn("Y");
				menu.setSubMenu(AdminConstant.SUB_MENU(mainId));
				for(MenuVO sub:menu.getSubMenu()){
					if(sub.getId().equals(subId)){
						sub.setSetYn("Y");
					}
				}
			}
		}
		return list;
	}
}
