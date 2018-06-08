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
		readOption.setOutputColumns("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","AA","AB","AC","AD","AE","AF","AG","AH","AI","AJ","AK","AL");
		readOption.setStartRow(2);
		  
		List<Map<String, String>> excelContent = ExcelRead.read(readOption);
		  
		Tournament eventVO = null;
		Map<String, Object> map = new HashMap<String, Object>();
		for(Map<String, String> article : excelContent){
			System.out.println("setting...");
			eventVO = new Tournament();
			eventVO.setStartDate(article.get("A"));
			eventVO.setMoneyType(Integer.parseInt(article.get("B").substring(0,article.get("B").lastIndexOf("."))));
			eventVO.setNeedTicket(Long.parseLong(article.get("C").substring(0,article.get("C").lastIndexOf("."))));
			eventVO.setNeedGold(Long.parseLong(article.get("D").substring(0,article.get("D").lastIndexOf("."))));
			eventVO.setNeedCommission(Long.parseLong(article.get("E").substring(0,article.get("E").lastIndexOf("."))));
			eventVO.setReceiveMoney(Long.parseLong(article.get("F").substring(0,article.get("F").lastIndexOf("."))));
			eventVO.setMaxRebuyCount(Long.parseLong(article.get("G").substring(0,article.get("G").lastIndexOf("."))));
			eventVO.setRebuyNeedGold(Long.parseLong(article.get("H").substring(0,article.get("H").lastIndexOf("."))));
			eventVO.setRebuyNeedCommission(Long.parseLong(article.get("I").substring(0,article.get("I").lastIndexOf("."))));
			eventVO.setRebuyReceiveMoney(Long.parseLong(article.get("J").substring(0,article.get("J").lastIndexOf("."))));
			eventVO.setMaxAddOnCount(Long.parseLong(article.get("K").substring(0,article.get("K").lastIndexOf("."))));
			eventVO.setAddOnNeedGold(Long.parseLong(article.get("L").substring(0,article.get("L").lastIndexOf("."))));
			eventVO.setAddOnNeedCommission(Long.parseLong(article.get("M").substring(0,article.get("M").lastIndexOf("."))));
			eventVO.setAddOnReceiveMoney(Long.parseLong(article.get("N").substring(0,article.get("N").lastIndexOf("."))));
			eventVO.setBuyInType(Integer.parseInt(article.get("O").substring(0,article.get("O").lastIndexOf("."))));
			eventVO.setMinUserCount(Long.parseLong(article.get("P").substring(0,article.get("P").lastIndexOf("."))));
			eventVO.setMaxUserCount(Long.parseLong(article.get("Q").substring(0,article.get("Q").lastIndexOf("."))));
			eventVO.setGuarantee(Long.parseLong(article.get("R").substring(0,article.get("R").lastIndexOf("."))));
			eventVO.setBlindUpTime(Integer.parseInt(article.get("S").substring(0,article.get("S").lastIndexOf("."))));
			eventVO.setBreakTimeLevel(Integer.parseInt(article.get("T").substring(0,article.get("T").lastIndexOf("."))));
			eventVO.setBreakTime(Integer.parseInt(article.get("U").substring(0,article.get("U").lastIndexOf("."))));
			eventVO.setTitle(article.get("V"));
			eventVO.setAnteBaseValue(Long.parseLong(article.get("W").substring(0,article.get("W").lastIndexOf("."))));
			eventVO.setAnteUpValue9(Long.parseLong(article.get("X").substring(0,article.get("X").lastIndexOf("."))));
			eventVO.setAnteUpValue19(Long.parseLong(article.get("Y").substring(0,article.get("Y").lastIndexOf("."))));
			eventVO.setAnteUpValue29(Long.parseLong(article.get("Z").substring(0,article.get("Z").lastIndexOf("."))));
			eventVO.setAnteUpValue39(Long.parseLong(article.get("AA").substring(0,article.get("AA").lastIndexOf("."))));
			eventVO.setAnteUpValue49(Long.parseLong(article.get("AB").substring(0,article.get("AB").lastIndexOf("."))));
			eventVO.setAnteUpValueOther(Long.parseLong(article.get("AC").substring(0,article.get("AC").lastIndexOf("."))));
			eventVO.setSmallBlindBaseValue(Long.parseLong(article.get("AD").substring(0,article.get("AD").lastIndexOf("."))));
			eventVO.setSmallBlindUpValue9(Long.parseLong(article.get("AE").substring(0,article.get("AE").lastIndexOf("."))));
			eventVO.setSmallBlindUpValue19(Long.parseLong(article.get("AF").substring(0,article.get("AF").lastIndexOf("."))));
			eventVO.setSmallBlindUpValue29(Long.parseLong(article.get("AG").substring(0,article.get("AG").lastIndexOf("."))));
			eventVO.setSmallBlindUpValue39(Long.parseLong(article.get("AH").substring(0,article.get("AH").lastIndexOf("."))));
			eventVO.setSmallBlindUpValue49(Long.parseLong(article.get("AI").substring(0,article.get("AI").lastIndexOf("."))));
			eventVO.setSmallBlindUpValueOther(Long.parseLong(article.get("AJ").substring(0,article.get("AJ").lastIndexOf("."))));
			eventVO.setTournamentState(Integer.parseInt(article.get("AK").substring(0,article.get("AK").lastIndexOf("."))));
			eventVO.setMaxBettingMoney(Long.parseLong(article.get("AL").substring(0,article.get("AL").lastIndexOf("."))));
			
			System.out.println("check : "+eventVO);
			int result = eventDao.insertTournament(eventVO);
			
			
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
