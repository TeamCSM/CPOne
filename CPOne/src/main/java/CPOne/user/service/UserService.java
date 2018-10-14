package CPOne.user.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

public interface UserService {

	boolean userLoginCheck(Map<String, Object> params);

	int userLoginAction(Map<String, Object> params, HttpSession session);

}
