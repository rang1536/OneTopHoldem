package one.top.holdem.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import one.top.holdem.admin.service.EventService;
import one.top.holdem.admin.vo.Event;

@RestController
public class EventRestController {
	@Autowired
	private EventService eventService;
	
	@RequestMapping(value="/eventList", method = RequestMethod.POST)
	public Map<String, Object> eventListCtrl(){
		List<Event> list = eventService.eventList();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}
	
	@RequestMapping("/eventWrite")
    public ModelAndView eventWriteCtrl(MultipartHttpServletRequest request){
        
        MultipartFile excelFile = request.getFile("excelFile");
        if(excelFile==null || excelFile.isEmpty()){
            throw new RuntimeException("엑셀파일을 선택해 주세요");
        }
 
        File destFile = new File("D:\\"+excelFile.getOriginalFilename());
        try {
        	excelFile.transferTo(destFile);
        } catch (IllegalStateException | IOException e) {
            throw new RuntimeException(e.getMessage(),e);
 
        }
        
        eventService.insertEvent(destFile);
        
        //FileUtils.deleteFile(destFile.getAbsolutePath());
        
        ModelAndView view = new ModelAndView();
        view.setViewName("redirect:eventList");
        return view;
    }


}