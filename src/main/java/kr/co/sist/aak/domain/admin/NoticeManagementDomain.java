package kr.co.sist.aak.domain.admin;

import java.util.Date;

public class NoticeManagementDomain {
	private String doc_num,title,id,content;
	private Date input_date;
	public NoticeManagementDomain() {
		super();
	}
	public NoticeManagementDomain(String doc_num, String title, String id, String content, Date input_date) {
		super();
		this.doc_num = doc_num;
		this.title = title;
		this.id = id;
		this.content = content;
		this.input_date = input_date;
	}
	public String getDoc_num() {
		return doc_num;
	}
	public void setDoc_num(String doc_num) {
		this.doc_num = doc_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getInput_date() {
		return input_date;
	}
	public void setInput_date(Date input_date) {
		this.input_date = input_date;
	}
	@Override
	public String toString() {
		return "NoticeManagementDomain [doc_num=" + doc_num + ", title=" + title + ", id=" + id + ", content=" + content
				+ ", input_date=" + input_date + "]";
	}
	
}
