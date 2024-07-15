package kr.co.sist.aak.domain.student.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class UserApplySubVO {
private String std_id, sub_code, apply; 
private char interest;

//강의 문의
	private String qna_no, title, s_std_id, content, s_subcode,status,
	ans_content, inst_id;
	private Date q_date,ans_date;
}
