package kr.co.sist.aak.module.admin.memberManagement.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.co.sist.aak.domain.admin.MemberManagementDomain;

import kr.co.sist.aak.module.admin.memberManagement.dao.MemberManagementDAO;
@Service
public class MemberManagementService {
	@Autowired(required = false)
	private MemberManagementDAO mmDAO;
	
	public List<MemberManagementDomain> searchMember() {
		List<MemberManagementDomain> list = null;
		try {
		list = mmDAO.selectMember()	;
		System.out.println(list);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}
}
