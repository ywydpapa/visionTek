package com.vision.tek.board.vo;

import java.io.Serializable;

import com.vision.tek.admin.vo.SearchVO;

public class BrochureVO extends SearchVO implements Serializable {

	private static final long serialVersionUID = -335717114662497626L;

	private int seq;
	private String title;
	private String hasAttachment;
	private String createDt;
	private String updateDt;
	
	private String hasAttachmentGarbage;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getHasAttachmentGarbage() {
		return hasAttachmentGarbage;
	}
	public void setHasAttachmentGarbage(String hasAttachmentGarbage) {
		this.hasAttachmentGarbage = hasAttachmentGarbage;
	}
	public String getHasAttachment() {
		return hasAttachment;
	}
	public void setHasAttachment(String hasAttachment) {
		this.hasAttachment = hasAttachment;
	}
	public String getCreateDt() {
		return createDt;
	}
	public void setCreateDt(String createDt) {
		this.createDt = createDt;
	}
	public String getUpdateDt() {
		return updateDt;
	}
	public void setUpdateDt(String updateDt) {
		this.updateDt = updateDt;
	}
	
}
