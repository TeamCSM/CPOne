package CPOne.sample;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/cpone/user/login/*")
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="loginAction.ino")
	@ResponseBody
	public String loginAction(@RequestBody Map<String, Object> params, HttpSession session) throws Exception {
		
		String sRthPath = "";
		
		boolean isLoginAccept = loginService.isLoginAccept(params);
		
		if(isLoginAccept == true) {
			sRthPath = loginService.loginAction(params,session);
		}
		else {
			sRthPath = "redirect:/index.ino";
		}
		return sRthPath;
	}
	
	//로그아웃 컨트롤러
	@RequestMapping(value="logOut.ino")
	public ModelAndView logOut(ModelAndView mv, HttpSession session){
	    String page = "redirect:/index.ino";
	    session.removeAttribute("userSession");
	    mv.setViewName(page);
	    return mv;
	}
}
