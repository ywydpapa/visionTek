package com.vision.tek.pagination;

public class ImgPaginationAdminRenderer extends AbstractPaginationRenderer {
	
	public ImgPaginationAdminRenderer() {
		
		firstPageLabel = "";
		
        previousPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\" class=\"prev\">" + "prev</a>";
        
        currentPageLabel = "<a href=\"#\" class=\"selected\">{0}</a>";
        
        otherPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\">{2}</a>";
        
        nextPageLabel = "<a href=\"#\" onclick=\"{0}({1}); return false;\" class=\"next\">" + "next</a>";
        
        lastPageLabel = "";		
	}
}
