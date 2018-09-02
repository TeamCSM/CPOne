package CPOne.common;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.aspectj.lang.annotation.DeclareAnnotation;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

/**
 * 
 * @author jsp
 * @since 2018. 08. 12.
 * @see DB연동에 관련된 DAO를 모아놓은것
 *
 */

@Repository
public class CommonDAO{
	
	@Inject
	private SqlSession session;
	
	public  <E> List<E> selectList(String nameSpace, String sqlId, Object param, RowBounds rowBounds){
		return session.selectList(nameSpace+"."+sqlId, param, rowBounds);
	}
	
	public  <E> List<E> selectList(String nameSpace, String sqlId, Object param){
		return session.selectList(nameSpace+"."+sqlId, param);
	}
	
	public  <E> List<E> selectList(String nameSpace, String sqlId){
		return session.selectList(nameSpace+"."+sqlId);
	}
	
	public  <T> T selectOne(String nameSpace, String sqlId, Object param){
		return session.selectOne(nameSpace+"."+sqlId, param);
	}
	
	public  <T> T selectOne(String nameSpace, String sqlId){
		System.out.println(nameSpace+"."+sqlId);
		return session.selectOne(nameSpace+"."+sqlId);
	}
	
	public  <K, V> Map<K, V> selectMap(String nameSpace, String sqlId, Object param, String mapKey, RowBounds rowBounds){
		return session.selectMap(nameSpace+"."+sqlId, param, mapKey, rowBounds);
	}
	
	public  <K, V> Map<K, V> selectMap(String nameSpace, String sqlId, Object param, String mapKey){
		return session.selectMap(nameSpace+"."+sqlId, param, mapKey);
	}
	
	public  <K, V> Map<K, V> selectMap(String nameSpace, String sqlId, String mapKey){
		return session.selectMap(nameSpace+"."+sqlId, mapKey);
	}
	
	public  void select(String nameSpace, String sqlId, Object param, ResultHandler resultHandler, RowBounds rowBounds){
		session.select(nameSpace+"."+sqlId, param, rowBounds, resultHandler);
	}
	
	public  void select(String nameSpace, String sqlId, Object param, ResultHandler resultHandler){
		session.select(nameSpace+"."+sqlId, param, resultHandler);
	}
	
	public  void select(String nameSpace, String sqlId, ResultHandler resultHandler){
		session.select(nameSpace+"."+sqlId, resultHandler);
	}
	
	public  int insert(String nameSpace, String sqlId, Object param) {
		return session.insert(nameSpace+"."+sqlId, param);
	}
	
	public  int insert(String nameSpace, String sqlId) {
		return session.insert(nameSpace+"."+sqlId);
	}
	
	public  int update(String nameSpace, String sqlId, Object param) {
		return session.update(nameSpace+"."+sqlId, param);
	}
	
	public  int update(String nameSpace, String sqlId) {
		return session.update(nameSpace+"."+sqlId);
	}
	
	public  int delete(String nameSpace, String sqlId, Object param) {
		return session.delete(nameSpace+"."+sqlId, param);
	}
	
	public  int delete(String nameSpace, String sqlId) {
		return session.delete(nameSpace+"."+sqlId);
	}
	
}