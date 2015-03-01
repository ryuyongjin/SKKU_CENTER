package egovframework.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;

/**
 * 메인 컨트롤러 클래스
 */

@Controller
public class MainController {

    //protected Logger log = Logger.getLogger(this.getClass());
    
    /**
     * 메인
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/main.do")
    public String greeting(ModelMap model) throws Exception {
		return "egovframework/main/main";
    }
    
    /**
     * 개인정보 취급방침
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/etc/login.do")
    public String login(ModelMap model) throws Exception {
		return "egovframework/etc/login";
    }
    
    /**
     * 개인정보 취급방침
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/etc/private.do")
    public String privatePage(ModelMap model) throws Exception {
		return "egovframework/etc/private";
    }
    
    /**
     * 이메일 무단수집거부
     * 
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/etc/noemail.do")
    public String noemail(ModelMap model) throws Exception {
		return "egovframework/etc/noemail";
    }
}
