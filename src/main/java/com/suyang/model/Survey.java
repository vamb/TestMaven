package com.suyang.model;

import com.suyang.bean.BaseBean;
import com.suyang.bean.Constant;

public class Survey extends BaseBean{

	private static final long serialVersionUID = -582956124223232024L;

	private Long id;
	
	private String suryName;
	
	private Integer sorting;
	
	private Integer deleted;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSuryName() {
		return suryName;
	}

	public void setSuryName(String suryName) {
		this.suryName = suryName;
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
