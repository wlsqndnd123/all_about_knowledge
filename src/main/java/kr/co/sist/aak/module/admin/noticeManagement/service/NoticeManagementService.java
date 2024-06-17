package kr.co.sist.aak.module.admin.noticeManagement.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import kr.co.sist.aak.domain.admin.NoticeManagementDomain;
import kr.co.sist.aak.domain.admin.vo.NoticeManagementVO;
import kr.co.sist.aak.module.admin.noticeManagement.dao.NoticeManagementDAO;

@Service
public class NoticeManagementService {
	@Autowired(required = false)
	private NoticeManagementDAO nmDAO;

//	public List<NoticeManagementDomain> searchAllNotice() {
//		List<NoticeManagementDomain> list = null;
//		try {
//			list = nmDAO.selectAllNotice();
//
//		} catch (PersistenceException pe) {
//			pe.printStackTrace();
//		}
//		return list;
//	}

	public NoticeManagementDomain searchOneNotice(String noti_no) {
		NoticeManagementDomain nmd = null;

		try {
			nmd = nmDAO.selectOneNotice(noti_no);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return nmd;
	}

	/**
	 * 셀렉트값에 따라 출력되는 결과의 값이 다름
	 * status 0: 예약 1: 게시 2:삭제 3:전체 게시글 조회.
	 * @param status
	 * @return
	 */
	public List<NoticeManagementDomain> searchNoticeStatus(int status) {
		List<NoticeManagementDomain> list = null;

		try {
			list = nmDAO.selectNoticeStatus(status);
			if (status == 3) {
				list = nmDAO.selectAllNotice();
			}
		} catch (PersistenceException pe) {
		}
		return list;

	}

	/**
	 * 공지사항의 제목을 검색하는 method.
	 * title이 null이라면 전체 공지사항이 검색되도록 설정함.
	 * @param title
	 * @return
	 */
	public List<NoticeManagementDomain> searchNoticeTitle(String title) {
		List<NoticeManagementDomain> list = null;

		try {
			list = nmDAO.selectNoticeTitle(title);
			
			if ("".equals(title)) {
				list = nmDAO.selectAllNotice();
			}

		} catch (PersistenceException pe) {
			pe.printStackTrace();
			
		}finally {
			for(NoticeManagementDomain temp :list) {
				if(temp.getStatus().equals("RESV")) {
					temp.setStatus("예약");
				}else if(temp.getStatus().equals("DELT")){
					temp.setStatus("삭제");
					
				}else {
					temp.setStatus("게시");
					
				}
			}
			
		}

		return list;

	}
	 public String searchMaxNoticeVal() {
		 String maxVal ="";
		 
		 StringBuffer pre = new StringBuffer("A_NOT");
		 
		 try{
			 maxVal =nmDAO.selectMaxValue();
			 int num = Integer.parseInt(maxVal.substring(6))+1;
			 String nextVal = String.format("%05d", num);
			 pre.append(nextVal);
		 }catch (PersistenceException e) {
			 e.printStackTrace();
		 }
		 return pre.toString();
	 }
	 public int addNotice(NoticeManagementVO nVO) {
		int cnt = 0;
		try {
			cnt = nmDAO.insertNotice(nVO);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return cnt;
	}
}
