package com.suyang.model;

import com.suyang.bean.BaseBean;

public class SurveyResult extends BaseBean{

	private static final long serialVersionUID = 177551663247152634L;
	
	private Long suryId;
	
	private Long qustd;
	
	private Long optnId;
	
	private Long userId;
	
	private String content;

	public Long getSuryId() {
		return suryId;
	}

	public void setSuryId(Long suryId) {
		this.suryId = suryId;
	}

	public Long getQustd() {
		return qustd;
	}

	public void setQustd(Long qustd) {
		this.qustd = qustd;
	}

	public Long getOptnId() {
		return optnId;
	}

	public void setOptnId(Long optnId) {
		this.optnId = optnId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
