package one.top.holdem.admin.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import one.top.holdem.admin.dao.EventDao;
import one.top.holdem.admin.vo.Tournament;
import one.top.holdem.admin.vo.Import;
import one.top.holdem.util.ExcelRead;
import one.top.holdem.util.ReadOption;

@Service
public class EventService {
	@Autowired
	private EventDao eventDao;

	/**
	 * 전체 이벤트 리스트
	 * @return
	 */
	public List<Tournament> eventList(){
		return eventDao.eventList();
	}
	
	public Map<String, Object> insertEvent(File destFile) {
		System.out.println("insert Service~!!");
		ReadOption readOption = new ReadOption();
		readOption.setFilePath(destFile.getAbsolutePath());
		readOption.setOutputColumns("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","AA","AB","AC","AD","AE","AF","AG","AH","AI","AJ","AK","AL","AM");
		readOption.setStartRow(2);
		  
		List<Map<String, String>> excelContent = ExcelRead.read(readOption);
		  
		Tournament eventVO = null;
		Map<String, Object> map = new HashMap<String, Object>();
		for(Map<String, String> article : excelContent){
			System.out.println("setting...");
			eventVO = new Tournament();
			eventVO.setStartDate(article.get("A"));
			eventVO.setMoneyType(parseInt(article.get("B")));
			eventVO.setNeedTicket(parseLong(article.get("C")));
			eventVO.setNeedGold(parseLong(article.get("D")));
			eventVO.setNeedCommission(parseLong(article.get("E")));
			eventVO.setReceiveMoney(parseLong(article.get("F")));
			eventVO.setMaxRebuyCount(parseLong(article.get("G")));
			eventVO.setRebuyNeedGold(parseLong(article.get("H")));
			eventVO.setRebuyNeedCommission(parseLong(article.get("I")));
			eventVO.setRebuyReceiveMoney(parseLong(article.get("J")));
			eventVO.setMaxAddOnCount(parseLong(article.get("K")));
			eventVO.setAddOnNeedGold(parseLong(article.get("L")));
			eventVO.setAddOnNeedCommission(parseLong(article.get("M")));
			eventVO.setAddOnReceiveMoney(parseLong(article.get("N")));
			eventVO.setBuyInType(parseInt(article.get("O")));
			eventVO.setMinUserCount(parseLong(article.get("P")));
			eventVO.setMaxUserCount(parseLong(article.get("Q")));
			eventVO.setGuarantee(parseLong(article.get("R")));
			eventVO.setBlindUpTime(parseInt(article.get("S")));
			eventVO.setBreakTimeLevel(parseInt(article.get("T")));
			eventVO.setBreakTime(parseInt(article.get("U")));
			eventVO.setTitle(article.get("V"));
			eventVO.setAnteBaseValue(parseLong(article.get("W")));
			eventVO.setAnteUpValue9(parseLong(article.get("X")));
			eventVO.setAnteUpValue19(parseLong(article.get("Y")));
			eventVO.setAnteUpValue29(parseLong(article.get("Z")));
			eventVO.setAnteUpValue39(parseLong(article.get("AA")));
			eventVO.setAnteUpValue49(parseLong(article.get("AB")));
			eventVO.setAnteUpValueOther(parseLong(article.get("AC")));
			eventVO.setSmallBlindBaseValue(parseLong(article.get("AD")));
			eventVO.setSmallBlindUpValue9(parseLong(article.get("AE")));
			eventVO.setSmallBlindUpValue19(parseLong(article.get("AF")));
			eventVO.setSmallBlindUpValue29(parseLong(article.get("AG")));
			eventVO.setSmallBlindUpValue39(parseLong(article.get("AH")));
			eventVO.setSmallBlindUpValue49(parseLong(article.get("AI")));
			eventVO.setSmallBlindUpValueOther(parseLong(article.get("AJ")));
			eventVO.setTournamentState(parseInt(article.get("AK")));
			eventVO.setMaxBettingMoney(parseLong(article.get("AL")));
			eventVO.setGroupId(parseLong(article.get("AM")));
			
			System.out.println("check : "+eventVO);
			int result = eventDao.insertTournament(eventVO);
			
			
			if(result == 1) {
				System.out.println("excel insert Success~!!");
				map.put("uploadResult", "succ");
			}
		}
		return map;
	}
	
	//캐스팅 String > int
	public int parseInt(String value) {
		int result = 0;
		if(value.contains(".")) {
			result = Integer.parseInt(value.substring(0, value.lastIndexOf(".")));
		}else {
			result = Integer.parseInt(value);
		}
		
		return result;
	}
	
	//캐스팅 String > long
	public long parseLong(String value) {
		long result = 0;
		if(value.contains(".")) {
			result = Long.parseLong(value.substring(0, value.lastIndexOf(".")));
		}else {
			result = Long.parseLong(value);
		}
		return result;
	}
	
	//수익조회
	public List<Import> readImportServ(){
		Date date = new Date();
		
		SimpleDateFormat format = new SimpleDateFormat("YYYYMMDD");
		String nowDate = format.format(date);
		String year = nowDate.substring(0, 4);
		String month = nowDate.substring(4,6);
		
		System.out.println("오늘날짜 : "+nowDate);
		System.out.println("년 : "+year+" 월 : "+month);
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("year", year);
		params.put("month", month);
		
		List<Import> list = eventDao.selectImport(params);
		System.out.println(list);
		System.out.println(list.size());
		if(list.size() != 0) {
			for(int i=0; i<list.size(); i++) {
				System.out.println(i+ " times result Check : "+list);
			}
		}else{
			System.out.println("조회된 수입목록이 없음!!");
		}
		
		return list;
	}

}
