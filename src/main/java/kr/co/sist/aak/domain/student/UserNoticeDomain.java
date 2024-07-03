package kr.co.sist.aak.domain.student;

import java.util.Date;

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
public class UserNoticeDomain {
	private String noti_no,title,id,content,status,image;
	private Date write_date;
}
