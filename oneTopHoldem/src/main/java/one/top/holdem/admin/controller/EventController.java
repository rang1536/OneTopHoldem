package one.top.holdem.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import one.top.holdem.admin.service.EventService;

@SessionAttributes({"grade","id","noticeCheck","userGold"})
@Controller
public class EventController {
	
	@Autowired
	EventService eventService;
	
	@RequestMapping(value="/event", method = RequestMethod.GET)
	public String eventCtrl() {
		return "/admin/event/event";
	}

	//수익관리 importManagement
	@RequestMapping(value="/importManagement", method = RequestMethod.GET)
	public String importManagementCtrl() {
		return "/admin/importManager/import_list";
	}
	
	
}
