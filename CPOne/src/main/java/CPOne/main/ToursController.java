package CPOne.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/cpone/tours/*")
public class ToursController {

	
	/**
	 * 작성자 : 전형동
	 * 메소드 역할 : 투어 화면
	 * @return
	 */
	@RequestMapping(value="toursMain.ino")
	public ModelAndView toursMain() {
		
		ModelAndView mv = new ModelAndView();
		
		String sRtnPath = "main/tours/tours_main";
		
		mv.setViewName(sRtnPath);
		
		return mv;
	}
}
