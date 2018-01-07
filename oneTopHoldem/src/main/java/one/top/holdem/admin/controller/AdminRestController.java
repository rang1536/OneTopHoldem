package one.top.holdem.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import one.top.holdem.admin.service.AdminService;
import one.top.holdem.admin.vo.Account;

@RestController
public class AdminRestController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="/userList", method = RequestMethod.POST)
	public Map<String, Object> userListCtrl(){
		List<Account> list = adminService.readAllUserServ();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}
}
