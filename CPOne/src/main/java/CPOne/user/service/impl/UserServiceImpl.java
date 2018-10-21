package CPOne.user.service.impl;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ResponseBody;

import CPOne.user.controller.UserController;
import CPOne.user.service.UserService;

@Service
@Transactional
@Repository
public class UserServiceImpl implements UserService{

	private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	
	public boolean userLoginCheck(Map<String, Object> params) {
		logger.info("\n"+"------------------Login Check------------------");
		
		int userLoginCheck = 0;
		boolean userLoginAccept = false;
		
		String userEmail = params.get("user_Email").toString();
		String userPassword = params.get("user_Password").toString();
		
		logger.debug("------------------Login Check Start------------------");
		if(StringUtils.isNotEmpty(userEmail) && StringUtils.isNotBlank(userEmail) && StringUtils.isNotEmpty(userPassword) && StringUtils.isNotBlank(userPassword)) {
			userLoginCheck = sqlSession.selectOne("selectUserLoginCheck", params);
			logger.info("\n"+"------------------Login Check 성공------------------");
		}
		
		if(userLoginCheck > 0) {
			userLoginAccept = true;
			logger.debug("\n"+"----------------"+userLoginAccept+"----------------");
		}
		else {
			userLoginAccept = false;
			logger.debug("\n"+"----------------"+userLoginAccept+"----------------");
		}
		return userLoginAccept;
	}

	@Override
	@ResponseBody
	public int userLoginAction(Map<String, Object> params, HttpSession session) {
		String userCheck = params.get("user_Email").toString();
		if(StringUtils.isNotEmpty(userCheck)) {
			session.setAttribute("login", 0);
			session.setAttribute("cp_User", params.get("user_Email"));
		}
		return -1;
	}
	
	
}
