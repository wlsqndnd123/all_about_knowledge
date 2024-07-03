package kr.co.sist.aak.domain.admin;





public class DashBoardDomain {
	
	private int 
	NeedChkQuestion_count,
	NeedChkSubject_count,
	ExitMember_count,
	AllInstructor_count,
	Allmember_count;

	public DashBoardDomain() {
		
	}

	public DashBoardDomain(int needChkQuestion_count, int needChkSubject_count, int exitMember_count,
			int allInstructor_count, int allmember_count) {
		super();
		NeedChkQuestion_count = needChkQuestion_count;
		NeedChkSubject_count = needChkSubject_count;
		ExitMember_count = exitMember_count;
		AllInstructor_count = allInstructor_count;
		Allmember_count = allmember_count;
	}

	public int getNeedChkQuestion_count() {
		return NeedChkQuestion_count;
	}

	public void setNeedChkQuestion_count(int needChkQuestion_count) {
		NeedChkQuestion_count = needChkQuestion_count;
	}

	public int getNeedChkSubject_count() {
		return NeedChkSubject_count;
	}

	public void setNeedChkSubject_count(int needChkSubject_count) {
		NeedChkSubject_count = needChkSubject_count;
	}

	public int getExitMember_count() {
		return ExitMember_count;
	}

	public void setExitMember_count(int exitMember_count) {
		ExitMember_count = exitMember_count;
	}

	public int getAllInstructor_count() {
		return AllInstructor_count;
	}

	public void setAllInstructor_count(int allInstructor_count) {
		AllInstructor_count = allInstructor_count;
	}

	public int getAllmember_count() {
		return Allmember_count;
	}

	public void setAllmember_count(int allmember_count) {
		Allmember_count = allmember_count;
	}
	
	
}

