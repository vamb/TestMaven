package com.suyang.model;

import com.suyang.bean.BaseBean;
import com.suyang.bean.Constant;

public class Question extends BaseBean{

	private static final long serialVersionUID = 1419970136344906247L;

	private Long id;
	
	private Long suryId;
	
	private String qustName;
	
	private String qustType; // S single, M multiple
	
	private Integer sorting;
	
	private Integer deleted;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getSuryId() {
		return suryId;
	}

	public void setSuryId(Long suryId) {
		this.suryId = suryId;
	}

	public String getQustName() {
		return qustName;
	}

	public void setQustName(String qustName) {
		this.qustName = qustName;
	}

	public String getQustType() {
		return qustType;
	}

	public void setQustType(String qustType) {
		if(qustType != null && 
				(Constant.SINGLE_QUEST.equals(qustType) || Constant.MULTIPLE_QUEST.equals(qustType))){
			this.qustType = qustType;
		}else{
			this.qustType = "S";
		}
	}

	public Integer getSorting() {
		return sorting;
	}

	public void setSorting(Integer sorting) {
		if(sorting != null){
			this.sorting = sorting;
		}else{
			this.sorting = Constant.NOT_DELETED;
		}
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
