package one.top.holdem;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import one.top.holdem.admin.service.AdminService;
import one.top.holdem.admin.vo.Account;
import one.top.holdem.admin.vo.Import;
import one.top.holdem.admin.vo.Master;
import one.top.holdem.admin.vo.Notice;

@SessionAttributes({"grade","id","noticeCheck","userGold"})
@RestController
public class CustomRestController {
	@Autowired
	private CustomService customService;
	
	//id중복검사 overlap
	@RequestMapping(value="/dupIdCheck", method = RequestMethod.POST)
	public Map<String,String> dupIdCheck(@RequestParam(value="loginId")String loginId){
		System.out.println("Check Id : "+loginId);
		int cnt = customService.dupIdCheck(loginId);
		Map<String,String> map = new HashMap<String,String>();
		map.put("cnt", String.valueOf(cnt));
		return map; 
	}
	
	//회원등록
	@RequestMapping(value="/registerMember", method = RequestMethod.POST)
	public Map<String, Object> registerMember(Model model,
			Account account) {
		
		System.out.println("inputLoginId : "+account.getLoginId());
		Map<String, String> map = customService.registerMember(account);
		Map<String, Object> returnMap = new HashMap<String, Object>();
		returnMap.put("inputCheck", map.get("inputCheck"));
		return returnMap;
	}

	//회원수정 modifyMember
	@RequestMapping(value="/modifyMember", method = RequestMethod.POST)
	public Map<String, Object> modifyMember(Account account) {
		
		System.out.println("modifyMember account : "+account);
		int result = customService.modifyMemberServ(account);
		Map<String, Object> returnMap = new HashMap<String, Object>();
		if(result == 1) returnMap.put("result", "succ");
		else returnMap.put("result", "fail");
		return returnMap;
	}
	
	//메일인증
	@RequestMapping(value="/sendAuthEmail", method = RequestMethod.POST)
	public Map<String, Object> sendAuthEmail(@RequestParam(value="add")String add) {
		Map<String, Object> returnMap = customService.sendEmailAuthServ(add);
		return returnMap;
	}
	
	//긴급공지조회
	@RequestMapping(value="/getNotice", method = RequestMethod.POST)
	public Notice getNotice() {
		return customService.readNotice();
	}
}
