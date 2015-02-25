package egovframework.admin.web;

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
 * 메인 컨트롤러 클래스
 */

@Controller
public class AdminController {

    //protected Logger log = Logger.getLogger(this.getClass());
    
    /**
     * 관리자 메인
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/main.do")
    public String adminMain(ModelMap model) throws Exception {
    	// 로그인 체크
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
    public String cs_cadvisor(ModelMap model) throws Exception {
		return "egovframework/admin/cs_cadvisor";
    }

    /**
     * 상담예약 달력
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/calendar.do")
    public String calendar(ModelMap model) throws Exception {
		return "egovframework/admin/calendar";
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
