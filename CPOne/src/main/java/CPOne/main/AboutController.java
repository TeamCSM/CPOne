package CPOne.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/cpone/about/*")
public class AboutController {

	/**
	 * 작성자 : 전형동
	 * 메소드 역할 : 소개 화면
	 * @return
	 */
	@RequestMapping(value="aboutMain.ino")
	public ModelAndView aboutMain() {
		
		System.out.println("test aboutMain");
		ModelAndView mv = new ModelAndView();
		
		String sRtnPath = "main/about/about_main";
		
		mv.setViewName(sRtnPath);
		
		return mv;
	}
}
