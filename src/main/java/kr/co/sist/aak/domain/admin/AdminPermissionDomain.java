package kr.co.sist.aak.domain.admin;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class AdminPermissionDomain {
	private String id ,notice_management, member_management, category_management, instructor_management, qna_management;

}
