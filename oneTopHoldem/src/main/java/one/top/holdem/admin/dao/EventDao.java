package one.top.holdem.admin.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import one.top.holdem.admin.vo.Tournament;
import one.top.holdem.admin.vo.Import;

@Repository
public class EventDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	 
	// 모든유저 조회
	public List<Tournament> eventList(){
		return sqlSession.selectList("eventDao.eventList");
	}

	// 수익조회
	public List<Import> selectImport(Map<String, Object> params){
		return sqlSession.selectList("eventDao.selectImport", params);
	}
}
