package kr.co.sist.aak.domain.instructor.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class QnaVO {

	private String title, id, sub_code, lec_code, replyContent, content;
	private int qna_no;
	private Date reply_date;
}
