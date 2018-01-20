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
	
	//지점상태 정지로 변경 modifyAccountStatus
	@RequestMapping(value="/modifyAccountStatus", method = RequestMethod.POST)
	public Map<String, String> modifyAccountStatusCtrl(@RequestParam(value="accountId")int accountId){
		/*System.out.println("아이디 확인 : "+accountId);*/
		Map<String, String> map = adminService.modifyAccountStatusServ(accountId, 1);
		return map; 
	}
	
	//지점상태 정지로 변경 modifyAccountStatus
	@RequestMapping(value="/modifyAccountStatusNone", method = RequestMethod.POST)
	public Map<String, String> modifyAccountStatusNoneCtrl(@RequestParam(value="accountId")int accountId){
		/*System.out.println("아이디 확인 : "+accountId);*/
		Map<String, String> map = adminService.modifyAccountStatusServ(accountId, 0);
		return map; 
	}
	
	//지점상태 정지로 변경 modifyAccountStatus
	@RequestMapping(value="/removeAccount", method = RequestMethod.POST)
	public Map<String, String> removeAccountCtrl(@RequestParam(value="accountId")int accountId){
		/*System.out.println("아이디 확인 : "+accountId);*/
		Map<String, String> map = adminService.removeAccountServ(accountId);
		return map; 
	}
	
	//비번변경 changePass
	@RequestMapping(value="/changePass", method = RequestMethod.POST)
	public Map<String, String> changePassCtrl(Account account){
		/*System.out.println("아이디 확인 : "+accountId);*/
		Map<String, String> map = adminService.changePassServ(account);
		return map; 
	}
}
