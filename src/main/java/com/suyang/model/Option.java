package com.suyang.model;

import com.suyang.bean.BaseBean;
import com.suyang.bean.Constant;

public class Option extends BaseBean{

	private static final long serialVersionUID = 7913562649351423246L;

	private Long id;
	
	private Long qustId;
	
	private String optnName;
	
	private Integer sorting;
	
	private Integer deleted;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getQustId() {
		return qustId;
	}

	public void setQustId(Long qustId) {
		this.qustId = qustId;
	}

	public String getOptnName() {
		return optnName;
	}

	public void setOptnName(String optnName) {
		this.optnName = optnName;
	}

	public Integer getSorting() {
		return sorting;
	}

	public void setSorting(Integer sorting) {
		this.sorting = sorting;
	}

	public Integer getDeleted() {
		return deleted;
	}

	public void setDeleted(Integer deleted) {
		if(deleted != null){
			this.deleted = deleted;
		}else{
			this.deleted = Constant.NOT_DELETED;
		}
	}
	
	
}
