package CPOne.totalSearch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/cpone/totalSearch/*")
public class TotalSearchController {
	
	@RequestMapping(value="keyword.ino" , method=RequestMethod.GET)
	public String keyword() throws Exception{
		
		return "main/totalSearch/keyword";
	}
}
