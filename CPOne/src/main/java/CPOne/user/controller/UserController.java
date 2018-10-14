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
	
	/**
	 * 작성자 : 전형동
	 * 메소드 역할 : 로그인
	 * @param params
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="userLoginAction.ino")
	@ResponseBody
	public ModelAndView userLoginAction (@RequestParam Map<String, Object> params, HttpSession session) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		boolean lognCheck = userService.userLoginCheck(params);
		
		if(lognCheck) {
			userService.userLoginAction(params, session);
			
			String sRtnPath = "redirect:/";
			mv.setViewName(sRtnPath);
			
			System.out.println("로그인 성공");
			return mv;
		}
		else {
			System.out.println("로그인 실패");
		}
		
		return mv;
	}
	
	//로그아웃 컨트롤러
	@RequestMapping(value="logOut.ino")
	public ModelAndView logOut(ModelAndView mv, HttpSession session){
	    String page = "redirect:/index.ino";
	    session.removeAttribute("cp_User");
	    mv.setViewName(page);
	    return mv;
	}
}
