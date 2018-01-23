package one.top.holdem.admin.service;

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

@Service
public class AdminService {
	@Autowired
	private AdminDao adminDao;
	
	public int testDbServ() {
		int result = adminDao.selectTest();
		System.out.println("테스트 : "+result);
		return 0;
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
	public List<Account> readAllUserServ(){
		List<Account> list = adminDao.selectAllUser();
		
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
		
		//쿼리실행
		
		//결과체크
		Map<String, String> map = new HashMap<String, String>(); //성공 실패값 담아 뷰로 리턴.
		
		return map;
	}
	
	//지점수정
	public Map<String, String> modifyAccountServ(Account account, String hp2){
		// 연락처2 어떻게 할지 정해서 필드를 늘리든 해야함.
		
		Map<String, String> map = new HashMap<String, String>();
		int result = adminDao.updateAccount(account);
		
		if(result > 0) map.put("updateCheck", "success");
		else if(result == 0) map.put("updateCheck", "fail");
		
		return map;
	}
	
	// 지점상태변경
	public Map<String, String> modifyAccountStatusServ(int accountId, int accountState){
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
		if(result > 0) map.put("changeCheck", "success");
		else if(result == 0) map.put("changeCheck", "fail");
		
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
	
	//긴급공지 등록 - 이게 맞나 몰라 공지 1개만 있고 계속 갈아치우는?
	public Map<String, String> addNoticeServ(int hour, int minute, String msg){
		int result = 0;
		//먼저 기존 공지를 삭제한다.
		int deleteResult = adminDao.deleteNotice();
		
		//공지값 세팅
		Notice notice = new Notice();
		notice.setNotice(msg);
		//현재시간 구해서 입력받은 시간,분 더하기 포멧- utc시간
		
		//삭제 확인후 공지입력
		if(deleteResult == 1) result = adminDao.insertNotice(notice);
		
		// 공지 입력 후 공지 알림 스크립트 실행하도록 뭔가 처리를 해줌.
		
		Map<String, String> map = new HashMap<String, String>();
		if(result > 0) map.put("addNoticeCheck", "success");
		else if(result == 0) map.put("addNoticeCheck", "fail");
		
		return map;
	}
}
