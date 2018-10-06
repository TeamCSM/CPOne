package CPOne.user.login.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

public interface LoginService {

	boolean isLoginAccept(Map<String, Object> params) throws Exception;

	String loginAction(Map<String, Object> params, HttpSession session) throws Exception;

}
