package kr.co.sist.aak.module.student.myPage.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.util.SpringMyBatis;

@Component
public class MyLectureRepository {

	@Autowired(required = false)
	private SpringMyBatis myBatisDAO;
	
}
