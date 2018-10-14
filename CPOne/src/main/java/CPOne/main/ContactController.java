package CPOne.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/cpone/contact/*")
public class ContactController {

	/**
	 * 작성자 : 전형동
	 * 메소드 역할 : 문의 화면
	 * @return
	 */
	@RequestMapping(value="contactMain.ino")
	public ModelAndView contactMain() {
		
		ModelAndView mv = new ModelAndView();
		
		String sRtnPath = "main/contact/contact_main";
		
		mv.setViewName(sRtnPath);
		
		return mv;
	}
}
