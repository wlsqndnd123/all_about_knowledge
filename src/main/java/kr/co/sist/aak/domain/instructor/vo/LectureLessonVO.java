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

	private String sub_code, lec_code, sub_title, intro, goal, image, lec_name, explain, video;
	private int table_no, total_time, lesson;
	private Date create_date;
}
