package kr.co.sist.aak.domain.instructor;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class InstructorLoginDomain {
	private String inst_id,password,auth;

	public InstructorLoginDomain() {
		super();
	}

	public InstructorLoginDomain(String inst_id, String password) {
		super();
		this.inst_id = inst_id;
		this.password = password;
	}

	@Override
	public String toString() {
		return "InstructorLoginDomain [inst_id=" + inst_id + ", password=" + password + "]";
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
