package com.hp.entity;

public class Detail {
	
	public Detail(int xid, int bid, String name, String handler) {
		super();
		this.xid = xid;
		this.bid = bid;
		this.name = name;
		this.handler = handler;
	}
	@Override
	public String toString() {
		return "Detail [xid=" + xid + ", bid=" + bid + ", name=" + name + ", handler=" + handler + "]";
	}
	public int getXid() {
		return xid;
	}
	public void setXid(int xid) {
		this.xid = xid;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHandler() {
		return handler;
	}
	public void setHandler(String handler) {
		this.handler = handler;
	}
	private int xid;//详情编号
	private int bid;//业务编号
	private String name;//详情名称
	private String handler;//办理人
	public Detail() {
		super();
		// TODO Auto-generated constructor stub
	}
}
