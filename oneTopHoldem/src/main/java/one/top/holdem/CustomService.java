package one.top.holdem;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.icu.text.DecimalFormat;

import one.top.holdem.admin.vo.Account;
import one.top.holdem.admin.vo.Tournament;

@Service
public class CustomService {
	@Autowired
	private CustomDao customDao;

	//아이디 중복체크
	public int dupIdCheck(String loginId){
		int count = customDao.dupIdCheck(loginId);
		return count;
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
	
}
