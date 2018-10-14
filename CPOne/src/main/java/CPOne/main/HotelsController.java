package CPOne.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/cpone/hotels/*")
public class HotelsController {

	@RequestMapping(value="hotelsMain.ino")
	public ModelAndView hotelsMain() {
		
		ModelAndView mv = new ModelAndView();
		
		String sRtnPath = "main/hotels/hotels_main";
		
		mv.setViewName(sRtnPath);
		
		return mv;
	}
}
