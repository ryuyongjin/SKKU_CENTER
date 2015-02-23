package egovframework.about.web;

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
 * 센터소개 컨트롤러 클래스
 */

@Controller
public class AboutController {

    //protected Logger log = Logger.getLogger(this.getClass());
    
    /**
     * 센터장인사말
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/about/greeting.do")
    public String greeting(ModelMap model) throws Exception {
		return "egovframework/about/greeting";
    }
    
    /**
     * 설립목적 및 연혁
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/about/history.do")
    public String history(ModelMap model) throws Exception {
		return "egovframework/about/history";
    }
    
    /**
     * 연구 영역 네트워크
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/about/network.do")
    public String network(ModelMap model) throws Exception {
		return "egovframework/about/network";
    }
    
    /**
     * 공지사항
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/about/notice.do")
    public String notice(ModelMap model) throws Exception {
		return "egovframework/about/notice";
    }
    
    /**
     * 오시는길
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/about/location.do")
    public String location(ModelMap model) throws Exception {
		return "egovframework/about/location";
    }


}
