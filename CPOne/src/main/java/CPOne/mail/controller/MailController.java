package CPOne.mail.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MailController {

	@RequestMapping(value="/cpone/front/mail/mailMainView.do")
	public String mailMainView() throws Exception {
		String mailMainView = "mail/mailList";
		
		return mailMainView;
	}
}
