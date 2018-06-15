package one.top.holdem.admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import one.top.holdem.admin.vo.Account;
import one.top.holdem.admin.vo.Import;
import one.top.holdem.admin.vo.Master;
import one.top.holdem.admin.vo.Notice;

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
	
	//로그인 아이디 조회
	public List<Account> selectLoginCheckId(Map<String, Object> param){
		return sqlSession.selectList("AdDao.selectLoginCheckId", param);
	}
	
	//로그인 패스워드 확인
	public Account selectLoginCheckPw(Map<String, Object> param){
		
		return sqlSession.selectOne("AdDao.selectLoginCheckPw", param);
	}
	
	// 모든유저 조회 -MASTER
	public List<Account> selectAllUserMaster(Map<String, Object> param){
		return sqlSession.selectList("AdDao.selectAllUserMaster",param);
	}
	
	// 모든유저 조회 - BRANCH
	public List<Account> selectAllUserBranch(){
		return sqlSession.selectList("AdDao.selectAllUserBranch");
	}
	
	//하나의 회원 조회
	public Account selectAccount(String loginId) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("loginId", loginId);
		return sqlSession.selectOne("AdDao.selectAccount", param);
	}
	
	//하나의 회원 조회
	public Account selectAccount(long accountId) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("accountId", accountId);
		return sqlSession.selectOne("AdDao.selectAccount", param);
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
	
	//카드배당률 입력 insertMasterInfo
	public int insertMasterInfo(Master master) {
		return sqlSession.insert("AdDao.insertMasterInfo", master);
	} 
	
	//긴급공지 등록 insertNotice
	public int insertNotice(Notice notice){
		return sqlSession.insert("AdDao.insertNotice",notice);
	}
	
	//긴급공지삭제 
	public int deleteNotice(){
		return sqlSession.delete("AdDao.deleteNotice");
	}
	
	//긴급공지 정지(시간수정)
	public int updateNotice() {
		return sqlSession.update("AdDao.updateNotice");
	}
	
	//지점등록
	public int insertBranch(Account account) {
		return sqlSession.insert("AdDao.insertBranch", account);
	}
	
	//좌측 트리메뉴 회원조회
	public List<Account> selectTree(Map<String, Object> param){
		return sqlSession.selectList("AdDao.selectTree", param);
	}
	
	//지점 검색
	public List<Account> searchBranch(Map<String, Object> param){
		return sqlSession.selectList("AdDao.searchBranch", param);
	}
	
	//게임배당율 조회
	public int selectMasterInfo() {
		return sqlSession.selectOne("AdDao.selectMasterInfo");
	}
	
	//발송중인 공지 있는지 조회
	public int selNoticeNowWorking() {
		return sqlSession.selectOne("AdDao.selNoticeNowWorking");
	}
	
	//updateChipLimit
	public int updateChipLimit(Account account) {
		return sqlSession.update("AdDao.updateChipLimit", account);
	}
}