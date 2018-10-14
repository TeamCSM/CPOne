package CPOne.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/cpone/about/*")
public class AboutController {

	@RequestMapping(value="aboutMain.ino")
	public ModelAndView aboutMain() {
		
		ModelAndView mv = new ModelAndView();
		
		String sRtnPath = "main/about/about_main";
		
		mv.setViewName(sRtnPath);
		
		return mv;
	}
}
