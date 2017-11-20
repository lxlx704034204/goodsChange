package Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.portlet.ModelAndView;

import po.Item;
import po.User;
import service.ItemDao;
import service.UserDao;

@Controller
@SessionAttributes("user")
public class UserController {

	@Autowired
	private UserDao u;
	@Autowired
	private ItemDao itemDao;

	@RequestMapping(value = "/loginPage")
	public String loginPage(Model model) {
		System.out.println("123");
		return "userPage/loginPage";
	}

	@RequestMapping("/login")
	public @ResponseBody String login(String username, String password,
			Model model) {

		User user = new User(username, password);
		String msg = u.login(user);
		if ("SUCCESS".equals(msg)) {
			// 将查询到的user信息保存并传给主页面
			Map<String, String> m = new HashMap<String, String>();
			m.put("username", username);
			user = u.getUser(m);
			model.addAttribute("user", user);
			// 设置登录成功路径

			return msg;
		} else {
			return msg;
		}
	}

	@RequestMapping("/mainPage")
	public String loginSuccess(Model model) {
		Map<String, String> p = new HashMap<String, String>();
		List<Item> itemlist = itemDao.find(p);
		model.addAttribute("newlist", itemlist);
		p.put("classification", "手机");
		itemlist = itemDao.find(p);
		model.addAttribute("phonelist", itemlist);
		p.put("classification", "电脑");
		itemlist = itemDao.find(p);
		model.addAttribute("computerlist", itemlist);
		p.put("classification", "书籍");
		model.addAttribute("booklist", itemlist);
		p.put("classification", "衣物");
		model.addAttribute("clothinglist", itemlist);
		p.put("classification", "运动");
		model.addAttribute("sportlist", itemlist);
		p.put("classification", "游戏");
		model.addAttribute("gamelist", itemlist);
		p.put("classification", "原创");
		model.addAttribute("originalitylist", itemlist);
		return "main";
	}

	@RequestMapping(value = "/registerPage")
	public String registerPage(Model model) {
		return "userPage/registerPage";
	}

	@RequestMapping("/register")
	public @ResponseBody String resgiter(User user) {
		String msg = u.register(user);
		return msg;

	}

	@RequestMapping("/changeInfo")
	public ModelAndView changeInfo(ModelAndView mv) {
		Map<String, Object> m = new HashMap<>();
		Map<String, Object> p = mv.getModel();
		if (p.get("nickname") != null)
			m.put("nickname", p.get("nickname"));
		if (p.get("password") != null)
			m.put("password", p.get("password"));
		if (p.get("mail") != null)
			m.put("mail", p.get("mail"));
		if (p.get("name") != null)
			m.put("name", p.get("name"));
		u.changeInfo(p);
		return mv;
	}

	public void setU(UserDao u) {
		this.u = u;
	}

	@RequestMapping("/userQuit")
	public String userQuit(Model model) {
		model.addAttribute("user", new User());
		return "userPage/loginPage";
	}

	@RequestMapping("userMainPage")
	public String userMainPage() {
		return "userPage/userMainPage";
	}

}
