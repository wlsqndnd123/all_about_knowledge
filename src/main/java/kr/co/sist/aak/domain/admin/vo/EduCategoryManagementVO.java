package kr.co.sist.aak.domain.admin.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class EduCategoryManagementVO {
private String category_code,category_name;
private String subject_code,subject_name;
}
