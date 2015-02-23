package egovframework.feature.web;

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
 * 대학특성화 컨트롤러 클래스
 */

@Controller
public class FeatureController {

    //protected Logger log = Logger.getLogger(this.getClass());
    
    /**
     * 융합기반
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/creative01.do")
    public String creative01(ModelMap model) throws Exception {
		return "egovframework/feature/creative01";
    }
    
    /**
     * 비전/목표/전략
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/creative02.do")
    public String creative02(ModelMap model) throws Exception {
		return "egovframework/feature/creative02";
    }

    /**
     * 성균교육 3.0
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/creative03.do")
    public String creative03(ModelMap model) throws Exception {
		return "egovframework/feature/creative03";
    }
    
    /**
     * 창의적 융복합 소재 및 공정 특성화 사업단 - 교육비전
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/convergence01.do")
    public String convergence01(ModelMap model) throws Exception {
		return "egovframework/feature/convergence01";
    }
    
    /**
     * 창의적 융복합 소재 및 공정 특성화 사업단 - 교육목표
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/convergence02.do")
    public String convergence02(ModelMap model) throws Exception {
		return "egovframework/feature/convergence02";
    }

    /**
     * 창의적 융복합 소재 및 공정 특성화 사업단 - 교과과정 구성 및 운영
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/convergence03.do")
    public String convergence03(ModelMap model) throws Exception {
		return "egovframework/feature/convergence03";
    }
    
    /**
     * 글로벌 건설 엔지니어링 전문인력 양성 사업단 - 교육비전
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/engineering01.do")
    public String engineering01(ModelMap model) throws Exception {
		return "egovframework/feature/engineering01";
    }

    /**
     * 글로벌 건설 엔지니어링 전문인력 양성 사업단 - 교육목표
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/engineering02.do")
    public String engineering02(ModelMap model) throws Exception {
		return "egovframework/feature/engineering02";
    }

    /**
     * 글로벌 건설 엔지니어링 전문인력 양성 사업단 - 교과과정 구성 및 운영
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/engineering03.do")
    public String engineering03(ModelMap model) throws Exception {
		return "egovframework/feature/engineering03";
    }

    
    
    /**
     * 글로벌 유학 창의인재 양성 사업단 - 교육비전 및 목표
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/confucianism01.do")
    public String confucianism01(ModelMap model) throws Exception {
		return "egovframework/feature/confucianism01";
    }
    
    /**
     * 글로벌 유학 창의인재 양성 사업단 - 교육목표 및 인재상,교육 역량
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/confucianism02.do")
    public String confucianism02(ModelMap model) throws Exception {
		return "egovframework/feature/confucianism02";
    }

    /**
     * 글로벌 유학 창의인재 양성 사업단 - 추진전략
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/confucianism03.do")
    public String confucianism03(ModelMap model) throws Exception {
		return "egovframework/feature/confucianism03";
    }

    /**
     * I-School 기반의 세계 최고 수준 데이터 전문가 양성 사업단 - 목표와 교육비전
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/ischool01.do")
    public String ischool01(ModelMap model) throws Exception {
		return "egovframework/feature/ischool01";
    }

    /**
     * I-School 기반의 세계 최고 수준 데이터 전문가 양성 사업단 - 교과과정
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/ischool02.do")
    public String ischool02(ModelMap model) throws Exception {
		return "egovframework/feature/ischool02";
    }
    
    /**
     * I-School 기반의 세계 최고 수준 데이터 전문가 양성 사업단 - 비교과과정
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/ischool03.do")
    public String ischool03(ModelMap model) throws Exception {
		return "egovframework/feature/ischool03";
    }

    /**
     * 차세대 선도 물리인재 양성 사업단 - 교육목표/비전
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/physics01.do")
    public String physics01(ModelMap model) throws Exception {
		return "egovframework/feature/physics01";
    }
    
    /**
     * 차세대 선도 물리인재 양성 사업단 - 세부 추진계획
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/physics02.do")
    public String physics02(ModelMap model) throws Exception {
		return "egovframework/feature/physics02";
    }

    /**
     * 차세대 선도 물리인재 양성 사업단 - 교과과정 구성 및 운영
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/feature/physics03.do")
    public String physics03(ModelMap model) throws Exception {
		return "egovframework/feature/physics03";
    }

}
