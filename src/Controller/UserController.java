package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

import po.User;
import service.UserDao;

@Controller("/user")
public class UserController {

	@Autowired
	private UserDao u;

	@RequestMapping(value = "/loginPage")
	public String loginPage(Model model) {
		return "userPage/loginPage";
	}

	@RequestMapping("/login")
	public @ResponseBody String login(String username, String password,Model model) {
		
		User user = new User(username, password);
		String msg = u.login(user);
		if ("SUCCESS".equals(msg)) {
			// 将查询到的user信息保存并传给主页面
			model.addAttribute("user", user);
			// 设置登录成功路径
			
			return msg;
		} else{
			return msg;
		}
		
	}

	@RequestMapping("/loginSuccess")
	public  String loginSuccess(){
		
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

}
