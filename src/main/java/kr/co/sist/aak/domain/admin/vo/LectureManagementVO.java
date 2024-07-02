package kr.co.sist.aak.domain.admin.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class LectureManagementVO {
	
	private String 
	subject_code
	,subject_name
	,Instructor_name
	,Instructor_id,category_name
	,category_code
	,intro,goal
	,status
	,reason
	,lecture_code
	,lecture_title
	,lecture_file_name
	,lecture_content ;

	private int  total_no, total_time;
	private Date create_date;

	

	
}
