package egovframework.cschool.web;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ibm.icu.util.Calendar;

import egovframework.com.cop.bbs.service.BoardVO;
import egovframework.com.cop.bbs.service.EgovBBSManageService;
import egovframework.com.utl.fcc.service.EgovDateUtil;

/**
 * C-School 컨트롤러 클래스
 */

@Controller
public class CSchoolController {
	
    @Resource(name = "EgovBBSManageService")
    private EgovBBSManageService bbsMngService;


    //protected Logger log = Logger.getLogger(this.getClass());
    
    /**
     * 소개 - 참여학과
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cschool/about01.do")
    public String about01(ModelMap model) throws Exception {
		return "egovframework/cschool/about01";
    }
    
    /**
     * 소개 - 인재상
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cschool/about02.do")
    public String about02(ModelMap model) throws Exception {
		return "egovframework/cschool/about02";
    }
    
    /**
     * 교육과정 - 로드맵
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cschool/course01.do")
    public String course01(ModelMap model) throws Exception {
		return "egovframework/cschool/course01";
    }

    /**
     * 교육과정 - 교과목
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cschool/course02.do")
    public String course02(ModelMap model) throws Exception {
		return "egovframework/cschool/course02";
    }

    /**
     * 교육과정 - 비교과프로그램
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cschool/course03.do")
    public String course03(ModelMap model) throws Exception {
		return "egovframework/cschool/course03";
    }

    /**
     * C-Advisor 상담 예약
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cschool/cadvisor.do")
    public String cadvisor(ModelMap model) throws Exception {
    	// TODO 로그인 체크 후, 로그인정보 추출후 보내자
		return "forward:/cop/bbs/addBoardArticle.do?bbsId=BBSMSTR_000000000021";
    }
    
    /**
     * C-Advisor 상담 예약 달력
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cschool/calendar.do")
    public String calendar(@ModelAttribute("searchVO") BoardVO boardVO, @RequestParam Map<String, String> params, ModelMap model) throws Exception {
    	
    	System.out.println("params : " + params.toString());
    	
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
    	
    	
    	model.addAttribute("today", EgovDateUtil.getToday());
    	// TODO 그 주의 일자 체크 및 공휴일 체크
    	// TODO 상담불가능한 날짜 체크
    	
    	
    	// 예약신청,완료된 건수 조회(조건: 위의 날짜 안에 든놈으로)
    	boardVO.setSearchBgnDe(thisWeek[0]);
    	boardVO.setSearchEndDe(thisWeek[6]);
    	
    	model.addAttribute("resvList",bbsMngService.selectResvList(boardVO));
    	 
    	return "egovframework/cschool/calendar";
    }

    /**
     * C-Office 소개
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/cschool/coffice.do")
    public String coffice(ModelMap model) throws Exception {
		return "egovframework/cschool/coffice";
    }

}
