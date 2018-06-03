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

@SessionAttributes({"grade","id"})
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

	
}
