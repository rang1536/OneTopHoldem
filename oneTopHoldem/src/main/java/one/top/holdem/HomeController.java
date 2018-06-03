package one.top.holdem;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import one.top.holdem.admin.service.AdminService;
import one.top.holdem.admin.vo.Account;


@SessionAttributes({"grade","accountId","id"})
@Controller
public class HomeController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "index";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "index";
	}
	
	//다운로드메뉴
	@RequestMapping(value = "/downMenu", method = RequestMethod.GET)
	public String downMenu(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/down";
	}
	
	//게임방법 메뉴
	@RequestMapping(value = "/guideMenu", method = RequestMethod.GET)
	public String guideMenu(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/guide";
	}
	
	//토너먼트 메뉴 - 일정,결과
	@RequestMapping(value = "/tournamentMenu", method = RequestMethod.GET)
	public String tournamentMenu(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/tournament_info";
	}
	
	//토너먼트 메뉴 - 일정상세보기
	@RequestMapping(value = "/tournamentInfoView", method = RequestMethod.GET)
	public String tournamentInfoView(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/tournament_info_view";
	}
	
	//토너먼트 메뉴 - 토너먼트란
	@RequestMapping(value = "/tournamentGame", method = RequestMethod.GET)
	public String tournamentGame(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/tournament_game";
	}
		
	//토너먼트 메뉴 - 참가방법
	@RequestMapping(value = "/tournamentEnter", method = RequestMethod.GET)
	public String tournamentEnter(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		
		return "/users/tournament_enter";
	}
		
	//토너먼트 메뉴 - 게임방법
	@RequestMapping(value = "/tournamentGuide", method = RequestMethod.GET)
	public String tournamentGuide(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/tournament_guide";
	}
	
	//토너먼트 메뉴 - 결과
	@RequestMapping(value = "/tournamentResult", method = RequestMethod.GET)
	public String tournamentResult(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/tournament_result";
	}
	
	//토너먼트 메뉴 - 결과상세
	@RequestMapping(value = "/tournamentResultView", method = RequestMethod.GET)
	public String tournamentResultView(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/tournament_result_view";
	}
	
	//고객센터 - faq
	@RequestMapping(value = "/faqMenu", method = RequestMethod.GET)
	public String faqMenu(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/faq";
	}
	
	//고객센터 - 공지사항 목록
	@RequestMapping(value = "/noticeList", method = RequestMethod.GET)
	public String noticeList(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/notice_list";
	}
	
	//고객센터 - 공지사항 상세보기
	@RequestMapping(value = "/noticeView", method = RequestMethod.GET)
	public String noticeView(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/notice_view";
	}
	
	//고객센터 - 1:1문의
	@RequestMapping(value = "/qnaWrite", method = RequestMethod.GET)
	public String qnaWrite(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/qna_write";
	}
	
	//머니샵
	@RequestMapping(value = "/moneyShop", method = RequestMethod.GET)
	public String moneyShop(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/shop";
	}

	//회원가입 - 1단계
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/join";
	}
	
	//회원가입 - 2단계
	@RequestMapping(value = "/joinRegister", method = RequestMethod.POST)
	public String joinRegister(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/join_register";
	}
		
	//회원가입 - 3단계
	@RequestMapping(value = "/joinConfirm", method = RequestMethod.POST)
	public String joinConfirm(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/join_confirm";
	}
	
	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/login";
	}
	
	//메인화면 홀덤용어
	@RequestMapping(value = "/glossary", method = RequestMethod.GET)
	public String glossary(Model model) {
		/*List<Account> list = adminService.readAllUserServ(3);
		model.addAttribute("list", list);*/
		/*return "index";*/
		return "/users/glossary";
	}
	
	//==================================================================================
	//관리자
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String mainCtrl(Model model, 
			@RequestParam(value="path", defaultValue="none")String path) {
		model.addAttribute("path", path); // 세팅은 하는데 중간 지점이 없이 시작페이지가 로그인이므로 사용할 일은 없다. 리턴 url임.
		return "/admin/main";
	}
	
	@RequestMapping(value = "/adLogin", method = RequestMethod.GET)
	public String loginCtrl(Model model, 
			@RequestParam(value="path", defaultValue="none")String path) {
		model.addAttribute("path", path); // 세팅은 하는데 중간 지점이 없이 시작페이지가 로그인이므로 사용할 일은 없다. 리턴 url임.
		return "/admin/login";
	}
	//로그인 
	@RequestMapping(value="/adLogin", method = RequestMethod.POST)
	public String loginCtrl(Model model, 
			@RequestParam(value="id")String loginId,
			@RequestParam(value="pw")String loginPw){
		System.out.println("###################################");
		System.out.println("id : "+loginId);
		System.out.println("id : "+loginPw);
		System.out.println("###################################");
		Map<String, Object> map = adminService.loginServ(loginId, loginPw);
		if(map.get("loginCheck").equals("success")){
			Account account = (Account)map.get("account");
			model.addAttribute("id", account.getLoginId());
			model.addAttribute("grade", account.getGrade());
			model.addAttribute("accountId", account.getAccountId());
			
		}else if(map.get("loginCheck").equals("failPw") || map.get("loginCheck").equals("failId")){
			model.addAttribute("loginCheck", map.get("loginCheck"));
			return "/admin/login";
		}
		model.addAttribute("loginCheck", map.get("loginCheck"));
		
		return "/admin/main";
	}
}
