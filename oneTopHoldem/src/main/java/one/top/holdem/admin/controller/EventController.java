package one.top.holdem.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import one.top.holdem.admin.service.EventService;

@Controller
public class EventController {
	
	@Autowired
	EventService eventService;
	
	@RequestMapping(value="/event", method = RequestMethod.GET)
	public String eventCtrl() {
		return "/event/event";
	}

	//수익관리 importManagement
	@RequestMapping(value="/importManagement", method = RequestMethod.GET)
	public String importManagementCtrl() {
		return "/importManager/import_list";
	}
}
