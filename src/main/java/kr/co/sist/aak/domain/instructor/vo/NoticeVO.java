package kr.co.sist.aak.domain.instructor.vo;

import java.util.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

public class NoticeVO {
	private String NOTI_NO,title,INST_ID,content,status,SUB_CODE;
	private Date write_date;
	public NoticeVO(String nOTI_NO, String title, String iNST_ID, String cONTENT, String status, String SUB_CODE,
			Date write_date) {
		super();
		this.NOTI_NO = nOTI_NO;
		this.title = title;
		this.INST_ID = iNST_ID;
		this.content = cONTENT;
		this.status = status;
		this.SUB_CODE = SUB_CODE;
		this.write_date = write_date;
	}
	public NoticeVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getNOTI_NO() {
		return NOTI_NO;
	}
	public void setNOTI_NO(String nOTI_NO) {
		this.NOTI_NO = nOTI_NO;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getINST_ID() {
		return INST_ID;
	}
	public void setINST_ID(String iNST_ID) {
		this.INST_ID = iNST_ID;
	}
	public String getCONTENT() {
		return content;
	}
	public void setCONTENT(String cONTENT) {
		this.content = cONTENT;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSub_code() {
		return SUB_CODE;
	}
	public void setSub_code(String sub_code) {
		this.SUB_CODE = sub_code;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	@Override
	public String toString() {
		return "NoticeVO [NOTI_NO=" + NOTI_NO + ", title=" + title + ", INST_ID=" + INST_ID + ", CONTENT=" + content
				+ ", status=" + status + ", sub_code=" + SUB_CODE + ", write_date=" + write_date + "]";
	}
	
	
	

}
