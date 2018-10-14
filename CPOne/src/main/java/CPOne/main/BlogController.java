package CPOne.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/cpone/blog/*")
public class BlogController {

	/**
	 * 작성자 : 전형동
	 * 메소드 역할 : 블로그 화면
	 * @return
	 */
	@RequestMapping(value="blogMain.ino")
	public ModelAndView blogMain() {
		
		ModelAndView mv = new ModelAndView();
		
		String sRtnPath = "main/blog/blog_main";
		
		mv.setViewName(sRtnPath);
		
		return mv;
	}
}
