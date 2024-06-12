package kr.co.sist.aak.module.admin.instructorManagement.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.sist.aak.domain.admin.InstructorManagementDomain;
import kr.co.sist.aak.domain.admin.vo.InstructorManagementVO;
import kr.co.sist.aak.util.MybatisDAO;

public class InstructorManagementDAO {
	private static InstructorManagementDAO insDAO;

	private InstructorManagementDAO() {

	}

	public static InstructorManagementDAO getInstance() {
		if (insDAO == null) {
			insDAO = new InstructorManagementDAO();
		}
		return insDAO;
	}

	public List<InstructorManagementDomain> selectAllInstructor() throws PersistenceException {
		List<InstructorManagementDomain> list = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		list= ss.selectList("kr.co.sist.aak.admin2.selectNAllInstructor");
		return list;
	}

	public InstructorManagementDomain selectOneInstructor() throws PersistenceException {
		InstructorManagementDomain insDomain = null;

		return insDomain;
	}

	public int insertInstructor(InstructorManagementVO iVO) {
		int cnt = 0;

		return cnt;
	}

	public int updateInstructor(InstructorManagementVO iVO) {
		int cnt = 0;

		return cnt;
	}

	public int deleteInstructor(String inst_id) {
		int cnt = 0;

		return cnt;
	}

	public static void main(String[] args) {
		InstructorManagementDAO.getInstance().selectAllInstructor();
	}
	

}
