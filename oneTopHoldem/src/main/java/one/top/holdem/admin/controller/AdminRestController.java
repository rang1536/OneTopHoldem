package one.top.holdem.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import one.top.holdem.admin.service.AdminService;
import one.top.holdem.admin.vo.Account;
import one.top.holdem.admin.vo.Import;

@RestController
public class AdminRestController {
	@Autowired
	private AdminService adminService;
	
	//회원목록조회
	@RequestMapping(value="/userList", method = RequestMethod.POST)
	public Map<String, Object> userListCtrl(){
		List<Account> list = adminService.readAllUserServ();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}
	
	//하나의회원조회
	@RequestMapping(value="/readAccount", method = RequestMethod.POST)
	public Account readAccountCtrl(@RequestParam(value="accountId")long accountId){
		/*System.out.println("아이디 확인 : "+accountId);*/
		Account account = adminService.readAcccountServ(accountId);
		return account;
	}
	
	//입출금조회
	@RequestMapping(value="/readGoldInOut", method = RequestMethod.POST)
	public List<Import> readGoldInOutCtrl(@RequestParam(value="accountId")long accountId){
		/*System.out.println("아이디 확인 : "+accountId);*/
		List<Import> list = adminService.readImportServ();
		return list;
	}
	
	//id중복검사 overlap
	@RequestMapping(value="/overlap", method = RequestMethod.POST)
	public Map<String, String> overlapCtrl(@RequestParam(value="loginId")String loginId){
		/*System.out.println("아이디 확인 : "+loginId);*/
		Map<String, String> map = adminService.readIdOverlapCountServ(loginId);
		return map; 
	}
	
}
