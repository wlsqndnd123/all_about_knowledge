package kr.co.sist.aak.module.admin.dashboard.dao;

public class DashBoardDAO {
	
	private static DashBoardDAO dbDAO;
	
	private DashBoardDAO() {
		
	}
	
	public static DashBoardDAO getInstance() {
		if(dbDAO == null) {
			dbDAO = new DashBoardDAO();
		}
		return dbDAO;
	}
	
	
	public int selectCountAllMember() {
		int cnt = 0;
		
		return cnt;
	}
	public int selectCountAllInstructor() {
		int cnt = 0;
		
		return cnt;
	}
	public int selectCountExitMember() {
		int cnt = 0;
		
		return cnt;
	}
	public int selectCountNeedChkSubject() {
		int cnt = 0;
		
		return cnt;
	}
	public int selectCountNeedChkQuestion() {
		int cnt = 0;
		
		return cnt;
	}
	

}
