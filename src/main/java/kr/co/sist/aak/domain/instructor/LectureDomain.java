package kr.co.sist.aak.domain.instructor;

import java.sql.Time;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class LectureDomain {

	private String sub_code, lec_code, title, file_Nm;
	private char status;
	private Time total_time;
}
