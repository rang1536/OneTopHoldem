package one.top.holdem.admin.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import one.top.holdem.admin.vo.Account;
import one.top.holdem.admin.vo.Import;

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
	
	// 보유금액조회
	public List<Import> selectImport() {
		return sqlSession.selectList("AdDao.selectImport");
	}
	
	// 아이디 중복체크
	public int selectIdOverLapCount(String loginId) {
		return sqlSession.selectOne("AdDao.selectIdOverLapCount",loginId);
	}
	
	// 지점정보수정 updateAccount
	public int updateAccount(Account account) {
		return sqlSession.update("AdDao.updateAccount", account);
	}
	
	// 지점상태변경 updateAccountStatus
	public int updateAccountStatus(Map<String, Object> params) {
		return sqlSession.update("AdDao.updateAccountStatus", params);
	}
	
	// 지점삭제
	public int deleteAccount(int accountId) {
		return sqlSession.delete("AdDao.deleteAccount", accountId);
	}
	
	//비번변경
	public int updatePass(Account account) {
		return sqlSession.update("AdDao.updatePass", account);
	}
}
