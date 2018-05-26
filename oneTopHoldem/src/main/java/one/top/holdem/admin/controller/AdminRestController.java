package one.top.holdem.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
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
public class AdminRestController {
	@Autowired
	private AdminService adminService;
	
	//회원목록조회
	@RequestMapping(value="/userList", method = RequestMethod.POST)
	/*public Map<String, Object> userListCtrl(@ModelAttribute(value="grade")int grade){*/
	public Map<String, Object> userListCtrl(){
		int grade=0;
		List<Account> list = adminService.readAllUserServ(grade);
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
	
	//골드증여 addGold - chargeGold필드인지 골드에 바로 더하는지 확인 해야함 01.18 - 일단 기존골드 + 보내는골드로 작업.
	@RequestMapping(value="/addGold", method = RequestMethod.POST)
	public Map<String, String> addGoldCtrl(@RequestParam(value="accountId")int accountId,
			@RequestParam(value="addGold")long addGold){
		/*System.out.println("아이디 확인 : "+accountId+" 증여할 골드 : "+addGold);*/
		Map<String, String> map = adminService.modifyAccountGoldServ(accountId, addGold);
		return map; 
	}
	
	//티켓증여 addTicket 
	@RequestMapping(value="/addTicket", method = RequestMethod.POST)
	public Map<String, String> addTicketCtrl(@RequestParam(value="accountId")int accountId,
			@RequestParam(value="addTicket")long addTicket){
		/*System.out.println("아이디 확인 : "+accountId+" 증여할 티켓 : "+addTicket);*/
		Map<String, String> map = adminService.modifyAccountTicketServ(accountId, addTicket);
		return map; 
	}
	
	//게임 배당율 수정 modifyMasterInfo
	@RequestMapping(value="/modifyMasterInfo", method = RequestMethod.POST)
	public Map<String, String> modifyMasterInfoCtrl(Master master){
		/*System.out.println("폼 입력값 확인  : "+master);*/
		Map<String, String> map = adminService.modifyMasterInfoServ(master);
		return map; 
	}
	
	
	// 긴급공지등록 addNotice
	@RequestMapping(value="/addNotice", method = RequestMethod.POST)
	public Map<String, String> addNoticeCtrl(@RequestParam(value="hour")int hour,
			@RequestParam(value="minute")int minute,
			@RequestParam(value="msg")String msg){
		/*System.out.println("폼 입력값 확인  : "+hour+" ,"+minute+" ,"+msg);*/
		/* 긴급공지 로직 정해질때까지 보류
		 * Map<String, String> map = adminService.addNoticeServ(hour, minute, msg);*/
		return null; 
	}
	
	//메세지목록조회
	@RequestMapping(value="/mmsList", method = RequestMethod.POST)
	public Map<String, String> mmsListCtrl(@ModelAttribute(value="id")String loginId){
		// 보낸 메세지를 보겠다는건지? 아니면 본인한테 온 긴급공지라든지 공지같은걸 보겠다는건지? 후자라면 테이블이 없는데..?
		
		return null; 
	}
	
}
