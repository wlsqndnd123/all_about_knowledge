package kr.co.sist.aak.domain.admin;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class EduCategoryManagementDomain {
private String category_code,category_name;
private String subject_code,subject_name;
}
