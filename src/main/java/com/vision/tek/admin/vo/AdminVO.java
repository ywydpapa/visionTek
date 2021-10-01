package com.vision.tek.admin.vo;

import java.io.Serializable;

public class AdminVO extends SearchVO implements Serializable {

	private static final long serialVersionUID = -335717114662497626L;

	private String adminId;
	private String adminPwd;
	private String previledge;
	private String adminName;
	private String gender;
	private String birth;
	private String phone;
	private String email;
	private String createAdminId;
	private String createDate;
	private String updateAdminId;
	private String updateDate;

	public String getAdminId() {
		return adminId;
	}

	public String getAdminPwd() {
		return adminPwd;
	}

	public String getPreviledge() {
		return previledge;
	}

	public String getAdminName() {
		return adminName;
	}

	public String getGender() {
		return gender;
	}

	public String getBirth() {
		return birth;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getCreateAdminId() {
		return createAdminId;
	}

	public String getCreateDate() {
		return createDate;
	}

	public String getUpdateAdminId() {
		return updateAdminId;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}

	public void setPreviledge(String previledge) {
		this.previledge = previledge;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setCreateAdminId(String createAdminId) {
		this.createAdminId = createAdminId;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public void setUpdateAdminId(String updateAdminId) {
		this.updateAdminId = updateAdminId;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "AdminVO [adminId=" + adminId + ", adminPwd=" + adminPwd + ", previledge=" + previledge + ", adminName=" + adminName
				+ ", gender=" + gender + ", birth=" + birth + ", phone=" + phone + ", email=" + email + ", createAdminId=" + createAdminId
				+ ", createDate=" + createDate + ", updateAdminId=" + updateAdminId + ", updateDate=" + updateDate + "]";
	}
}
