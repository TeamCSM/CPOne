package CPOne.common;

import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class TestController {
	
	@Inject
	public CommonDAO commonDAO;
	
	@RequestMapping(value = "/cpone/dbTest.do", method = RequestMethod.GET)
	public String dbTest(Locale locale, Model model) {
		System.out.println("DB_TEST start");
		
		Map<String, String> temp = commonDAO.selectOne(CommonFinalString.MAIL_DB, "test");
		System.out.println(temp);
		model.addAttribute("temp", temp);
		System.out.println("DB_TEST end");
		return "/test";
	}
	
	@RequestMapping(value="/cpone/uploadAjax.do", method=RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> uploadForm(MultipartFile file, Model model, HttpServletRequest request) throws Exception{
		
		System.out.println("File upload start");
		
		return new ResponseEntity<>(CommonFileUtil.fileUpLoad(file, "test", request), HttpStatus.CREATED);
	}
	
}
