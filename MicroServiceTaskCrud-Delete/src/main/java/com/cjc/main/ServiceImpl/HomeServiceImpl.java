package com.cjc.main.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.main.Repository.HomeRepository;

import com.cjc.main.serviceI.HomeServiceI;

@Service
public class HomeServiceImpl implements HomeServiceI{

	
	@Autowired
	HomeRepository hr;

	@Override
	public void deltData(int id) {
		
		hr.deleteById(id);
		
	}

}
