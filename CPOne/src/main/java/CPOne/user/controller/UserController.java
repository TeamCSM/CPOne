package CPOne.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cpone/user/*")
public class UserController {

	@RequestMapping(value="userLogin.do")
	public String userLogin() throws Exception {
		String loginPage = "user/login";
		return loginPage;
	}
}
