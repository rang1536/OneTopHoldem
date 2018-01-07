package one.top.holdem.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import one.top.holdem.admin.dao.EventDao;
import one.top.holdem.admin.vo.Event;

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
}
