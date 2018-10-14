package CPOne.user.service.impl;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ResponseBody;

import CPOne.user.service.UserService;

@Service
@Transactional
@Repository
public class UserServiceImpl implements UserService{

	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	
	public boolean userLoginCheck(Map<String, Object> params) {
		System.out.println("::::::userLoginCheck:::::");
		int userLoginCheck = 0;
		boolean userLoginAccept = false;
		
		String userEmail = params.get("user_Email").toString();
		String userPassword = params.get("user_Password").toString();
		
		if(StringUtils.isNotEmpty(userEmail) && StringUtils.isNotBlank(userEmail) && StringUtils.isNotEmpty(userPassword) && StringUtils.isNotBlank(userPassword)) {
			userLoginCheck = sqlSession.selectOne("selectUserLoginCheck", params);
		}
		
		if(userLoginCheck > 0) {
			userLoginAccept = true;
		}
		else {
			userLoginAccept = false;
		}
		return userLoginAccept;
	}

	@Override
	@ResponseBody
	public int userLoginAction(Map<String, Object> params, HttpSession session) {
		System.out.println("::::::userLoginAction:::::");
		String userCheck = params.get("user_Email").toString();
		System.out.println("userCheck ::::::" + userCheck);
		if(StringUtils.isNotEmpty(userCheck)) {
			session.setAttribute("login", 0);
			session.setAttribute("astory_User", userCheck);
			System.out.println("::::::userLoginAction:::::" + session + params);
		}
		return -1;
	}
	
	
}
