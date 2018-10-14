package CPOne.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/cpone/hotels/*")
public class HotelsController {

	/**
	 * 작성자 : 전형동
	 * 메소드 역할 : 호텔 화면
	 * @return
	 */
	@RequestMapping(value="hotelsMain.ino")
	public ModelAndView hotelsMain() {
		
		ModelAndView mv = new ModelAndView();
		
		String sRtnPath = "main/hotels/hotels_main";
		
		mv.setViewName(sRtnPath);
		
		return mv;
	}
}
