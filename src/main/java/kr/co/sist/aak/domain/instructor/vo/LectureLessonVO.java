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
public class LectureLessonVO {

	private String sub_code, lec_code, title, lec_explain, f_name,status;
	private int table_no, time, lesson;
//	private Date create_date;
}
