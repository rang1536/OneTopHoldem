package one.top.holdem;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.util.SystemOutLogger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import one.top.holdem.admin.vo.Account;
import one.top.holdem.admin.vo.Notice;
import one.top.holdem.admin.vo.Tournament;

@Repository
public class CustomDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//로그인 아이디 조회
	public int dupIdCheck(String loginId){
		Map<String, String> map = new HashMap<String, String>();
		map.put("loginId", loginId);
		int cnt = sqlSession.selectOne("customDao.dupIdCheck",map);
		System.out.println("cnt - >"+cnt);
		return cnt;
	}
	
	//회원가입
	public int registerMember(Account account) {
		return sqlSession.insert("customDao.registerMember", account);
	}
	
	//진행중인 토너먼트
	public List<Tournament> tournamentList(String page){
		Map<String, Object> map = new HashMap<String, Object>();
		int paramPage = Integer.parseInt(page)*10;
		map.put("page", paramPage);
		return sqlSession.selectList("customDao.torunamentList",map);
	}
	
	//진행중인 전체 토너먼트 갯수
	public int getTournamentTotCnt(){
		int cnt = sqlSession.selectOne("customDao.tournamentTotCnt");
		System.out.println("cnt - >"+cnt);
		return cnt;
	}

	//완료된 토너먼트
	public List<Tournament> tournamentEndList(String page){
		Map<String, Object> map = new HashMap<String, Object>();
		int paramPage = Integer.parseInt(page)*10;
		map.put("page", paramPage);
		return sqlSession.selectList("customDao.torunamentEndList",map);
	}
	
	//완료된 전체 토너먼트 갯수
	public int getTournamentEndTotCnt(){
		int cnt = sqlSession.selectOne("customDao.tournamentEndTotCnt");
		System.out.println("cnt - >"+cnt);
		return cnt;
	}
	
	
	//하나의 회원 조회
	public Tournament selectTournament(String tId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tId", tId);
		return sqlSession.selectOne("customDao.selectTournament", map);
	}
	
	//회원조회
	public Account selectMember(String loginId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("loginId", loginId);
		return sqlSession.selectOne("customDao.selectMember", map);
	}
	
	//회원수정
	public int updateMember(Account account) {
		return sqlSession.update("customDao.updateMember", account);
	}
	
	//긴급공지 조회
	public Notice selectNotice() {
		return sqlSession.selectOne("customDao.selectNotice");
	}
	
	
	
	/*
	//로그인 패스워드 확인
	public Account selectLoginCheckPw(Map<String, Object> param){
		
		return sqlSession.selectOne("AdDao.selectLoginCheckPw", param);
	}
	

	
	// 모든유저 조회 - BRANCH
	public List<Account> selectAllUserBranch(){
		return sqlSession.selectList("AdDao.selectAllUserBranch");
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
	
	//골드증여 updateAccountGoldPlus
	public int updateAccountGoldPlus(Account account) {
		return sqlSession.update("AdDao.updateAccountGoldPlus", account);
	}
	
	//티켓증여 updateAccountTicketPlus
	public int updateAccountTicketPlus(Account account) {
		return sqlSession.update("AdDao.updateAccountTicketPlus", account);
	}
	
	//기존 카드배당율 조회 selectNowMasterInfo
	public Master selectNowMasterInfo(){
		return sqlSession.selectOne("AdDao.selectNowMasterInfo");
	}
	
	//카드배당율 수정 updateMasterInfo
	public int updateMasterInfo(Master master) {
		return sqlSession.update("AdDao.updateMasterInfo", master);
	} 
	

	*/
}
