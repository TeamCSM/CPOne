package CPOne.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/cpone/service/*")
public class ServiceController {

	/**
	 * 작성자 : 전형동
	 * 메소드 역할 : 서비스 화면
	 * @return
	 */
	@RequestMapping(value="serviceMain.ino")
	public ModelAndView serviceMain() {
		
		ModelAndView mv = new ModelAndView();
		
		String sRtnPath = "main/service/service_main";
		
		mv.setViewName(sRtnPath);
		
		return mv;
	}
}
