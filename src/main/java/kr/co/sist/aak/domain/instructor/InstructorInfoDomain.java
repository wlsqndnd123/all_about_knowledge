package kr.co.sist.aak.domain.instructor;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class InstructorInfoDomain {

	private String id, name, email, introduce, image, phone, education, major_subject;
	
}
