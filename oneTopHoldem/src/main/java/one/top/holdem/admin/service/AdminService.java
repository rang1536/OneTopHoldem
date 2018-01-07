package one.top.holdem.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import one.top.holdem.admin.dao.AdminDao;
import one.top.holdem.admin.vo.Account;

@Service
public class AdminService {
	@Autowired
	private AdminDao adminDao;
	
	public int testDbServ() {
		int result = adminDao.selectTest();
		System.out.println("테스트 : "+result);
		return 0;
	}
	
	/*
	 * 모든유저정보조회
	 * @resultType : Account*/
	public List<Account> readAllUserServ(){
		return adminDao.selectAllUser();
	}
}
