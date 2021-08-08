package com.hp.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hp.dao.BankDao;
import com.hp.entity.Business;
@Service
public class BankServiceImpl implements BankService{
@Autowired BankDao bankDao;
	@Override
	public int insertBus(Business bus) {
	int bank=bankDao.addBus(bus);
		return bank;
	}

	@Override
	public ArrayList<Business> findAll() {
		ArrayList<Business> list= bankDao.selectAll();
		return list;
	}
}
