package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.UserFrom;

import javax.servlet.http.Cookie;
import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;


@Controller
public class loginController {

	@RequestMapping("/login")
	public String login( Model model) {

		return "login";
	}
	
}
