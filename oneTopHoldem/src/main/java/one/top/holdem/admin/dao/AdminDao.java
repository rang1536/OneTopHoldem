package one.top.holdem.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import one.top.holdem.admin.vo.Account;

@Repository
public class AdminDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//db test
	public int selectTest() {
		int result = sqlSession.selectOne("AdDao.selectTest");
		System.out.println("dao : "+result);
		return result;
	}
	
	// 모든유저 조회
	public List<Account> selectAllUser(){
		return sqlSession.selectList("AdDao.selectAllUser");
	}
	
	//하나의 회원 조회
	public Account selectAccount(long accountId) {
		return sqlSession.selectOne("AdDao.selectAccount", accountId);
	}
}
