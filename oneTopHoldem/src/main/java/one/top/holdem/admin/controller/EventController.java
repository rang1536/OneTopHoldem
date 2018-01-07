package one.top.holdem.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import one.top.holdem.admin.service.EventService;
import one.top.holdem.admin.vo.Event;

@RestController
public class EventController {
	@Autowired
	private EventService eventService;
	
	@RequestMapping(value="/eventList", method = RequestMethod.POST)
	public Map<String, Object> userListCtrl(){
		List<Event> list = eventService.eventList();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}
}
