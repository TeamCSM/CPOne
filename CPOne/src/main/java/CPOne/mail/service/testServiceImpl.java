package CPOne.mail.service;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service
public class testServiceImpl implements testService{

	@Inject
	private SqlSession session;
	
	private static String namespace = "CPOne.mailMapper";

	@Override
	public Map<String, String> testDB() throws Exception {
		
		return session.selectOne(namespace+".test");
	}
}
