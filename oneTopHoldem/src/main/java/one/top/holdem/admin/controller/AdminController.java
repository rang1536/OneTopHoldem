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
	
	@RequestMapping(value="/start", method = RequestMethod.GET)
	public String startCtrl() {
		int result = adminService.testDbServ();
		return "login";
	}
	
	//회원정보관리
	@RequestMapping(value="/userManagement", method = RequestMethod.GET)
	public String userManagementCtrl() {
		return "/user/list_user";
	}
}
