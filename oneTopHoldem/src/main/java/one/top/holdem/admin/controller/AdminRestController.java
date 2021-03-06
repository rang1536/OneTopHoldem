package one.top.holdem.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import one.top.holdem.admin.service.AdminService;
import one.top.holdem.admin.vo.Account;
import one.top.holdem.admin.vo.Import;
import one.top.holdem.admin.vo.Master;

@SessionAttributes({"grade","id","noticeCheck","userGold"})
@RestController
public class AdminRestController {
	@Autowired
	private AdminService adminService;
	
	//회원목록조회
	@RequestMapping(value="/userList", method = RequestMethod.POST)
	/*public Map<String, Object> userListCtrl(@ModelAttribute(value="grade")int grade){*/
	public Map<String, Object> userListCtrl(@RequestParam(value="grade", defaultValue="4")int grade,
			@RequestParam(value="loginId", defaultValue="none")String loginId){
		System.out.println("*********************************************************");
		System.out.println("grade :"+grade);
		System.out.println("loginId : "+loginId);
		System.out.println("*********************************************************");
		List<Account> list = adminService.readAllUserServ(grade, loginId);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}
	
	//하나의회원조회
	@RequestMapping(value="/readAccount", method = RequestMethod.POST)
	public Account readAccountCtrl(@RequestParam(value="loginId")String loginId){
		/*System.out.println("아이디 확인 : "+accountId);*/
		Account account = adminService.readAcccountServ(loginId);
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
	public Map<String, String> modifyAccountStatusCtrl(@RequestParam(value="accountId")String accountId){
		System.out.println("accountId : "+accountId);
		Map<String, String> map = adminService.modifyAccountStatusServ(Long.parseLong(accountId), 1);
		return map; 
	}
	
	//지점상태 정지로 변경 modifyAccountStatus
	@RequestMapping(value="/modifyAccountStatusNone", method = RequestMethod.POST)
	public Map<String, String> modifyAccountStatusNoneCtrl(@RequestParam(value="accountId")long accountId){
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
		System.out.println("폼값 확인 : "+account);
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
	
	
	// 긴급공지중지
	@RequestMapping(value="/removeNotice", method = RequestMethod.POST)
	public Map<String, Object> removeNoticeCtrl(Model model){
		/*System.out.println("폼 입력값 확인  : "+hour+" ,"+minute+" ,"+msg);*/
		Map<String, Object> map = new HashMap<String, Object>();
		int result = adminService.modifyNoticeStop();
		if(result == 1) map.put("deleteResult", "success");
		return map; 
	}
	
	// 긴급공지등록 addNotice
	@RequestMapping(value="/addNotice", method = RequestMethod.POST)
	public Map<String, String> addNoticeCtrl(@RequestParam(value="msg")String msg,
			@RequestParam(value="endDate", defaultValue="none")String endDate,
			@RequestParam(value="hour", defaultValue="none")String hour,
			@RequestParam(value="minute", defaultValue="none")String minute){
		/*System.out.println("폼 입력값 확인  : "+hour+" ,"+minute+" ,"+msg);*/
		
		Map<String, String> map = adminService.addNoticeServ(msg, endDate, hour, minute);
		return map; 
	}
		
	//메세지목록조회
	@RequestMapping(value="/mmsList", method = RequestMethod.POST)
	public Map<String, String> mmsListCtrl(@ModelAttribute(value="id")String loginId){
		// 보낸 메세지를 보겠다는건지? 아니면 본인한테 온 긴급공지라든지 공지같은걸 보겠다는건지? 후자라면 테이블이 없는데..?
		
		return null; 
	}
	
	//트리 계정조회
	@RequestMapping(value="/getTree", method = RequestMethod.POST)
	public Map<String, Object> getTreeCtrl(@RequestParam(value="loginId", defaultValue="none")String loginId,
			@RequestParam(value="grade", defaultValue="3")int grade){
		//System.out.println("ctrl check");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bonsaList", adminService.readTreeServ(loginId, grade));
		//System.out.println("ctrl check2 : "+map.get("bonsaList"));
		return map; 
	}
	
	//지점검색 searchBranch
	@RequestMapping(value="/searchBranch", method = RequestMethod.POST)
	public Map<String, Object> searchBranchCtrl(@RequestParam(value="branchId")String branchId){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchList", adminService.searchBranchServ(branchId));
		return map; 
	}
	
	//유저 로그인 userLogin
	@RequestMapping(value="/userLogin", method = RequestMethod.POST)
	public Map<String, Object> userLoginCtrl(Model model, Account account,
			@RequestParam(value="autoLogin", defaultValue="none")String autoLogin,
			HttpServletResponse response) {
		System.out.println("ID : "+account.getLoginId());
		System.out.println("ID : "+account.getLoginPassword());
		
		Map<String, Object> map = adminService.loginServ(account.getLoginId(), account.getLoginPassword(), "user");
		Account accountRes = (Account) map.get("account");
		if(map.get("loginCheck").equals("success")) {
			model.addAttribute("id", account.getLoginId());
			model.addAttribute("userGold", accountRes.getGold());
			
			if(autoLogin.equals("checked")) {
				Cookie cookieId = new Cookie("remId", account.getLoginId());
				
				cookieId.setPath("/");
				cookieId.setMaxAge(60*60*24*30);
				
				response.addCookie(cookieId);
				
				Cookie cookiePw = new Cookie("remPw", account.getLoginPassword());
				
				cookiePw.setPath("/");
				cookiePw.setMaxAge(60*60*24*30);
				
				response.addCookie(cookiePw);
				
			}			
		}
		
		return map;
	}
	
	//관리자 로그아웃 SessionStatus status
	@RequestMapping(value="/adLogOut", method = RequestMethod.POST)
	public Map<String, Object> adLogOut( SessionStatus status){
		Map<String, Object> map = new HashMap<String, Object>();
		status.setComplete();
		map.put("result", "succ");
		return map; 
	}
	
	//일일한도 칩금액 설정 setChipLimit
	@RequestMapping(value="/setChipLimit", method = RequestMethod.POST)
	public Map<String, Object> setChipLimit(@RequestParam(value="chip")String chip,
			@ModelAttribute(value="id")String loginId){
		Map<String, Object> map = adminService.setChipLimitServ(loginId, chip);
		return map; 
	}
}
