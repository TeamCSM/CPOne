package CPOne.sample;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.filter.OncePerRequestFilter;

import CPOne.common.CommonDAO;
import CPOne.common.CommonFinalString;

@Service
public class UserService {
	
	@Autowired
	private CommonDAO commonDAO;
	
	//로그인
	public Integer insertUser(Map<String, Object> paramMap) {
		return commonDAO.selectOne(CommonFinalString.USER_DB,"insertUser",paramMap);
	}
}
