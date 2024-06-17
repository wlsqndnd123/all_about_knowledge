package kr.co.sist.aak.domain.instructor;

import java.util.Date;

public class NoticeDomain {
	
	private String noti_no,title,content,status,sub_code;
	private Date write_date;
	public NoticeDomain(String noti_no, String title, String content, String status, String sub_code, Date write_date) {
		super();
		this.noti_no = noti_no;
		this.title = title;
		this.content = content;
		this.status = status;
		this.sub_code = sub_code;
		this.write_date = write_date;
	}
	public NoticeDomain() {
		super();
	}
	public String getNoti_no() {
		return noti_no;
	}
	public void setNoti_no(String noti_no) {
		this.noti_no = noti_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSub_code() {
		return sub_code;
	}
	public void setSub_code(String sub_code) {
		this.sub_code = sub_code;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	@Override
	public String toString() {
		return "NoticeDomain [noti_no=" + noti_no + ", title=" + title + ", content=" + content + ", status=" + status
				+ ", sub_code=" + sub_code + ", write_date=" + write_date + "]";
	}
	
	

}
