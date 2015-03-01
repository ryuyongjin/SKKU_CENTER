package egovframework.admin.web;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;
import org.springmodules.validation.commons.DefaultBeanValidator;

import com.ibm.icu.util.Calendar;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.service.EgovFileMngService;
import egovframework.com.cmm.service.EgovFileMngUtil;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.com.cop.bbs.service.BoardMasterVO;
import egovframework.com.cop.bbs.service.BoardVO;
import egovframework.com.cop.bbs.service.EgovBBSAttributeManageService;
import egovframework.com.cop.bbs.service.EgovBBSCommentService;
import egovframework.com.cop.bbs.service.EgovBBSManageService;
import egovframework.com.cop.bbs.service.EgovBBSSatisfactionService;
import egovframework.com.cop.bbs.service.EgovBBSScrapService;
import egovframework.com.utl.fcc.service.EgovDateUtil;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * 메인 컨트롤러 클래스
 */

@Controller
public class AdminController {

    //protected Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "EgovBBSManageService")
    private EgovBBSManageService bbsMngService;
    
	@Resource(name = "propertiesService")
    protected EgovPropertyService propertyService;
	
    /**
     * 관리자 메인
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/main.do")
    public String adminMain(ModelMap model) throws Exception {
		return "egovframework/admin/index";
    }
    
    /**
     * 상담예약
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/cs_cadvisor.do")
    public String cs_cadvisor(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception {
    	
    	if(!"".equals(boardVO.getNttId()) &&!"".equals(boardVO.getStatus())) {
    		bbsMngService.updateResvInfo(boardVO);
    		model.addAttribute("msg", "변경되었습니다.");
    	}
    	
    	boardVO.setBbsId("BBSMSTR_000000000021");
    	
		return "forward:/cop/bbs/selectBoardList.do";
    }

    /**
     * 상담예약 달력
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/calendar.do")
    public String calendar(@ModelAttribute("searchVO") BoardVO boardVO, @RequestParam Map<String, String> params, ModelMap model) throws Exception {
    	
    	System.out.println("params : " + params.toString());
    	model.addAttribute("params", params);
    	
    	Calendar cal = Calendar.getInstance();
    	
    	cal.setFirstDayOfWeek(Calendar.MONDAY); // 한주의 시작을 월요일로
    	
    	String year        = params.get("year");
    	String month       = params.get("month");
    	String prevWeek    = params.get("prevWeek");
    	String nextWeek    = params.get("nextWeek");
    	String weekOfMonth = params.get("weekOfMonth");
    	String exChangedDate = params.get("changedDate");
    	
    	// 상담시간 
    	String[] timeTable = {"10:00","10:30","11:00","11:30","12:00","12:30",
				  			  "13:00","13:30","14:00","14:30","15:00","15:30","16:00","16:30"};
    	
    	String startDayOfWeek = null;
    	String changedDate 	  = null;
    	
    	String[] thisWeek       = null;	// yyyymmdd
    	String[] thisWeekHan    = null; // yyyy년mm월dd일
    	String[] thisWeekHangul = null; // mm.dd(요일)
    	
    	if( year == null ) {
        	// 현재날짜 셋팅 
    		// 현재 몇번째 주인지 조회
    		
    		year  = cal.get(Calendar.YEAR) + "";
        	month = (cal.get(Calendar.MONTH) + 1) + ""; // 1월은 0 리턴
        	weekOfMonth = Integer.toString(cal.get(Calendar.WEEK_OF_MONTH));
    	} else {
	    	// 넘어온 값중에 다음주면 다음주 조회
	    	// 이전주면 이전주 조회
    		// 년도 월 주 넘어오면 그 주 조회
    		cal.clear();
    		cal.set(Calendar.YEAR, Integer.parseInt(year));
    		cal.set(Calendar.MONTH,Integer.parseInt(month)-1);
    		cal.set(Calendar.WEEK_OF_MONTH, Integer.parseInt(weekOfMonth));
    	}
    	
    	startDayOfWeek = cal.get(Calendar.DAY_OF_MONTH) + ""; // 그 주의 시작일자
    	
    	System.out.println(" 이번 주 시작일 - " + startDayOfWeek);
    	
    	model.addAttribute("year", year);
    	model.addAttribute("month", month);
    	model.addAttribute("weekOfMonth", weekOfMonth);  
    	
    	
    	// 이전 주, 다음주
    	if(month.length() == 1)
    		month = "0" + month;
    	
    	if(startDayOfWeek.length() == 1)
    		startDayOfWeek = "0" + startDayOfWeek;
    	
    	String initDate = year + month + startDayOfWeek;
    	if(exChangedDate != null && !"".equals(exChangedDate)) {
			initDate = exChangedDate;
		}
    	
    	if( prevWeek != null && prevWeek.equals("Y") ) {
    		
    		if(exChangedDate != null) { // 주이동 기능을 이미 사용했었다면.. 변경된 날짜를 초기날짜로 치환
    			initDate = exChangedDate;
    		}
    		changedDate = EgovDateUtil.addYearMonthDay(initDate,0,0,-7);
    		
    		thisWeek 	   = EgovDateUtil.weekCalendar(changedDate, "A");
        	thisWeekHan    = EgovDateUtil.weekCalendar(changedDate, "B");
        	thisWeekHangul = EgovDateUtil.weekCalendar(changedDate, "C");
        	
        	model.addAttribute("changedDate", changedDate);
        	
    	} else if( nextWeek != null && nextWeek.equals("Y") ) {
    		
    		changedDate = EgovDateUtil.addYearMonthDay(initDate,0,0,7);
    		
    		thisWeek 	   = EgovDateUtil.weekCalendar(changedDate, "A");
        	thisWeekHan    = EgovDateUtil.weekCalendar(changedDate, "B");
        	thisWeekHangul = EgovDateUtil.weekCalendar(changedDate, "C");
        	
        	model.addAttribute("changedDate", changedDate);
        	
    	} else {
    		thisWeek 	   = EgovDateUtil.getRangeDateOfWeek(year+month, Integer.parseInt(weekOfMonth), "A");
        	thisWeekHan    = EgovDateUtil.getRangeDateOfWeek(year+month, Integer.parseInt(weekOfMonth), "B");
        	thisWeekHangul = EgovDateUtil.getRangeDateOfWeek(year+month, Integer.parseInt(weekOfMonth), "C");
    	}
    	
    	model.addAttribute("changedDate",thisWeek[0]);
    	model.addAttribute("thisWeek", thisWeek);
    	model.addAttribute("thisWeekHan", thisWeekHan);
    	model.addAttribute("thisWeekHangul", thisWeekHangul);
    	model.addAttribute("timeTable", timeTable);
    	
    	model.addAttribute("startDay",thisWeek[0]);
    	model.addAttribute("endDay",thisWeek[6]);
    	// TODO 그 주의 일자 체크 및 공휴일 체크
    	// TODO 상담불가능한 날짜 체크
    	
    	
    	// 예약신청,완료된 건수 조회(조건: 위의 날짜 안에 든놈으로)
    	boardVO.setSearchBgnDe(thisWeek[0]);
    	boardVO.setSearchEndDe(thisWeek[6]);
    	
    	model.addAttribute("resvList",bbsMngService.selectResvList(boardVO));
    	
		return "egovframework/admin/calendar";
    }
    
    /**
     * 예약상태 수정
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/calendar_edit.do")
    public String calendarEdit(@ModelAttribute("searchVO") BoardVO boardVO, @RequestParam Map<String, String> params, ModelMap model) throws Exception {
    	
    	//LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	
    	if("regTran".equals(params.get("mode"))) {
    		bbsMngService.insertBoardArticle(boardVO);
    		model.addAttribute("msg", "등록되었습니다."); 
    	} else if("mod".equals(params.get("mode"))) { // 업데이트
    		bbsMngService.updateResvInfo(boardVO);
    		model.addAttribute("msg", "수정되었습니다.");
    	} else if("del".equals(params.get("mode"))) {
    		bbsMngService.deleteResvInfo(boardVO);
    		model.addAttribute("msg", "삭제되었습니다.");
    		model.addAttribute("deletedNttId", Long.toString(boardVO.getNttId()));
    	}
    	
    	model.addAttribute("params", params);
    	
    	if(!"reg".equals(params.get("mode")) && !"regTran".equals(params.get("mode"))) 
    		model.addAttribute("resvInfo",bbsMngService.selectResvInfo(boardVO)); // 조회
    	
		return "egovframework/admin/calendar_edit";
    }
    
    /**
     * 회원관리
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/member_list.do")
    public String member_list(ModelMap model) throws Exception {
		return "egovframework/admin/member_list";
    }
    
    /**
     * 공지사항
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/notice.do")
    public String notice(ModelMap model) throws Exception {
		return "egovframework/admin/notice";
    }
    
    /**
     * 행사신청관리
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/event_applicate.do")
    public String event_applicate(ModelMap model) throws Exception {
		return "egovframework/admin/event_applicate";
    }
    
    /**
     * 행사등록관리
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/event_write.do")
    public String event_write(ModelMap model) throws Exception {
		return "egovframework/admin/event_write"; 
    }
    
    /**
     * 개인정보보호정책
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/private.do")
    public String privateRule(ModelMap model) throws Exception {
		return "egovframework/admin/private";
    }
    
    /**
     * 학생소감
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/cs_student.do")
    public String cs_student(ModelMap model) throws Exception {
		return "egovframework/admin/cs_student";
    }
    
    /**
     * 갤러리
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/cs_gallery.do")
    public String cs_gallery(ModelMap model) throws Exception {
		return "egovframework/admin/cs_gallery";
    }
    
    /**
     * FAQ
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/cs_faq.do")
    public String cs_faq(ModelMap model) throws Exception {
		return "egovframework/admin/cs_faq";
    }
    
    /**
     * 교육과정 교과목
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/cs_course.do")
    public String cs_course(ModelMap model) throws Exception {
		return "egovframework/admin/cs_course";
    }
    
    /**
     * 글로벌 창조적 챌린저 프로그램
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/ace_challenger.do")
    public String ace_challenger(ModelMap model) throws Exception {
		return "egovframework/admin/ace_challenger";
    }
    
    /**
     * 창의리더 공모전
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/ace_show.do")
    public String ace_show(ModelMap model) throws Exception {
		return "egovframework/admin/ace_show";
    }
    
    /**
     * 창의리더 특강
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/ace_special.do")
    public String ace_special(ModelMap model) throws Exception {
		return "egovframework/admin/ace_special";
    }
    
    /**
     * 연구보고서 및 자료
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/data.do")
    public String data(ModelMap model) throws Exception {
		return "egovframework/admin/data";
    }
}
