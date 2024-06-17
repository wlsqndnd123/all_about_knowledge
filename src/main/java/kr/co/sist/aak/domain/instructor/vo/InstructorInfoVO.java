package kr.co.sist.aak.domain.instructor.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class InstructorInfoVO {

	private String id, name, email, introduce, image;
}
