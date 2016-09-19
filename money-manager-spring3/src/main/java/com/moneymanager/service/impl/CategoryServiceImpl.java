package com.moneymanager.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.moneymanager.dao.ViewCategoryDao;
import com.moneymanager.dto.CateoryDto;
import com.moneymanager.service.CategoryService;



@Service
public class CategoryServiceImpl implements CategoryService{
	
	@Autowired
	private ViewCategoryDao viewCategoryDao;
	
	@Override
	public List<CateoryDto> getAllCategory() {
			
		System.out.println("[CategoryServiceImpl][getAllCategory]");
		ArrayList<CateoryDto> listOfCategory=(ArrayList<CateoryDto>) viewCategoryDao.getAllCategory();
		for(CateoryDto category:listOfCategory){
			System.out.println(category);
		}
		return listOfCategory;
	}

}
