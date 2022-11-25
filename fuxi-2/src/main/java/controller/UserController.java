package controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import pojo.UserFrom;

import java.util.HashMap;
import java.util.Map;


@Controller
public class UserController {
	@RequestMapping("/register")
	public String register(@Valid UserFrom userFrom,BindingResult bindingResult, Model model) {
		model.addAttribute("userFrom", userFrom);
		System.out.println(bindingResult.getErrorCount());
		Map<Object, String> objectStringHashMap = new HashMap<>();
		Cookie cookie = new Cookie("hdk", "test");
		cookie.setMaxAge(60);

		if (bindingResult.getErrorCount() > 0){
			return "register";
		}
		return "registerResult";
	}
	@RequestMapping("/registerBefore")
	public String registerBefore(UserFrom userFrom, Model model) {
		model.addAttribute("userFrom", userFrom);
		return "register";
	}
	@RequestMapping("/updateUser")
	public String updateUser(UserFrom userFrom, Model model) {
		userFrom.setUserName("111");
		model.addAttribute("userFrom", userFrom);
		return "register";
	}
	
}
