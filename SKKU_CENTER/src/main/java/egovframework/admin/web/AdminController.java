package egovframework.admin.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springmodules.validation.commons.DefaultBeanValidator;

import com.ibm.icu.util.Calendar;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.service.EgovFileMngService;
import egovframework.com.cmm.service.EgovFileMngUtil;
import egovframework.com.cmm.service.FileVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.com.cop.bbs.service.Board;
import egovframework.com.cop.bbs.service.BoardMaster;
import egovframework.com.cop.bbs.service.BoardMasterVO;
import egovframework.com.cop.bbs.service.BoardVO;
import egovframework.com.cop.bbs.service.EgovBBSAttributeManageService;
import egovframework.com.cop.bbs.service.EgovBBSManageService;
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
	
	@Resource(name = "EgovBBSAttributeManageService")
    private EgovBBSAttributeManageService bbsAttrbService;
	
	@Resource(name = "EgovFileMngService")
    private EgovFileMngService fileMngService;

    @Resource(name = "EgovFileMngUtil")
    private EgovFileMngUtil fileUtil;
	
    @Autowired
    private DefaultBeanValidator beanValidator;
	
	protected Logger log = Logger.getLogger(this.getClass());
	
	/**
     * XSS 방지 처리.
     * 
     * @param data
     * @return
     */
    protected String unscript(String data) {
        if (data == null || data.trim().equals("")) {
            return "";
        }
        
        String ret = data;
        
        ret = ret.replaceAll("<(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)", "&lt;script");
        ret = ret.replaceAll("</(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)", "&lt;/script");
        
        ret = ret.replaceAll("<(O|o)(B|b)(J|j)(E|e)(C|c)(T|t)", "&lt;object");
        ret = ret.replaceAll("</(O|o)(B|b)(J|j)(E|e)(C|c)(T|t)", "&lt;/object");
        
        ret = ret.replaceAll("<(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)", "&lt;applet");
        ret = ret.replaceAll("</(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)", "&lt;/applet");
        
        ret = ret.replaceAll("<(E|e)(M|m)(B|b)(E|e)(D|d)", "&lt;embed");
        ret = ret.replaceAll("</(E|e)(M|m)(B|b)(E|e)(D|d)", "&lt;embed");
        
        ret = ret.replaceAll("<(F|f)(O|o)(R|r)(M|m)", "&lt;form");
        ret = ret.replaceAll("</(F|f)(O|o)(R|r)(M|m)", "&lt;form");

        return ret;
    }
    
    
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
    public String notice(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception {
    	
    	// 관리자인지 체크
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
    	
    	
		log.debug(this.getClass().getName() + " user.getId() "+ user.getId());
		log.debug(this.getClass().getName() + " user.getName() "+ user.getName());
		log.debug(this.getClass().getName() + " user.getUniqId() "+ user.getUniqId());
		log.debug(this.getClass().getName() + " user.getOrgnztId() "+ user.getOrgnztId());
		log.debug(this.getClass().getName() + " user.getUserSe() "+ user.getUserSe());
		log.debug(this.getClass().getName() + " user.getEmail() "+ user.getEmail());
    	
		
		// BBS_ID 셋팅
		if( boardVO.getBbsId() == null || "".equals(boardVO.getBbsId()) ) {
			boardVO.setBbsId("noticeAll");
		}
		
		boardVO.setPageUnit(propertyService.getInt("pageUnit"));
		boardVO.setPageSize(propertyService.getInt("pageSize"));
	
		PaginationInfo paginationInfo = new PaginationInfo();
		
		paginationInfo.setCurrentPageNo(boardVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(boardVO.getPageUnit());
		paginationInfo.setPageSize(boardVO.getPageSize());
	
		boardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		boardVO.setLastIndex(paginationInfo.getLastRecordIndex());
		boardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
	
		// Map<String, Object> map = bbsMngService.selectBoardArticles(boardVO, vo.getBbsAttrbCode());
		Map<String, Object> map = bbsMngService.selectBoardArticles(boardVO, "BBSA03"); // 공지게시판
		
		int totCnt = Integer.parseInt((String)map.get("resultCnt"));
		
		paginationInfo.setTotalRecordCount(totCnt);
	
		model.addAttribute("resultList", map.get("resultList"));
		model.addAttribute("resultCnt", map.get("resultCnt"));
		model.addAttribute("boardVO", boardVO);
		model.addAttribute("paginationInfo", paginationInfo);
	
		return "egovframework/admin/notice";
    }
    
    
    /**
     * 공지사항 글쓰기 화면 이동
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/noticeWrite.do")
    public String noticeWrite(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception {
    	
    	LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
    	
		return "egovframework/admin/notice_write";
    }
    
    
    /**
     * 게시물을 등록한다.
     * 
     * @param boardVO
     * @param board
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    @RequestMapping("/admin/insertNotice.do")
    public String insertNotice(final MultipartHttpServletRequest multiRequest, @ModelAttribute("searchVO") BoardVO boardVO,
	    @ModelAttribute("bdMstr") BoardMaster bdMstr, @ModelAttribute("board") Board board, BindingResult bindingResult, SessionStatus status,
	    @RequestParam Map<String, String> params,  ModelMap model) throws Exception {

		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		
		beanValidator.validate(board, bindingResult);
		
		if (bindingResult.hasErrors()) {
	
		    BoardMasterVO master = new BoardMasterVO();
		    BoardMasterVO vo = new BoardMasterVO();
		    
		    vo.setBbsId(boardVO.getBbsId());
		    vo.setUniqId(user.getUniqId());
	
		    master = bbsAttrbService.selectBBSMasterInf(vo);
		    
		    model.addAttribute("bdMstr", master);
	
		    //----------------------------
		    // 기본 BBS template 지정 
		    //----------------------------
		    if (master.getTmplatCours() == null || master.getTmplatCours().equals("")) {
			master.setTmplatCours("css/egovframework/com/cop/tpl/egovBaseTemplate.css");
		    }
	
		    model.addAttribute("brdMstrVO", master);
		    ////-----------------------------
	
		    return "/admin/notice_write";
		}
		
		if (isAuthenticated) {
		    List<FileVO> result = null;
		    String atchFileId = "";
		     
		    final Map<String, MultipartFile> files = multiRequest.getFileMap();
		    if (!files.isEmpty()) {
			result = fileUtil.parseFileInf(files, "BBS_", 0, "", "");
			atchFileId = fileMngService.insertFileInfs(result);
		    }
		    board.setAtchFileId(atchFileId);
		    board.setFrstRegisterId(user.getUniqId());
		    board.setBbsId(board.getBbsId());
		    
		    
		    //board.setNtcrNm("");	// dummy 오류 수정 (익명이 아닌 경우 validator 처리를 위해 dummy로 지정됨)
		    board.setPassword("");	// dummy 오류 수정 (익명이 아닌 경우 validator 처리를 위해 dummy로 지정됨)
		    
		    
		    board.setNtcrId(user.getId());   //게시물 통계 집계를 위해 등록자 ID 저장
		    board.setNtcrNm(user.getName()); //게시물 통계 집계를 위해 등록자 Name 저장
		    
		    board.setNttCn(unscript(board.getNttCn()));	// XSS 방지
		    
		    bbsMngService.insertBoardArticle(board);
		}
		
		return "forward:/admin/notice.do";
    }
    
    /**
     * 게시물에 대한 상세 정보를 조회한다.
     * 
     * @param boardVO
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/noticeView.do")
    public String noticeView(@ModelAttribute("searchVO") BoardVO boardVO, ModelMap model) throws Exception {
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
	
		// 조회수 증가 여부 지정
		boardVO.setPlusCount(true);
		
		boardVO.setLastUpdusrId(user.getUniqId());
		BoardVO vo = bbsMngService.selectBoardArticle(boardVO);
	
		model.addAttribute("result", vo);
		//CommandMap의 형태로 개선????
	
		model.addAttribute("sessionUniqId", user.getUniqId());
	
		BoardMasterVO master = new BoardMasterVO();
		
		master.setBbsId(boardVO.getBbsId());
		master.setUniqId(user.getUniqId());
		
		BoardMasterVO masterVo = bbsAttrbService.selectBBSMasterInf(master);
	
		model.addAttribute("brdMstrVO", masterVo);
	
		return "egovframework/admin/notice_view";
    }
    
    /**
     * 게시물 수정을 위한 수정페이지로 이동한다.
     * 
     * @param boardVO
     * @param vo
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/forUpdateNotice.do")
    public String selectNoticeForUpdt(@ModelAttribute("searchVO") BoardVO boardVO, @ModelAttribute("board") BoardVO vo, ModelMap model)
	    throws Exception {

		//log.debug(this.getClass().getName()+"selectBoardArticleForUpdt getNttId "+boardVO.getNttId());
		//log.debug(this.getClass().getName()+"selectBoardArticleForUpdt getBbsId "+boardVO.getBbsId());
	
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
	
		boardVO.setFrstRegisterId(user.getUniqId());
		
		BoardMaster master = new BoardMaster();
		BoardMasterVO bmvo = new BoardMasterVO();
		BoardVO bdvo = new BoardVO();
		
		vo.setBbsId(boardVO.getBbsId());
		
		master.setBbsId(boardVO.getBbsId());
		master.setUniqId(user.getUniqId());
	
		if (isAuthenticated) {
		    bmvo = bbsAttrbService.selectBBSMasterInf(master);
		    bdvo = bbsMngService.selectBoardArticle(boardVO);
		}
	
		model.addAttribute("result", bdvo);
		model.addAttribute("bdMstr", bmvo);
		model.addAttribute("brdMstrVO", bmvo);
		
		return "egovframework/admin/notice_updt";
    }

    /**
     * 게시물에 대한 내용을 수정한다.
     * 
     * @param boardVO
     * @param board
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    @RequestMapping("/admin/updateNotice.do")
    public String updateBoardArticle(final MultipartHttpServletRequest multiRequest, @ModelAttribute("searchVO") BoardVO boardVO,
	    @ModelAttribute("bdMstr") BoardMaster bdMstr, @ModelAttribute("board") Board board, BindingResult bindingResult, ModelMap model,
	    SessionStatus status) throws Exception {

		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
	
		String atchFileId = boardVO.getAtchFileId();
	
		beanValidator.validate(board, bindingResult);
		if (bindingResult.hasErrors()) {
	
		    boardVO.setFrstRegisterId(user.getUniqId());
		    
		    BoardMaster master = new BoardMaster();
		    BoardMasterVO bmvo = new BoardMasterVO();
		    BoardVO bdvo = new BoardVO();
		    
		    master.setBbsId(boardVO.getBbsId());
		    master.setUniqId(user.getUniqId());
	
		    bmvo = bbsAttrbService.selectBBSMasterInf(master);
		    bdvo = bbsMngService.selectBoardArticle(boardVO);
	
		    model.addAttribute("result", bdvo);
		    model.addAttribute("bdMstr", bmvo);
	
		    return "egovframework/admin/notice_updt";
		}
		
		/*
		boardVO.setFrstRegisterId(user.getUniqId());
		BoardMaster _bdMstr = new BoardMaster();
		BoardMasterVO bmvo = new BoardMasterVO();
		BoardVO bdvo = new BoardVO();
		vo.setBbsId(boardVO.getBbsId());
		_bdMstr.setBbsId(boardVO.getBbsId());
		_bdMstr.setUniqId(user.getUniqId());
	
		if (isAuthenticated) {
		    bmvo = bbsAttrbService.selectBBSMasterInf(_bdMstr);
		    bdvo = bbsMngService.selectBoardArticle(boardVO);
		}
		//*/
	
		if (isAuthenticated) {
		    final Map<String, MultipartFile> files = multiRequest.getFileMap();
		    if (!files.isEmpty()) {
			if ("".equals(atchFileId)) {
			    List<FileVO> result = fileUtil.parseFileInf(files, "BBS_", 0, atchFileId, "");
			    atchFileId = fileMngService.insertFileInfs(result);
			    board.setAtchFileId(atchFileId);
			} else {
			    FileVO fvo = new FileVO();
			    fvo.setAtchFileId(atchFileId);
			    int cnt = fileMngService.getMaxFileSN(fvo);
			    List<FileVO> _result = fileUtil.parseFileInf(files, "BBS_", cnt, atchFileId, "");
			    fileMngService.updateFileInfs(_result);
			}
		    }
	
		    board.setLastUpdusrId(user.getUniqId());
		    
		    board.setNtcrNm("");	// dummy 오류 수정 (익명이 아닌 경우 validator 처리를 위해 dummy로 지정됨)
		    board.setPassword("");	// dummy 오류 수정 (익명이 아닌 경우 validator 처리를 위해 dummy로 지정됨)
		    
		    board.setNttCn(unscript(board.getNttCn()));	// XSS 방지
		    
		    bbsMngService.updateBoardArticle(board);
		}
		
		return "forward:/admin/notice.do";
    }

    /**
     * 게시물에 대한 내용을 삭제한다.
     * 
     * @param boardVO
     * @param board
     * @param sessionVO
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/deleteNotice.do")
    public String deleteNotice(@ModelAttribute("searchVO") BoardVO boardVO, @ModelAttribute("board") Board board,
	    @ModelAttribute("bdMstr") BoardMaster bdMstr, ModelMap model) throws Exception {
	
		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
	
		if (isAuthenticated) {
		    board.setLastUpdusrId(user.getUniqId());
		    
		    bbsMngService.deleteBoardArticle(board);
		}
	
		return "forward:/admin/notice.do";
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
