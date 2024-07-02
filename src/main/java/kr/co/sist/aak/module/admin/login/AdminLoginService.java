package kr.co.sist.aak.module.admin.login;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.admin.AdminLoginDomain;
import kr.co.sist.aak.domain.admin.AdminPermissionDomain;
import kr.co.sist.aak.domain.admin.vo.AdminLoginVO;
@Service
public class AdminLoginService {
	@Autowired(required = false)
	private AdminLoginDAO adlDAO;
	
	public boolean searchLogin(AdminLoginVO alVO) {
		AdminLoginDomain adld = null;
		try {
			adld = adlDAO.selectAdminPass(alVO);
			
		}catch (Exception e) {
			
		}
		return adld!= null&& adld.getPassword().equals(alVO.getPassword());
	}
	
	public AdminPermissionDomain searchAdminPermission(AdminLoginVO alVO) {
		AdminPermissionDomain ald = null;
		try {
			ald = adlDAO.selectAdminPermission(alVO);
			StringBuilder sb = new StringBuilder();
			if(ald.getInstructor_management().equals("Y")) {
				sb.append(" 강사 관리 <br/>");
			}
			if(ald.getNotice_management().equals("Y")) {
				sb.append(" 공지사항 관리 <br/>");
			}
			if(ald.getMember_management().equals("Y")) {
				sb.append(" 회원 관리 <br/>");
			}
			if(ald.getCategory_management().equals("Y")) {
				sb.append(" 교육 과목 관리 <br/>");
			}
			if(ald.getQna_management().equals("Y")) {
				sb.append(" 문의 관리 <br/>");
			}
			sb.deleteCharAt(sb.lastIndexOf(" <br/> "));
			ald.setPermissions(sb.toString());
			
		}catch (PersistenceException e) {
			e.printStackTrace();
		}
		return ald;
	}
	public String searchAuth(AdminLoginVO alVO) {
		AdminLoginDomain adld = null;
		try {
			adld = adlDAO.selectAdminPass(alVO);
		}catch (PersistenceException e) {
			e.printStackTrace();
		}
		
		
		return adld.getAuth();
	}
}
