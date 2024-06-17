package kr.co.sist.aak.domain.instructor;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class QnaDomain {

	private String qna_no, title, id, sub_code, lec_code, replyContent, content;
	private Date writeDate, replyDate;
	private char status;
}
