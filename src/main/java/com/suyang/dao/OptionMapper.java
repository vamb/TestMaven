package com.suyang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.suyang.model.Option;

public interface OptionMapper {
	
	public List<Option> getOptionList();
	
	public Option getOptnById (@Param("optnId")Long optnId);

	public List<Option> getOptionsByQustId(@Param("qustId")Long qustId);

	public void insertOption(Option option);
	
	public void updateOption(Option option);

	public Integer getMaxSortingofThisQust(Option option);

	public void deleteoptionById(@Param("optnId")Long optnId);
	
}
