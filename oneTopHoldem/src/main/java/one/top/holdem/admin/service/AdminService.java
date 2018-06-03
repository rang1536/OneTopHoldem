package one.top.holdem.admin.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.icu.text.DecimalFormat;

import one.top.holdem.admin.dao.AdminDao;
import one.top.holdem.admin.vo.Account;
import one.top.holdem.admin.vo.Import;
import one.top.holdem.admin.vo.Master;
import one.top.holdem.admin.vo.Notice;
import one.top.holdem.util.UtilDate;

@Service
public class AdminService {
	@Autowired
	private AdminDao adminDao;
	
	public int testDbServ() {
		int result = adminDao.selectTest();
		System.out.println("테스트 : "+result);
		return 0;
	}
	
	//로그인
	public Map<String, Object> loginServ(String loginId, String loginPw){
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("loginId", loginId);
		param.put("loginPassword", loginPw);
		List<Account> list = adminDao.selectLoginCheckId(param);
		Map<String, Object> map = new HashMap<String, Object>();
		
		int chkCount = 0;
		if(list.size() != 0){
			Account account = new Account();
			
			account = adminDao.selectLoginCheckPw(param);
			
			if(account != null){
				map.put("loginCheck", "success"); //로그인
				map.put("account", account);
			}else{
				map.put("loginCheck", "failPw"); //비번불일치
			}
		
		}else{
			map.put("loginCheck", "failId"); //아이디불일치
		}
		
		return map;
	}
	
	//등급명 구하기
	public String getName(int grade) {
		String name = "";
		if(grade==1) name="마스터";
		if(grade==2) name="지사";
		if(grade==3) name="PC방";
		if(grade==4) name="일반";
		return name;
	}
	/* 모든유저정보조회
	 * @resultType : Account*/
	public List<Account> readAllUserServ(int grade){
		List<Account> list = new ArrayList<Account>();
		if(grade == 1){
			list = adminDao.selectAllUserMaster(); 
		}else{
			list = adminDao.selectAllUserBranch(); 
		}
		
		
		DecimalFormat df = new DecimalFormat("#,##0");
		
		/*System.out.println("readAllUserServ()*******************");*/
		for(int i =0; i<list.size(); i++) {
			String goldCount = df.format(list.get(i).getGold());
			String chargeGoldToString = df.format(list.get(i).getChargeGold());
			
			list.get(i).setGoldCount(goldCount); //3자리수 , 붙이기
			list.get(i).setGradeName(getName(list.get(i).getGrade())); //등급명 구하기
			list.get(i).setChargeGoldToString(chargeGoldToString); //충전금액 , 찍기
			/*System.out.println(i+" 번째 조회값 확인 : "+list.get(i));*/
		}
		
		return list;
	}
	
	/* 하나의 유저정보조회
	 * @resultType : Account*/
	public Account readAcccountServ(long accountId) {
		return adminDao.selectAccount(accountId);
	}
	
	// 보유금액 조회
	public List<Import> readImportServ(){
		return adminDao.selectImport();
	}
	
	//아이디 중복체크
	public Map<String, String> readIdOverlapCountServ(String loginId){
		Map<String, String> map = new HashMap<String, String>();
		int count = adminDao.selectIdOverLapCount(loginId);
		if(count == 0) map.put("result", "success");
		else if(count > 0) map.put("result", "fail");
		
		return map;
	}
	
	// 지점등록 (쿼리작성 전 - 01-13일 윤) - 전 필드 널 허용 안하는데 기본값으로 뭘 입력해줘야 할지 모름, 연락처2도 어디에 사용할지 모름
	public Map<String, String> addBranchServ(Account account, String hp2) {
		//입력값 세팅
		if(account.getRecommenderAccountId() != 0) { //추천인 등급보다 한단계 낮게 유저 등급설정
			Account recommender = adminDao.selectAccount(account.getRecommenderAccountId());
			if(recommender.getGrade() == 1) account.setGrade(2);
			else if(recommender.getGrade() == 2) account.setGrade(3);
			else if(recommender.getGrade() == 3) account.setGrade(4);
			else if(recommender.getGrade() == 4) account.setGrade(4);
		}
		/*if(account.getCommission() == 0) account.setCommission(0);	*/
		
		//쿼리실행
		int result = adminDao.insertBranch(account);
		//결과체크
		Map<String, String> map = new HashMap<String, String>(); //성공 실패값 담아 뷰로 리턴.
		if(result == 1) map.put("inputCheck", "success");
		else map.put("inputCheck", "fail");
		return map;
	}
	
