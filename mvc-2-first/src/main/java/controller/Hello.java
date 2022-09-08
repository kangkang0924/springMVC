package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/09/07/10:29
 */
@Controller
@RequestMapping("hello")
public class Hello {
    @RequestMapping("login")
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hdk", "这是@Controller实现登陆处理");
        modelAndView.setViewName("login");
        return modelAndView;
    }


    @RequestMapping("register")
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hdk", "这是@Controller实现注册处理");
        modelAndView.setViewName("register");
        return modelAndView;
    }
}
