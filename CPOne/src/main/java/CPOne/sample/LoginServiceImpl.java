package CPOne.sample;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import CPOne.common.CommonDAO;
import CPOne.common.CommonFinalString;;

@Service
@Transactional
public class LoginServiceImpl implements LoginService{

	@Autowired
	private CommonDAO commonDAO;

	@Override
	public boolean isLoginAccept(@RequestParam Map<String, Object> params) throws Exception {
		boolean isLoginAccept = false;
		
		int iUserCount = 0;
		
		String sEmail = params.get("userEmail").toString();
		String sPassword = params.get("userPassword").toString();
		
		if ((StringUtils.isNotBlank(sEmail)) && StringUtils.isNotEmpty(sPassword)) {
			iUserCount = commonDAO.selectOne(CommonFinalString.USER_Login_DB,"userLoginCheck",params);
		}
		
		if (iUserCount > 0) {
			isLoginAccept = true;
		} else {
			isLoginAccept = false;
		}
		return isLoginAccept;
	}

	@Override
	public String loginAction(@RequestParam Map<String, Object> params, HttpSession session) throws Exception{
		
		String sRtnPath = "";
		
		session.setAttribute("login", 0); // 로그인 성공시 세션
		session.setAttribute("cpOneUser", params);
		
		sRtnPath = "redirect:/index.ino";

		return sRtnPath;
	}

	
}
