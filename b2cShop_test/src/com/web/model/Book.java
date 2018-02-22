package com.web.model;

public class Book extends Product{
	/*CREATE TABLE d_book (
			  id int(12) NOT NULL,
			  author varchar(200) NOT NULL,
			  publishing varchar(200) NOT NULL,
			  publish_time bigint(20) NOT NULL,
			  word_number varchar(15) default NULL,
			  which_edtion varchar(15) default NULL,
			  total_page varchar(15) default NULL,
			  print_time int(20) default NULL,
			  print_number varchar(15) default NULL,
			  isbn varchar(25) default NULL,
			  author_summary text NOT NULL,
			  catalogue text NOT NULL,
			  PRIMARY KEY  (id)&*/
	
	 /**
	 * 
	 */
	
	private int id;//书ID
	 private String author;//作者
	 private String publishing;//出版社
	 private long publishTime ;//出版时间
	 private String wordNumber;//共有词数
	 private String whichEdtion;//版本号
	 private String totalPage;//总页数
	 private int printTime;//印刷次数
	 private String printNumber;//印刷号
	 private String isbn;//版号
	 private String authorSummary;//作者简介
	 private String catalogue;//目录
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublishing() {
		return publishing;
	}
	public void setPublishing(String publishing) {
		this.publishing = publishing;
	}
	public long getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(long publishTime) {
		this.publishTime = publishTime;
	}
	public String getWordNumber() {
		return wordNumber;
	}
	public void setWordNumber(String wordNumber) {
		this.wordNumber = wordNumber;
	}
	public String getWhichEdtion() {
		return whichEdtion;
	}
	public void setWhichEdtion(String whichEdtion) {
		this.whichEdtion = whichEdtion;
	}
	public String getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(String totalPage) {
		this.totalPage = totalPage;
	}
	public int getPrintTime() {
		return printTime;
	}
	public void setPrintTime(int printTime) {
		this.printTime = printTime;
	}
	public String getPrintNumber() {
		return printNumber;
	}
	public void setPrintNumber(String printNumber) {
		this.printNumber = printNumber;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getAuthorSummary() {
		return authorSummary;
	}
	public void setAuthorSummary(String authorSummary) {
		this.authorSummary = authorSummary;
	}
	public String getCatalogue() {
		return catalogue;
	}
	public void setCatalogue(String catalogue) {
		this.catalogue = catalogue;
	}

	 
}
