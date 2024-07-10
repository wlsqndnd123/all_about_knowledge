package kr.co.sist.aak.module.instructor.lectureManage.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.admin.NoticeManagementDomain;
import kr.co.sist.aak.domain.instructor.InstructorInfoDomain;
import kr.co.sist.aak.domain.instructor.LectureDomain;
import kr.co.sist.aak.domain.instructor.NoticeDomain;
import kr.co.sist.aak.domain.instructor.vo.LectureLessonVO;
import kr.co.sist.aak.domain.instructor.vo.LectureVO;
import kr.co.sist.aak.domain.student.domain.InstructorDomain;
import kr.co.sist.aak.module.instructor.lectureManage.dao.LectureDAO;

@Service
public class LectureService {

	@Autowired(required = false)
	private LectureDAO ltDAO;
	//강의관리 리스트 
	public List<LectureDomain> lectureAll(){
		
		List<LectureDomain> list=null;
		
		try {
			list=ltDAO.selectAllLecture();
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}
	//강의관리 리스트 
	public String selectSubtitle(String subCode){
		
		List<LectureDomain> list=null;
		
		JSONObject jsonObject=new JSONObject();
		try {
			list=ltDAO.selectSubtitle(subCode);
			JSONArray jsonArray=new JSONArray();
			JSONObject jsonTemp=null;
			for( LectureDomain ld :  list ) {
				jsonTemp=new JSONObject();
				jsonTemp.put("sub_code", ld.getSub_code());
				jsonTemp.put("sub_title",ld.getSub_title());
				
				jsonArray.add(jsonTemp);
			}
			jsonObject.put("data", jsonArray);
			
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return jsonObject.toJSONString();
	}
	
	//승인여부에 따른 검색결과
	public String searchQnaStatus(int status) {
		List<LectureDomain> list = null;
		JSONObject jsonObj = new JSONObject();
		try {
			list = ltDAO.selectLectureStatus(status);
			
		} catch (PersistenceException pe) {
		} finally {
			JSONArray jsonArr = new JSONArray();
			JSONObject jsonTemp = null;
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			for (LectureDomain temp : list) {
				jsonTemp = new JSONObject();
				jsonTemp.put("sub_title", temp.getSub_title());
				//jsonTemp.put("write_date", sdf.format(temp.getWrite_date()));
				jsonTemp.put("total_no", temp.getTotal_no());
				jsonTemp.put("total_time", temp.getTotal_time());
				jsonTemp.put("status", temp.getStatus());
				jsonTemp.put("reason", temp.getReason());

				String status1 = temp.getStatus();
				if (status1.equals("Y")) {
					status1 = "승인";
				}else {
					status1 = "반려";
				}

				jsonTemp.put("status", status1);
				jsonArr.add(jsonTemp);
			}
			jsonObj.put("list", jsonArr);
		}
		return jsonObj.toJSONString();

	}
	
	//제목에 대한 검색결과
	public List<LectureDomain> searchLectureTitle(String sub_title) {
		List<LectureDomain> list = null;

		try {
			list = ltDAO.selectLectureTitle(sub_title);

			if ("".equals(sub_title)) {
				list = ltDAO.selectAllLecture();
			}

		} catch (PersistenceException pe) {
			pe.printStackTrace();

		} finally {
			for (LectureDomain temp : list) {
				if (temp.getStatus().equals("Y")) {
					temp.setStatus("승인");
				} else {
					temp.setStatus("반려");

				}
			}

		}

		return list;

	}
	
	//강의관리 상세
	public LectureDomain lectureDetail(String sub_code) {
		LectureDomain list=null;
		
		try {
			list=ltDAO.lectureDetail(sub_code);
//			if(sub_code == "") {
//				sub_code="SUB_000005";
//			}
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}

	//강의 상세정보
	public LectureVO lectureInfo(String sub_code) {
		LectureVO lecVO=null;
		
		try {
			lecVO=ltDAO.insertLecture(sub_code);
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		return lecVO;
	}
	
	//강의목차
	public LectureLessonVO lecLesson(String sub_code) {
		LectureLessonVO lecLessVO=null;
		
		try {
			lecLessVO=ltDAO.lectureLesson(sub_code);
		}catch(PersistenceException pe) {
			pe.printStackTrace();
			
		}
		return lecLessVO;
	}
	
	//과목공지사항
	public NoticeDomain noticeone(String sub_code) {
		NoticeDomain ntd=null;
		
		try {
			ntd=ltDAO.selectNotice(sub_code);
		}catch(PersistenceException pe) {
			pe.printStackTrace();
			
		}
		return ntd;
	}
	
	//상위카테고리
	public List<LectureDomain> selectCategory(){
		List<LectureDomain> list= null;
		
		try {
			list=ltDAO.selectCategory();
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}
}
