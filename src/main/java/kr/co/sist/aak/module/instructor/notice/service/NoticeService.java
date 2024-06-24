package kr.co.sist.aak.module.instructor.notice.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.instructor.NoticeDomain;
import kr.co.sist.aak.module.instructor.notice.dao.NoticeDAO;

@Service
public class NoticeService {
	@Autowired(required = false)
	private NoticeDAO nDAO;
	
	public List<NoticeDomain> searchList(){
		List<NoticeDomain> list=null;
		try {
			list=nDAO.selectNotice();
			System.out.println(list);		
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		
		return list;
	}
	
	
	
	  public NoticeDomain searchdetail(String noti_no){
		NoticeDomain NDomain =null;
		
		try {
			NDomain = nDAO.selectNoticeDetail(noti_no);
		} catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		return NDomain;
	  }
	 
	  
	  
	  
	

	
	
	
}