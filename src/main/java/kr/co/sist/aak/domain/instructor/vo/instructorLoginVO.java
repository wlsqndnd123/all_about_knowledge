package kr.co.sist.aak.domain.instructor.vo;



public class instructorLoginVO {

	private String inst_id,password;

	public instructorLoginVO() {
		super();
	}

	public instructorLoginVO(String inst_id, String password) {
		super();
		this.inst_id = inst_id;
		this.password = password;
	}

	@Override
	public String toString() {
		return "instructorLoginVO [inst_id=" + inst_id + ", password=" + password + "]";
	}

	public String getId() {
		return inst_id;
	}

	public void setId(String id) {
		this.inst_id = inst_id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
