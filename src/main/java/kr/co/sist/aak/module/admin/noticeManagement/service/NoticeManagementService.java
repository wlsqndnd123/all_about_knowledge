package kr.co.sist.aak.module.admin.noticeManagement.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import kr.co.sist.aak.domain.admin.NoticeManagementDomain;
import kr.co.sist.aak.module.admin.noticeManagement.dao.NoticeManagementDAO;

@Service
public class NoticeManagementService {
	@Autowired(required = false)
	private NoticeManagementDAO nmDAO;

	public List<NoticeManagementDomain> searchAllNotice() {
		List<NoticeManagementDomain> list = null;
		try {
			list = nmDAO.selectAllNotice();

		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}
	public NoticeManagementDomain searchOneNotice(String noti_no) {
		NoticeManagementDomain nmd =null;
		
		try {
			nmd = nmDAO.selectOneNotice(noti_no);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return nmd;
	}
}
