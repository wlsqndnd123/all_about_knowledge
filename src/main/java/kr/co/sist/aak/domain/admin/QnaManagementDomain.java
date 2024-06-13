package kr.co.sist.aak.domain.admin;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class QnaManagementDomain {
	
	private String 
	qna_no
	,title
	,std_id
	,content_question
	,date_question
	,content_answer
	,status;

	private Date date_answer;

	

	
}
