package kr.co.sist.aak.module.student.lecture.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.student.UserLectureDomain;
import kr.co.sist.aak.module.student.lecture.dao.UserLectureDAO;

@Service
public class UserLectureService {

	@Autowired(required=false)
	private UserLectureDAO ulDAO;
	
	public List<UserLectureDomain> searchUserLecture(){
		List<UserLectureDomain> list = null;
		try {
			list=ulDAO.selectAllUserLecture();
			System.out.println("aaaaa"+list);
		} catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}//searchUserLecture
}//class
