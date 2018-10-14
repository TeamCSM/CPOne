package CPOne.user.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import CPOne.user.service.UserService;

@Controller
@RequestMapping(value="/cpone/user/*")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value="userLoginAction.ino")
	@ResponseBody
	public String userLoginAction (@RequestParam Map<String, Object> params, HttpSession session) throws Exception {
		
		boolean lognCheck = userService.userLoginCheck(params);
		
		if(lognCheck) {
			userService.userLoginAction(params, session);
		}
		return "/main/home";
	}
	
	//로그아웃 컨트롤러
	@RequestMapping(value="logOut.ino")
	public ModelAndView logOut(ModelAndView mv, HttpSession session){
	    String page = "redirect:/index.ino";
	    session.removeAttribute("astory_User");
	    mv.setViewName(page);
	    return mv;
	}
}
