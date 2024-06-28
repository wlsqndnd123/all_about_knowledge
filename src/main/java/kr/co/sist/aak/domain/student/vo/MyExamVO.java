package kr.co.sist.aak.domain.student.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class MyExamVO {

	private int qNo,answer;
	private String subName, content, ex1, ex2, ex3, ex4;
	
	public int getqNo() {
		return qNo;
	}
	public void setqNo(int qNo) {
		this.qNo = qNo;
	}
	
}
