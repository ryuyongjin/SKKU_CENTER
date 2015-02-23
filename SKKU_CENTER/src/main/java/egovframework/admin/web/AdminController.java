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
}
