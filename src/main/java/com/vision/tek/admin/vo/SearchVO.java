package com.vision.tek.admin.vo;

import java.io.Serializable;

public class SearchVO implements Serializable {

	private static final long serialVersionUID = -8940412329864648745L;

	private String searchCondition; // 검색조건
	private String searchKeyword; // 검색 키워드
	private String searchCategory;
	private String searchEquipCatr;
	private String searchUseYn; // 검색사용여부
	private String searchLang;

	private int pageIndex = 1; // 현재 페이지
	private int pageUnit = 10; // 페이지 개수
	private int pageSize = 5; // 페이지 사이즈
	private int firstIndex = 1; // 첫 페이지
	private int lastIndex = 1; // 마지막 페이지
	private int recordCountPerPage = 10;

	public String getSearchCondition() {
		return searchCondition;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public String getSearchCategory() {
		return searchCategory;
	}

	public String getSearchEquipCatr() {
		return searchEquipCatr;
	}

	public String getSearchUseYn() {
		return searchUseYn;
	}

	public String getSearchLang() {
		return searchLang;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public int getPageUnit() {
		return pageUnit;
	}

	public int getPageSize() {
		return pageSize;
	}

	public int getFirstIndex() {
		return firstIndex;
	}

	public int getLastIndex() {
		return lastIndex;
	}

	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public void setSearchCategory(String searchCategory) {
		this.searchCategory = searchCategory;
	}

	public void setSearchEquipCatr(String searchEquipCatr) {
		this.searchEquipCatr = searchEquipCatr;
	}

	public void setSearchUseYn(String searchUseYn) {
		this.searchUseYn = searchUseYn;
	}

	public void setSearchLang(String searchLang) {
		this.searchLang = searchLang;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}

	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}

	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}

	@Override
	public String toString() {
		return "SearchVO [searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword + ", searchCategory=" + searchCategory
				+ ", searchEquipCatr=" + searchEquipCatr + ", searchUseYn=" + searchUseYn + ", searchLang=" + searchLang + ", pageIndex="
				+ pageIndex + ", pageUnit=" + pageUnit + ", pageSize=" + pageSize + ", firstIndex=" + firstIndex + ", lastIndex="
				+ lastIndex + ", recordCountPerPage=" + recordCountPerPage + "]";
	}
}
