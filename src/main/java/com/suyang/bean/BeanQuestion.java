package com.suyang.bean;

import java.util.List;

import com.suyang.model.Option;
import com.suyang.model.Question;

public class BeanQuestion extends Question{

	private static final long serialVersionUID = -2350016383328692480L;

	private List<Option> options;

	public List<Option> getOptions() {
		return options;
	}

	public void setOptions(List<Option> options) {
		this.options = options;
	}
	
}
