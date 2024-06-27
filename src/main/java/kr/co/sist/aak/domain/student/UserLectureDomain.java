package kr.co.sist.aak.domain.student;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class UserLectureDomain {
	private String sub_code, intro, goal, STATUS, IMAGE;
	private int total_no, total_time, comp_time;
	private Date create_date;
	private String sub_title, cat_code;
	private String inst_id;
}
