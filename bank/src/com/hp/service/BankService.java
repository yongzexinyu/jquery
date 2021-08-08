package com.hp.service;

import java.util.ArrayList;
import com.hp.entity.Business;


public interface BankService {
	//新增
	public int insertBus(Business bus);
	//全查
	public ArrayList<Business> findAll();
	}
