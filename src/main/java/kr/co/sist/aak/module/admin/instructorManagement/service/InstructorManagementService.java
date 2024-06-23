package kr.co.sist.aak.module.admin.instructorManagement.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.admin.InstructorManagementDomain;
import kr.co.sist.aak.domain.admin.vo.InstructorManagementVO;
import kr.co.sist.aak.module.admin.instructorManagement.dao.InstructorManagementDAO;
@Service
public class InstructorManagementService {
	@Autowired(required = false)
	private InstructorManagementDAO imDAO;
	
	/**
	 * 강사중 삭제 플래그가 N(재직중)인 강사들의 리스트를 출력하는 method
	 * @return
	 */
	public List<InstructorManagementDomain> searchAllNInstructor() {
		List<InstructorManagementDomain> list =null;
		try {
			
			list = imDAO.selectAllNInstructor()	;
		
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}
	/**
	 * 강사중 삭제 플래그가 Y(퇴사 한)인 강사들의 리스트를 출력하는 method
	 * @return
	 */
	public List<InstructorManagementDomain> searchAllyInstructor() {
		List<InstructorManagementDomain> list =null;
		try {
			list = imDAO.selectAllYInstructor()	;
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}
	public InstructorManagementDomain instructorDetail(String inst_id){
		InstructorManagementDomain imd = null;
		try {
			imd = imDAO.selectOneInstructor(inst_id);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return imd;
	}
	public void addInstructor(InstructorManagementVO iVO) {
		try {
			imDAO.insertInstructor(iVO);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
	}
	public String searchMaxInstId() {
		String maxId = "";
		
	StringBuffer pre = new StringBuffer("INST_");
	
		try {
			maxId =imDAO.selectMaxInstId();
			int num = Integer.parseInt(maxId.substring(6))+1;
			String nextnum = String.format("%05d",num);
			pre.append(nextnum);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return pre.toString();
	}
}
