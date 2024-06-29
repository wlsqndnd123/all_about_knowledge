package kr.co.sist.aak.domain.admin.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class AdminPermissionVO {
	private String id , notice_management, member_management, category_management, instructor_management, qna_management;
}
