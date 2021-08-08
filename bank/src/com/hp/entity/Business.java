package com.hp.entity;

public class Business {
	

public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getBtype() {
		return btype;
	}
	public void setBtype(String btype) {
		this.btype = btype;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}

public Business(int bid, int pid, String btype, String info, Detail detail) {
		super();
		this.bid = bid;
		this.pid = pid;
		this.btype = btype;
		this.info = info;
		this.detail = detail;
	}
@Override
	public String toString() {
		return "Business [bid=" + bid + ", pid=" + pid + ", btype=" + btype + ", info=" + info + ", detail=" + detail
				+ "]";
	}

private int bid;//业务序号
private int pid;//排队号
private String btype;//业务类型
private String info;//备注信息
private Detail detail;
public Detail getDetail() {
	return detail;
}
public void setDetail(Detail detail) {
	this.detail = detail;
}
public Business() {
	super();
	// TODO Auto-generated constructor stub
}


}
