package one.top.holdem.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.icu.text.DecimalFormat;

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
	
	//등급명 구하기
	public String getName(int grade) {
		String name = "";
		if(grade==1) name="마스터";
		if(grade==2) name="지사";
		if(grade==3) name="PC방";
		if(grade==4) name="일반";
		return name;
	}
	/* 모든유저정보조회
	 * @resultType : Account*/
	public List<Account> readAllUserServ(){
		List<Account> list = adminDao.selectAllUser();
		
		DecimalFormat df = new DecimalFormat("#,##0");
		for(int i =0; i<list.size(); i++) {
			String goldCount = df.format(list.get(i).getGold());
			list.get(i).setGoldCount(goldCount); //3자리수 , 붙이기
			list.get(i).setGradeName(getName(list.get(i).getGrade())); //등급명 구하기
		}
		
		return list;
	}
	
	/* 하나의 유저정보조회
	 * @resultType : Account*/
	public Account readAcccountServ(long accountId) {
		return adminDao.selectAccount(accountId);
	}
}
