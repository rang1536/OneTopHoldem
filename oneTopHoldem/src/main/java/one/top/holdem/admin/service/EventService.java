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
		 
		ReadOption readOption = new ReadOption();
		readOption.setFilePath(destFile.getAbsolutePath());
		readOption.setOutputColumns("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","AA","AB","AC","AD","AE","AF","AG","AH","AI","AJ","AK");
		readOption.setStartRow(2);
		  
		List<Map<String, String>> excelContent = ExcelRead.read(readOption);
		  
		Tournament eventVO = null;
		Map<String, Object> map = new HashMap<String, Object>();
		for(Map<String, String> article : excelContent){		  
			eventVO = new Tournament();
			eventVO.setTournamentId(eventDao.selectLastSeq()+1);
			eventVO.setStartDate(article.get("A"));
			eventVO.setMoneyType(Integer.parseInt(article.get("B")));
			eventVO.setNeedTicket(Long.parseLong(article.get("C")));
			eventVO.setNeedGold(Long.parseLong(article.get("D")));
			eventVO.setNeedCommission(Long.parseLong(article.get("E")));
			eventVO.setReceiveMoney(Long.parseLong(article.get("F")));
			eventVO.setMaxRebuyCount(Long.parseLong(article.get("G")));
			eventVO.setRebuyNeedGold(Long.parseLong(article.get("H")));
			eventVO.setRebuyNeedCommission(Long.parseLong(article.get("I")));
			eventVO.setRebuyReceiveMoney(Long.parseLong(article.get("J")));
			eventVO.setMaxAddOnCount(Long.parseLong(article.get("K")));
			eventVO.setAddOnNeedGold(Long.parseLong(article.get("L")));
			eventVO.setAddOnNeedCommission(Long.parseLong(article.get("M")));
			eventVO.setAddOnReceiveMoney(Long.parseLong(article.get("N")));
			eventVO.setBuyInType(Integer.parseInt(article.get("O")));
			eventVO.setMinUserCount(Long.parseLong(article.get("P")));
			eventVO.setMaxUserCount(Long.parseLong(article.get("Q")));
			eventVO.setGuarantee(Long.parseLong(article.get("R")));
			eventVO.setBlindUpTime(Integer.parseInt(article.get("S")));
			eventVO.setBreakTimeLevel(Integer.parseInt(article.get("T")));
			eventVO.setBreakTime(Integer.parseInt(article.get("U")));
			eventVO.setTitle(article.get("V"));
			eventVO.setAnteBaseValue(Long.parseLong(article.get("W")));
			eventVO.setAnteUpValue9(Long.parseLong(article.get("X")));
			eventVO.setAnteUpValue19(Long.parseLong(article.get("Y")));
			eventVO.setAnteUpValue29(Long.parseLong(article.get("Z")));
			eventVO.setAnteUpValue39(Long.parseLong(article.get("AA")));
			eventVO.setAnteUpValue49(Long.parseLong(article.get("AB")));
			eventVO.setAnteUpValueOther(Long.parseLong(article.get("AC")));
			eventVO.setSmallBlindBaseValue(Long.parseLong(article.get("AD")));
			eventVO.setSmallBlindUpValue9(Long.parseLong(article.get("AE")));
			eventVO.setSmallBlindUpValue9(Long.parseLong(article.get("AF")));
			eventVO.setSmallBlindUpValue9(Long.parseLong(article.get("AG")));
			eventVO.setSmallBlindUpValue9(Long.parseLong(article.get("AH")));
			eventVO.setSmallBlindUpValue9(Long.parseLong(article.get("AI")));
			eventVO.setSmallBlindUpValueOther(Long.parseLong(article.get("AJ")));
			eventVO.setTournamentState(Integer.parseInt(article.get("AK")));
		
			int result = eventDao.insertEvent(eventVO);
			System.out.println("check : "+eventVO);
			
			if(result == 1) {
				System.out.println("엑셀파일 입력 성공~!!");
				map.put("uploadResult", "succ");
			}
		}
		return map;
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
				System.out.println(i+ " 번째 결과값 확인 : "+list);
			}
		}else{
			System.out.println("조회된 수입목록이 없음!!");
		}
		
		return list;
	}

}
