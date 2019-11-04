package egovframework.example.sample.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import egovframework.example.sample.service.AlioBogoseoVO;
import egovframework.example.sample.service.FileVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;
import egovframework.example.sample.service.login.LoginService;
import egovframework.example.sample.service.login.LoginVO;



@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	/** 로그인 창 **/
	@RequestMapping("/login.do")
	public String login() throws Exception {
		return "sample/login";
	}
	
	/** 관리자모드 창 **/
	@RequestMapping("/alioHome2.do")
	public String alioHome2() throws Exception {
		return "sample/alioHome2";
	}
	
	@RequestMapping("/loginProcess.do")
	public String login(@ModelAttribute("loginVO") LoginVO loginVO, HttpServletRequest request) {
		String id = loginVO.getId();
		String pw = loginVO.getPw();
			try{
				loginVO = (LoginVO) loginService.authenticate(id, pw);
		} catch (Exception e) {
			return "redirect:/login.do";
		}
		request.getSession().setAttribute("UserAccount", loginVO);
		
		return "redirect:/alioHome2.do";

	}
	
	/** 로그아웃 **/
	@RequestMapping("/logout.do")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/alioHome.do";
	}
	
	/** 회원가입 **/
	/*@RequestMapping("/memberForm.do")
	public String memberForm(LoginVO loginVO) throws Exception {
		return "sample/memberForm";
	}*/
	
	@RequestMapping(value = "/memberForm.do")
	public String memberFormView(@ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		model.addAttribute("loginVO", new LoginVO());
		return "sample/memberForm";		
	}

	
	@RequestMapping(value = "/addmemberSample.do")
	public String addmemberFormSample(@ModelAttribute("searchVO") SampleDefaultVO searchVO, LoginVO loginVO, Model model, SessionStatus status)
			throws Exception {
		loginService.insertmemberSample(loginVO);
		status.setComplete();
		return "redirect:/login.do";
	}
}
