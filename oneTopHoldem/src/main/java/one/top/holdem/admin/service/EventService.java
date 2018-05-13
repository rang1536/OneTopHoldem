package one.top.holdem.admin.service;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import one.top.holdem.admin.dao.EventDao;
import one.top.holdem.admin.vo.Event;
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
	public List<Event> eventList(){
		return eventDao.eventList();
	}
	
	public void insertEvent(File destFile) {
		 
		ReadOption readOption = new ReadOption();
		readOption.setFilePath(destFile.getAbsolutePath());
		readOption.setOutputColumns("A","B","C","D");
		readOption.setStartRow(2);
		  
		List<Map<String, String>> excelContent = ExcelRead.read(readOption);
		  
		Event eventVO = null;
		for(Map<String, String> article : excelContent){
		  
			eventVO = new Event();
			eventVO.setTitle(article.get("A"));
//			eventVO.setContent(article.get("B"));
//			eventVO.setUserId(article.get("C"));
//			eventVO.setFileName(article.get("D"));
		
//			eventDao.insertEvent(eventVO);
			System.out.println("check : "+eventVO);
		}
	}

}
