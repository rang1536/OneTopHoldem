package one.top.holdem;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.icu.text.DecimalFormat;

import one.top.holdem.admin.vo.Account;
import one.top.holdem.admin.vo.Notice;
import one.top.holdem.admin.vo.Tournament;
import one.top.holdem.util.UtilMail;

@Service
public class CustomService {
	@Autowired
	private CustomDao customDao;

	//아이디 중복체크
	public int dupIdCheck(String loginId){
		int count = customDao.dupIdCheck(loginId);
		return count;
	}
	
	//긴급공지 조회
	public Notice readNotice() {
		return customDao.selectNotice();
	}
	
	//회원등록
	public Map<String, String> registerMember(Account account) {
		int result = customDao.registerMember(account);

		//결과체크
		Map<String, String> map = new HashMap<String, String>(); //성공 실패값 담아 뷰로 리턴.
		if(result == 1) map.put("inputCheck", "success");
		else map.put("inputCheck", "fail");
		return map;
	}
	
	public List<Tournament> tournamentList(String page){
		List<Tournament> list = new ArrayList<Tournament>();
		list = customDao.tournamentList(page); 
		return list;
	}
	
	//회원조회
	public Account readMemberServ(String loginId) {
		Account account = customDao.selectMember(loginId);
		System.out.println("account : "+account);
		return account;
	}
	
	//회원수정
	public int modifyMemberServ(Account account) {
		return customDao.updateMember(account);
	}
	
	//비번수정
	public Map<String, Object> modifyPassWordServ(String loginId, String nowPw, String newPw) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("loginId", loginId);
		param.put("loginPassword", nowPw);
		
		Account account = customDao.selPwOverlap(param);
		
		Map<String, Object> map = new HashMap<String, Object>();
		if(account != null) {
			account.setLoginPassword(newPw);
			int result = customDao.updatePw(account);
			if(result == 1) map.put("result", "succ");
			else map.put("result", "fail");
		}else {
			map.put("result", "noAccount");
		}
		return map;
	}
	
	public int getTournamentTotCnt() {
		return customDao.getTournamentTotCnt();
	}

	public List<Tournament> tournamentEndList(String page){
		List<Tournament> list = new ArrayList<Tournament>();
		list = customDao.tournamentEndList(page); 
		return list;
	}
	
	public int getTournamentEndTotCnt() {
		return customDao.getTournamentEndTotCnt();
	}
	
	public Tournament getTournament(String tId) {
		return customDao.selectTournament(tId);
	}
	
	//메일발송
	public Map<String, Object> sendEmailAuthServ(String add) {
		UtilMail utilMail = new UtilMail();
		return utilMail.sendMail(add);
	}
}
