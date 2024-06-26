package kr.co.sist.aak.module.admin.noticeManagement.service;

import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.aak.domain.admin.NoticeManagementDomain;
import kr.co.sist.aak.domain.admin.vo.NoticeManagementVO;
import kr.co.sist.aak.module.admin.noticeManagement.dao.NoticeManagementDAO;

@Service
public class NoticeManagementService {
	@Autowired(required = false)
	private NoticeManagementDAO nmDAO;

	/**
	 * 선택 한 공지사항의 상세 정보를 출력하는 method. 작성자: 김일신
	 * 
	 * @param noti_no
	 * @return
	 */
	public NoticeManagementDomain searchOneNotice(String noti_no) {
		NoticeManagementDomain nmd = null;

		try {
			nmd = nmDAO.selectOneNotice(noti_no);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return nmd;
	}

	/**
	 * 셀렉트값에 따라 출력되는 결과의 값이 다름 status 0: 예약 1: 게시 2:삭제 3:전체 게시글 조회. 작성자: 김일신
	 * 
	 * @param status
	 * @return
	 */
	public String searchNoticeStatus(int status) {
		List<NoticeManagementDomain> list = null;
		JSONObject jsonObj = new JSONObject();
		try {
			list = nmDAO.selectNoticeStatus(status);
			if (status == 3) {
				list = nmDAO.selectAllNotice();
			}
		} catch (PersistenceException pe) {
		} finally {
			JSONArray jsonArr = new JSONArray();
			JSONObject jsonTemp = null;
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			for (NoticeManagementDomain temp : list) {
				jsonTemp = new JSONObject();
				jsonTemp.put("noti_no", temp.getNoti_no());
				jsonTemp.put("write_date", sdf.format(temp.getWrite_date()));
				jsonTemp.put("title", temp.getTitle());

				String status1 = temp.getStatus();
				if (status1.equals("RESV")) {
					status1 = "예약";
				} else if (status1.equals("DELT")) {
					status1 = "삭제";
				} else {
					status1 = "게시";
				}

				jsonTemp.put("status", status1);
				jsonArr.add(jsonTemp);
			}
			jsonObj.put("list", jsonArr);
		}
		return jsonObj.toJSONString();

	}

	/**
	 * 공지사항의 제목을 검색하는 method. title이 null이라면 전체 공지사항이 검색되도록 설정함. 작성자: 김일신
	 * 
	 * @param title
	 * @return
	 */
	public List<NoticeManagementDomain> searchNoticeTitle(String title) {
		List<NoticeManagementDomain> list = null;

		try {
			list = nmDAO.selectNoticeTitle(title);

			if ("".equals(title)) {
				list = nmDAO.selectAllNotice();
			}

		} catch (PersistenceException pe) {
			pe.printStackTrace();

		} finally {
			for (NoticeManagementDomain temp : list) {
				if (temp.getStatus().equals("RESV")) {
					temp.setStatus("예약");
				} else if (temp.getStatus().equals("DELT")) {
					temp.setStatus("삭제");

				} else {
					temp.setStatus("게시");

				}
			}

		}

		return list;

	}

	/**
	 * 모든 공지사항의 리스트를 출력하는 method. 공지사항의 status가 RESV: 예약. 공지사항의 status가 DELT: 삭제.
	 * 나머지 :게시. 로 변환하여 출력한다. 작성자: 김일신
	 * 
	 * @return
	 */
	public List<NoticeManagementDomain> searchAllNotice() {
		List<NoticeManagementDomain> list = null;
		try {
			list = nmDAO.selectAllNotice();
		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {
			for (NoticeManagementDomain temp : list) {
				if (temp.getStatus().equals("RESV")) {
					temp.setStatus("예약");
				} else if (temp.getStatus().equals("DELT")) {
					temp.setStatus("삭제");

				} else {
					temp.setStatus("게시");

				}
			}
		}
		return list;
	}

	/**
	 * 공지사항 작성 시 공지사항 번호의 최고값을 가져와 +1하여 반환하는 method.
	 *  작성자: 김일신
	 * 
	 * @return
	 */
	public String searchMaxNoticeVal() {
		String maxVal = "";

		StringBuffer pre = new StringBuffer("A_NOT");

		try {
			maxVal = nmDAO.selectMaxValue();
			int num = Integer.parseInt(maxVal.substring(6)) + 1;
			String nextVal = String.format("%05d", num);
			pre.append(nextVal);
		} catch (PersistenceException e) {
			e.printStackTrace();
		}
		return pre.toString();
	}

	/**
	 * 공지사항을 업로드 하는 method
	 * 
	 * @param nVO
	 * @return
	 */
	public int addNotice(NoticeManagementVO nVO) {
		int cnt = 0;
		try {
			cnt = nmDAO.insertNotice(nVO);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return cnt;
	}

	/**
	 * 선택한 공지사항의 제목, 이미지, 내용을 수정하는 method.
	 * 작성자 : 김일신
	 * @param nVO
	 * @return
	 */
	public int modifyNotice(NoticeManagementVO nVO) {
		int cnt = 0;
		try {
			cnt = nmDAO.updateNotice(nVO);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		return cnt;
	}

	/**
	 * 선택힌 공지사항을 지우는 method.
	 * 작성자 : 김일신
	 * @param noti_no
	 * @return
	 */
	public int removeNotice(String noti_no) {
		int cnt = 0;

		try {
			cnt = nmDAO.deleteNotice(noti_no);
		} catch (PersistenceException pe) {

		}

		return cnt;

	}
	public String searchResvInfomation() {
		List<NoticeManagementDomain> list = null;
		JSONObject jsonObj = new JSONObject();
		int cnt =0;
		try {
			cnt =nmDAO.selectResvCnt();
			list = nmDAO.selectResvTitle();
			JSONArray jsonArr = new JSONArray();
			JSONObject jsonTemp = null;
			for(NoticeManagementDomain temp:list) {
				jsonTemp = new JSONObject();
				jsonTemp.put("title", temp.getTitle());
				jsonArr.add(jsonTemp);
			}
			jsonObj.put("list", jsonArr);
			jsonObj.put("cnt", cnt);
		}catch (PersistenceException pe) {
		pe.printStackTrace();
		}
		return jsonObj.toJSONString();
	}
	
	public String searchRecentNotice() {
	NoticeManagementDomain nm =null;
	JSONObject jsonObj = new JSONObject();
	try {
		//작성관리자 ID,날짜,제목, 내용
		nm =nmDAO.selectRecentNotice();
		JSONArray jsonArr = new JSONArray();
		JSONObject jsonTemp = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		jsonObj.put("title", nm.getTitle());
		jsonObj.put("write_date", sdf.format(nm.getWrite_date()));
		jsonObj.put("id", nm.getId());
		String content = nm.getContent();
		if(content.length()>9) {
			content.substring(0, 10).concat("...");
		}
		jsonObj.put("content", content);
		//jsonArr.add(jsonTemp);
		//jsonObj.put("notice", jsonArr);
	}catch (PersistenceException pe) {
		pe.printStackTrace();
	}
	return jsonObj.toJSONString();
	}
	
	public String searchStatusCnt(){
		JSONObject jsonObj = new JSONObject();
		try {
			int resv= nmDAO.selectCntResv();
			int post= nmDAO.selectCntPost();
			int delt= nmDAO.selectCntDelt();
			jsonObj.put("resv", resv);
			jsonObj.put("post", post);
			jsonObj.put("delt", delt);
			
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return jsonObj.toJSONString();
	}
	
	
}