	//지점수정
	public Map<String, String> modifyAccountServ(Account account, String hp2){
		// 연락처2 어떻게 할지 정해서 필드를 늘리든 해야함.
		
		Map<String, String> map = new HashMap<String, String>();
		System.out.println("account : "+account);
		int result = adminDao.updateAccount(account);
		
		if(result > 0) map.put("updateCheck", "success");
		else if(result == 0) map.put("updateCheck", "fail");
		
		return map;
	}
	
	// 지점상태변경
	public Map<String, String> modifyAccountStatusServ(long accountId, int accountState){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("accountId", accountId);
		params.put("accountState", accountState);
		
		int result = adminDao.updateAccountStatus(params);
		
		Map<String, String> map = new HashMap<String, String>();
		if(result > 0) map.put("updateCheck", "success");
		else if(result == 0) map.put("updateCheck", "fail");
		
		return map;
	}
	
	//지점삭제
	public Map<String, String> removeAccountServ(int accountId){
		int result = adminDao.deleteAccount(accountId);
		
		Map<String, String> map = new HashMap<String, String>();
		if(result > 0) map.put("deleteCheck", "success");
		else if(result == 0) map.put("deleteCheck", "fail");
		
		return map;
	}
	
	//비번변경
	public Map<String, String> changePassServ(Account account){
		int result = adminDao.updatePass(account);
		
		Map<String, String> map = new HashMap<String, String>();
		if(result > 0) {
			map.put("changeCheck", "success");
			System.out.println("succ");
		}
		else if(result == 0) {
			map.put("changeCheck", "fail");
			System.out.println("fail");
		}
		
		return map;
	}
	
	//골드증여
	public Map<String, String> modifyAccountGoldServ(int accountId, long addGold){
		//기존소유골드 조회
		Account account = adminDao.selectAccount(accountId);
		
		long gold = account.getGold() + addGold; //기존골드 + 증여골드 세팅
		account.setGold(gold);
		
		int result = adminDao.updateAccountGoldPlus(account);
		
		Map<String, String> map = new HashMap<String, String>();
		if(result > 0) map.put("addGoldCheck", "success");
		else if(result == 0) map.put("addGoldCheck", "fail");
		
		return map;
	} 
	
	//티켓증여
	public Map<String, String> modifyAccountTicketServ(int accountId, long addTicket){
		//기존소유골드 조회
		Account account = adminDao.selectAccount(accountId);
		
		long ticket = account.getTicket() + addTicket; //기존티켓 + 증여티켓 세팅
		account.setTicket(ticket);
		
		int result = adminDao.updateAccountTicketPlus(account);
		
		Map<String, String> map = new HashMap<String, String>();
		if(result > 0) map.put("addTicketCheck", "success");
		else if(result == 0) map.put("addTicketCheck", "fail");
		
		return map;
	} 
	
	//기존 배당율 조회
	public Master readNowMasterInfo(){
		return adminDao.selectNowMasterInfo();
	}
	
	//게임 배당율 수정 - 피케이 없이 수정되나? 
	public Map<String, String> modifyMasterInfoServ(Master master){
		int result = adminDao.updateMasterInfo(master);
		
		Map<String, String> map = new HashMap<String, String>();
		if(result > 0) map.put("masterInfoModifyCheck", "success");
		else if(result == 0) map.put("masterInfoModifyCheck", "fail");
		
		return map;
	}
	
	//긴급공지 등록 - lastSendDate에 긴급공지 종료시간을 미리 세팅
	public Map<String, String> addNoticeServ(int hour, int minute, String msg){
		int result = 0;
		//먼저 기존 공지를 삭제한다.
		//int deleteResult = adminDao.deleteNotice();
		
		if(hour != 0) {
			for(int i=0; i< hour; i++) {
				minute += 60;
			}
		}
		
		UtilDate utilDate = new UtilDate();
		String lastTime = utilDate.getAfterTime(minute);
		//공지값 세팅
		Notice notice = new Notice();
		notice.setNotice(msg);
		//현재시간 구해서 입력받은 시간,분 더하기 포멧- utc시간
		notice.setLastSendDate(lastTime);
		
		//삭제 확인후 공지입력
		result = adminDao.insertNotice(notice);
		
		Map<String, String> map = new HashMap<String, String>();
		if(result > 0) map.put("addNoticeCheck", "success");
		else if(result == 0) map.put("addNoticeCheck", "fail");
		
		return map;
	}
}
