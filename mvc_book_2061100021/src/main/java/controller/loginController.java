package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Locale;

@Controller
public class loginController {

	@RequestMapping("/login")
	public String login(Model model) {
		return "login";
	}
	@RequestMapping("/i18n")
	public String i18n(Locale locale) {
		return "login";
	}

}
