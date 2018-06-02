package one.top.holdem.admin.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import one.top.holdem.admin.service.AdminService;
import one.top.holdem.admin.vo.Account;
import one.top.holdem.admin.vo.Master;


@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	// 시작 > 로그인 페이지 연결
	@RequestMapping(value="/start", method = RequestMethod.GET)
	public String startCtrl() {
		int result = adminService.testDbServ();
		return "/admin/login";
	}
	
	//지점관리
	@RequestMapping(value="/branchManagement", method = RequestMethod.GET)
	public String branchManagementCtrl() {
		return "/admin/main";
	}
		
	//회원정보관리
	@RequestMapping(value="/userManagement", method = RequestMethod.GET)
	public String userManagementCtrl() {
		return "/admin/user/list_user";
	}
	
	//게임관리
	@RequestMapping(value="/gameManagement", method = RequestMethod.GET)
	public String gameManagementCtrl(Model model) {
		// 현재 배당율 조회하여 포워딩
		Master master = adminService.readNowMasterInfo();
		
		model.addAttribute("master", master);
		return "/admin/gameManager/input_form";
	}
	
	//입출금관리
	@RequestMapping(value="/inOutManagement", method = RequestMethod.GET)
	public String inOutManagementCtrl() {
		return "/admin/inOut/inOut_list";
	}
	
	//지점등록 (01-13 미완성)
	@RequestMapping(value="/addBranch", method = RequestMethod.POST)
	public String addBranchCtrl(Model model,
			Account account,
			@RequestParam(value="hp2", defaultValue="none")String hp2) {
		/*System.out.println("****** 지점등록 **********************");
		System.out.println("Account : "+account);
		System.out.println("hp2 : "+ hp2);
		System.out.println("***********************************");*/
		
		Map<String, String> map = adminService.addBranchServ(account, hp2);
		model.addAttribute("inputCheck", map.get("inputCheck"));
		return "/admin/main";
	}
	
	//지점수정 modifyAccount
	@RequestMapping(value="/modifyAccount", method = RequestMethod.POST)
	public String modifyAccountCtrl(Model model,
			Account account,
			@RequestParam(value="hp2", defaultValue="none")String hp2) {
		/*System.out.println("****** 지점수정 **********************");
		System.out.println("Account : "+account);
		System.out.println("hp2 : "+ hp2);
		System.out.println("***********************************");*/
		
		Map<String, String> map = adminService.modifyAccountServ(account, hp2);
		model.addAttribute("updateCheck", map.get("updateCheck"));
		
		return "/admin/main";
	}
}
