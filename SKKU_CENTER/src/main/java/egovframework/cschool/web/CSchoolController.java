package egovframework.cschool.web;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmodules.validation.commons.DefaultBeanValidator;

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
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

/**
 * C-School 컨트롤러 클래스
 */

@Controller
public class CSchoolController {

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
    public String calendar(ModelMap model) throws Exception {
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
