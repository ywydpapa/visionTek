/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.vision.tek.pagination;


/**  
 * @Class Name : ImagePaginationRenderer.java
 * @Description : ImagePaginationRenderer Class
 * @Modification Information  
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 * 
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 * 
 *  Copyright (C) by MOPAS All right reserved.
 */
public class ImgPaginationRenderer extends AbstractPaginationRenderer {
	
    /**
    * PaginationRenderer
	* 
    * @see 개발프레임웍크 실행환경 개발팀
    */
	public ImgPaginationRenderer() {
		firstPageLabel = "<span><a href=\"#\" onclick=\"{0}({1});\"><img src=\"/resources/img/common/btn_first.gif\" alt=\"처음으로\"/></a></span>&#160;";
		
	    previousPageLabel = "<span class=\"mr2\"><a href=\"#\" onclick=\"{0}({1});\"><img src=\"/resources/img/common/btn_prev.gif\" alt=\"이전\"/></a></span>"; 
	    
	    currentPageLabel = "<li><a href=\"#\" class=\"active\"><span>{0}</span></a></li>";

	    otherPageLabel = "<li class=\"mr2\"><a href=\"#\" onclick=\"{0}({1});\">{2}</a></li>";
	    
	    nextPageLabel = "<span><a href=\"#\" onclick=\"{0}({1});\"><img src=\"/resources/img/common/btn_next.gif\" alt=\"다음\"/></a></span>&#160;";
	    
	    lastPageLabel = "<span><a href=\"#\" onclick=\"{0}({1});\"><img src=\"/resources/img/common/btn_last.gif\" alt=\"마지막으로\"/></a></span>";
	}
}