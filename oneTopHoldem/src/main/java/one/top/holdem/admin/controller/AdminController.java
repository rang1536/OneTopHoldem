package one.top.holdem.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import one.top.holdem.admin.service.AdminService;


@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	// 시작 > 로그인 페이지 연결
	@RequestMapping(value="/start", method = RequestMethod.GET)
	public String startCtrl() {
		int result = adminService.testDbServ();
		return "login";
	}
	
	//지점관리
	@RequestMapping(value="/branchManagement", method = RequestMethod.GET)
	public String branchManagementCtrl() {
		return "index";
	}
		
	//회원정보관리
	@RequestMapping(value="/userManagement", method = RequestMethod.GET)
	public String userManagementCtrl() {
		return "/user/list_user";
	}
	
	//게임관리
	@RequestMapping(value="/gameManagement", method = RequestMethod.GET)
	public String gameManagementCtrl() {
		return "/gameManager/input_form";
	}
	
	//입출금관리
	@RequestMapping(value="/inOutManagement", method = RequestMethod.GET)
	public String inOutManagementCtrl() {
		return "/inOut/inOut_list";
	}
}
