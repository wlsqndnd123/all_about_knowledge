package kr.co.sist.aak.module.admin.memberManagement.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.admin.MemberManagementDomain;
import kr.co.sist.aak.domain.admin.vo.MemberManagementVO;
import kr.co.sist.aak.util.MybatisDAO;
@Component
public class MemberManagementDAO {
	
	private static MemberManagementDAO memDAO;
	
	private MemberManagementDAO() {
		
	}

	public static MemberManagementDAO getInstance() {
		if(memDAO == null) {
			memDAO = new MemberManagementDAO();
		}
		return memDAO;
	}
	


	public List<MemberManagementDomain> selectMember()throws PersistenceException {
		List<MemberManagementDomain> list = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		list = ss.selectList("kr.co.sist.aak.admin4.selectMember");
		mbDAO.closeHanlder(ss);
		
		
		
		return list;
	
	}
	
	
	
	public int updateMember(MemberManagementVO mmVO) {
		int cnt = 0;
		
		return cnt;
		
	}
	
	
	
	
	
	
	
	
}
