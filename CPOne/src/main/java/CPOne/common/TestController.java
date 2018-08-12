package CPOne.common;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	
	@Inject
	public CommonDAO commonDAO;
	
	@RequestMapping(value = "/cpone/dbTest.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("DB_TEST start");
		
		Map<String, String> temp = commonDAO.selectOne(CommonFinalString.MAIL_DB, "test");
		System.out.println(temp);
		
		System.out.println("DB_TEST end");
		return "/";
	}
}
