package one.top.holdem;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import one.top.holdem.admin.service.AdminService;
import one.top.holdem.admin.vo.Account;


@SessionAttributes({"grade","accountId","id"})
@Controller
public class HomeController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "index";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginCtrl(Model model, 
			@RequestParam(value="path")String path) {
		model.addAttribute("path", path); // 세팅은 하는데 중간 지점이 없이 시작페이지가 로그인이므로 사용할 일은 없다. 리턴 url임.
		return "login";
	}
	
	//로그인 
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String loginCtrl(Model model, 
			@RequestParam(value="id")String loginId,
			@RequestParam(value="pw")String loginPw){
	
		Map<String, Object> map = adminService.loginServ(loginId, loginPw);
		if(map.get("loginCheck").equals("success")){
			Account account = (Account)map.get("account");
			model.addAttribute("id", account.getLoginId());
			model.addAttribute("grade", account.getGrade());
			model.addAttribute("accountId", account.getAccountId());
			
		}else if(map.get("loginCheck").equals("failPw") || map.get("loginCheck").equals("failId")){
			model.addAttribute("loginCheck", map.get("loginCheck"));
			return "login";
		}
		
		return "index";
	}
}
