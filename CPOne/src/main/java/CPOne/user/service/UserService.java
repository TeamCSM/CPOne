package CPOne.user.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CPOne.common.CommonDAO;

@Service
public class UserService {
	
	@Autowired
	private CommonDAO commonDAO;
	
	//로그인
	public Integer insertUser(Map<String, Object> paramMap) {
		return commonDAO.selectOne("CPOne.user","insertUser",paramMap);
	}
}
