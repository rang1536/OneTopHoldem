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
	
	public void insertEvent(File destFile) {
		 
		ReadOption readOption = new ReadOption();
		readOption.setFilePath(destFile.getAbsolutePath());
		readOption.setOutputColumns("A","B","C","D");
		readOption.setStartRow(2);
		  
		List<Map<String, String>> excelContent = ExcelRead.read(readOption);
		  
		Tournament eventVO = null;
		for(Map<String, String> article : excelContent){
		  
			eventVO = new Tournament();
			eventVO.setTitle(article.get("A"));
//			eventVO.setContent(article.get("B"));
//			eventVO.setUserId(article.get("C"));
//			eventVO.setFileName(article.get("D"));
		
//			eventDao.insertEvent(eventVO);
			System.out.println("check : "+eventVO);
		}
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
