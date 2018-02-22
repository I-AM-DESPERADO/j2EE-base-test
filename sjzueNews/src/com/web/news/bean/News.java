package com.web.news.bean;

import java.sql.Date;

public class News {
	private int nid;
	private int tid;
	private String ntitle;
	private Date ncreatedate;
	private String npicpath;
	private String ncontent;
	private Date nmodifydate;
	private String nsummary;
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public Date getNcreatedate() {
		return ncreatedate;
	}
	public void setNcreatedate(Date ncreatedate) {
		this.ncreatedate = ncreatedate;
	}
	public String getNpicpath() {
		return npicpath;
	}
	public void setNpicpath(String npicpath) {
		this.npicpath = npicpath;
	}
	public String getNcontent() {
		return ncontent;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	public Date getNmodifydate() {
		return nmodifydate;
	}
	public void setNmodifydate(Date nmodifydate) {
		this.nmodifydate = nmodifydate;
	}
	public String getNsummary() {
		return nsummary;
	}
	public void setNsummary(String nsummary) {
		this.nsummary = nsummary;
	}
	
}
