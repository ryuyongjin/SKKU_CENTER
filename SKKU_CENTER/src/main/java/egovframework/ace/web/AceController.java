package egovframework.ace.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ACE 컨트롤러 클래스
 */

@Controller
public class AceController {

    //protected Logger log = Logger.getLogger(this.getClass());
    
    /**
     * 성균 글로벌 창의리더 역량개발 프로그램
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/step_main.do")
    public String stepMain(ModelMap model) throws Exception {
		return "egovframework/ace/step_main";
    }
    
    /**
     * 성균 글로벌 창의리더 역량개발 프로그램 - 개인역량
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/1step01.do")
    public String step01(ModelMap model) throws Exception {
		return "egovframework/ace/1step01";
    }

    /**
     * 성균 글로벌 창의리더 역량개발 프로그램 - 개인역량2
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/1step02.do")
    public String step02(ModelMap model) throws Exception {
		return "egovframework/ace/1step02";
    }

    /**
     * 성균 글로벌 창의리더 역량개발 프로그램 - 창의・리더 역량
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/2step01.do")
    public String twoStep01(ModelMap model) throws Exception {
		return "egovframework/ace/2step01";
    }
    
    /**
     * 성균 글로벌 창의리더 역량개발 프로그램 - 창의・리더 역량 2
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/2step02.do")
    public String twoStep02(ModelMap model) throws Exception {
		return "egovframework/ace/2step02";
    }

    /**
     * 성균 글로벌 창의리더 역량개발 프로그램 - 글로벌 창의・리더 역량
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/3step01.do")
    public String threeStep01(ModelMap model) throws Exception {
		return "egovframework/ace/3step01";
    }

    /**
     * 성균 글로벌 창의리더 역량개발 프로그램 - 글로벌 창의・리더 역량 2
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/3step02.do")
    public String threeStep02(ModelMap model) throws Exception {
		return "egovframework/ace/3step02";
    }

    /**
     * 성균 효과성 프로그램 : 교육의 질 관리
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/pro_main.do")
    public String proMain(ModelMap model) throws Exception {
		return "egovframework/ace/pro_main";
    }
    
    /**
     * 성균 효과성 프로그램 : 교육의 질 관리 - Academic Life Cycle(ALC) 질관리 모델 
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/pro_alc.do")
    public String proAlc(ModelMap model) throws Exception {
		return "egovframework/ace/pro_alc";
    }

    /**
     * 성균 효과성 프로그램 : 교육의 질 관리 - 성균핵심역량진단도구(SCCA)
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/pro_scca.do")
    public String pro_scca(ModelMap model) throws Exception {
		return "egovframework/ace/pro_scca";
    }

    /**
     * 성균 효과성 프로그램 : 교육의 질 관리 - 대학생 학습경험분석 연구
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/pro_analysis.do")
    public String proAnalysis(ModelMap model) throws Exception {
		return "egovframework/ace/pro_analysis";
    }

    /**
     * 창의리더 서포터즈 
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/cl_supporters.do")
    public String clSupporters(ModelMap model) throws Exception {
		return "egovframework/ace/cl_supporters";
    }

    /**
     * 창의리더 공모전 
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/cl_show.do")
    public String clShow(ModelMap model) throws Exception {
		return "egovframework/ace/cl_show";
    }

    /**
     * 창의리더 특강 
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/cl_special.do")
    public String clSpecial(ModelMap model) throws Exception {
		return "egovframework/ace/cl_special";
    }
    
    /**
     * 창의리더 심포지엄 
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/cl_symposium.do")
    public String clSymposium(ModelMap model) throws Exception {
		return "egovframework/ace/cl_symposium";
    }

    /**
     * 글로벌 창조적 챌린저 프로그램  
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/global_challenger.do")
    public String globalChallenger(ModelMap model) throws Exception {
		return "egovframework/ace/global_challenger";
    }
    
    /**
     * 창조존  
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/creativity_zone.do")
    public String creativity_zone(ModelMap model) throws Exception {
		return "egovframework/ace/creativity_zone";
    }
    
    /**
     * ACE Help Desk  
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/ace/help_desk.do")
    public String help_desk(ModelMap model) throws Exception {
		return "egovframework/ace/help_desk";
    }

    
     
}
