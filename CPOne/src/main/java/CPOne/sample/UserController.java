package CPOne.sample;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/cpone/user/*")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="userLogin.do", method = RequestMethod.GET)
	public String userLogin(HttpSession session) throws Exception {
		String loginPage = "user/login";
		return loginPage;
	}
	//로그인
	@RequestMapping(value="userLogin.do", method = RequestMethod.POST)
	public String insertLogind(HttpServletRequest req, HttpSession session) throws Exception{
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("id", req.getParameter("id"));
		paramMap.put("pass", req.getParameter("pass"));
		
		if(userService.insertUser(paramMap) == 1) {
			session.setAttribute("loginUserInfo", paramMap);
		}
		return "redirect:/index.do";
		
	}
	
	//로그아웃
	@RequestMapping(value="userLogout.do", method = RequestMethod.GET)
	public String userLogout(HttpSession session) throws Exception{
		session.invalidate();
		return "redirect:/index.do";
	}

}
