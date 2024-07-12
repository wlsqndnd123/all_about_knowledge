package kr.co.sist.aak.module.student.qna.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.student.UserQnaDomain;
import kr.co.sist.aak.domain.student.vo.UserQnaVO;
import kr.co.sist.aak.module.student.qna.dao.UserQnaDAO;

@Service
public class UserQnaService {

	@Autowired(required = false)
	private UserQnaDAO uqDAO;
	
	/**
	 * 사이트 문의사항 리스트
	 * @return
	 */
//	public List<UserQnaDomain> searchSiteQna(){
//		List<UserQnaDomain> list = null;
//		try {
//		list=uqDAO.selectAllSiteQna();
//		} catch (PersistenceException pe) {
//			pe.printStackTrace();
//		}
//		return list;
//	}
	public List<UserQnaDomain> searchSiteQna(){
		List<UserQnaDomain> list = null;
		String loggedInUserId =SecurityContextHolder.getContext().getAuthentication().getName();
		
		try {
			list=uqDAO.selectAllSiteQna(loggedInUserId);
			
			for (UserQnaDomain item : list) {
	            if ("Y".equals(item.getStatus())) {
	                item.setStatus("완료");
	            } else if ("N".equals(item.getStatus())) {
	                item.setStatus("대기중");
	            }
	            // 추가적인 상태 처리가 필요하다면 여기에 추가
	        }
			
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}
	
	
	/**
	 * 문의 디테일
	 * @param title
	 * @return
	 */
	public UserQnaDomain searchSiteDetailQ(String qna_no){
		UserQnaDomain uqd = null;
		try {
			uqd=uqDAO.selectOneSiteQ(qna_no);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return uqd;
	}
	
	/**
	 * 문의 답변 불러오기
	 * @param qna_no
	 * @return
	 */
	public UserQnaDomain searchSiteDetailA(String qna_no){
		UserQnaDomain uqd = null;
		try {
			uqd=uqDAO.selectOneSiteA(qna_no);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return uqd;
	}
	
	/**
	 * 최대 넘버
	 * @return
	 */
	public String searchMaxQVal() {
		String maxVal="";
		StringBuffer pre = new StringBuffer("Q_GEN");
		try {
			maxVal=uqDAO.selectMaxValue();
			int num=Integer.parseInt(maxVal.substring(6))+1;
			String nextVal=String.format("%05d", num);
			pre.append(nextVal);
		} catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		return pre.toString();
	}
	
	/**
	 * 사이트 문의 작성
	 * @param uqVO
	 * @return
	 */
	public int addSiteQ(UserQnaVO uqVO) {
		int cnt = 0;
        try {
        	cnt = uqDAO.insertSiteQuestion(uqVO);
        } catch (PersistenceException Pe) {
        	Pe.printStackTrace();
        }
        return cnt;
	}
	
	
	/**
	 * 사이트 문의 수정
	 * @param uqVO
	 * @return
	 */
	public int modifySiteQ(UserQnaVO uqVO) {
		int cnt = 0;
		try {
			cnt = uqDAO.updateSiteQuestion(uqVO);
		} catch (PersistenceException Pe) {
			Pe.printStackTrace();
		}
		return cnt;
	}
	
	
	
	
	}//class

