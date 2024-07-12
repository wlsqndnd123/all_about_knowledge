package kr.co.sist.aak.module.admin.adminmanagement.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.admin.AdminPermissionDomain;
import kr.co.sist.aak.domain.admin.vo.AdminPermissionVO;
import kr.co.sist.aak.module.admin.adminmanagement.dao.AdminManagementDAO;

@Service
public class AdminManagementService {
	@Autowired(required = false)
	private AdminManagementDAO amd;
	
	public List<AdminPermissionDomain> searchAdmins() {
		List<AdminPermissionDomain> list = null;
		try {
			list = amd.selectAlladmin();
			for(AdminPermissionDomain temp :list) {
				StringBuilder sb = new StringBuilder();
				if(temp.getInstructor_management().equals("Y")) {
					sb.append("강사관리, ");
				}
				if(temp.getNotice_management().equals("Y")) {
					sb.append("공지사항관리, ");
				}
				if(temp.getMember_management().equals("Y")) {
					sb.append("회원관리, ");
				}
				if(temp.getCategory_management().equals("Y")) {
					sb.append("교욱과목 관리, ");
				}
				if(temp.getQna_management().equals("Y")) {
					sb.append("문의 관리, ");
				}
				sb.deleteCharAt(sb.lastIndexOf(","));
				temp.setPermissions(sb.toString());
				
			}
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}
	public void addAdmin(AdminPermissionVO apVO) {
		try {
			amd.insertAdmin(apVO);
		}catch (Exception e) {
			
		}
	
	}
	public void modifyAdmin(AdminPermissionVO apVO) {
		try {
			amd.updateAdmin(apVO);
		}catch (Exception e) {
			
		}
		
	}
	
}
