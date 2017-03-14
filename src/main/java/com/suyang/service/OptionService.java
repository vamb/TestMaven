package com.suyang.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import utils.IDGenerator;

import com.suyang.bean.Constant;
import com.suyang.dao.OptionMapper;
import com.suyang.model.Option;


@Service
public class OptionService {
	
	@Autowired
	public OptionMapper optionMapper;

	public List<Option> getOptionsByQustId(Long id) {
		return optionMapper.getOptionsByQustId(id);
	}

	@Transactional
	public void updateOption(Option option) {
		optionMapper.updateOption(option);
	}

	@Transactional
	public void insertOption(Option option) {
		option.setId(IDGenerator.generateId());
		option.setDeleted(Constant.NOT_DELETED);
		if(option.getSorting() != null){
			optionMapper.insertOption(option);
		}else{
			Integer maxSorting = optionMapper.getMaxSortingofThisQust(option);
			if(maxSorting == null){
				maxSorting = 0;
			}else{
				maxSorting++;
			}
			option.setSorting(maxSorting);
			optionMapper.insertOption(option);
		}
		
	}

	public void deleteoptionById(Long id) {
		optionMapper.deleteoptionById(id);
	}
}
