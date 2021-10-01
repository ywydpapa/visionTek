package com.vision.tek.board.vo;

public class ItemVO extends SearchItemDefaultVO{
	private static final long serialVersionUID = 8763516142439813698L;
	
	private int seq;		
	private String type;			//카테고리
	private String important;		//메인노출 여부
	private String title;			//상품이름
	private String subTitle;		//부제목
	private String content;			//사진
	private String itemNumber;		//물품식별번호
	private String price;			//조달등록가격
	private String hasAttachment;
	private String writerId;
	private String writerName;
	private String updaterId;
	private String updaterName;
	private String createDt;
	private String updateDt;
	
	
	private String url;		//메인화면 자세히보기 눌렀을때 url
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public int getSeq() {
		return seq;
	}
	public String getType() {
		return type;
	}
	public String getTitle() {
		return title;
	}
	public String getSubTitle() {
		return subTitle;
	}
	public String getContent() {
		return content;
	}
	public String getItemNumber() {
		return itemNumber;
	}
	public String getPrice() {
		return price;
	}
	public String getHasAttachment() {
		return hasAttachment;
	}
	public String getWriterId() {
		return writerId;
	}
	public String getWriterName() {
		return writerName;
	}
	public String getUpdaterId() {
		return updaterId;
	}
	public String getUpdaterName() {
		return updaterName;
	}
	public String getCreateDt() {
		return createDt;
	}
	public String getUpdateDt() {
		return updateDt;
	}
	
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setItemNumber(String itemNumber) {
		this.itemNumber = itemNumber;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public void setHasAttachment(String hasAttachment) {
		this.hasAttachment = hasAttachment;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public void setUpdaterId(String updaterId) {
		this.updaterId = updaterId;
	}
	public void setUpdaterName(String updaterName) {
		this.updaterName = updaterName;
	}
	public void setCreateDt(String createDt) {
		this.createDt = createDt;
	}
	public void setUpdateDt(String updateDt) {
		this.updateDt = updateDt;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getImportant() {
		return important;
	}
	public void setImportant(String important) {
		this.important = important;
	}
	
	
}