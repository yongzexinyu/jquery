package com.hp.dao;

import java.util.ArrayList;
import com.hp.entity.Business;


public interface BankDao {
//添加业务
public int addBus(Business bus);
//业务列表
public ArrayList<Business> selectAll();
}
