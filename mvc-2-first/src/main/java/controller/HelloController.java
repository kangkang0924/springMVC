package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.UserForm;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/09/07/10:29
 */
@Controller
@RequestMapping("/hello")
public class HelloController {
    @GetMapping ("/login")
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hdk", "这是@Controller实现登陆处理");
        modelAndView.setViewName("login");
        return modelAndView;
    }
//    @GetMapping("/varifyLogin")
//    public ModelAndView varifyLogin(String username, String password) {
//        ModelAndView mView = new ModelAndView();
//        if ("2061100021".equals(username) && "123".equals(password)) {
//            mView.addObject("hdk", "欢迎登录");
//            mView.setViewName("main");
//            return mView;
//        } else {
//            mView.addObject("hdk", "用户名或者密码错误");
//            mView.setViewName("login");
//            return mView;
//        }
//    }
    @GetMapping("/varifyLogin")
    public ModelAndView varifyLogin(UserForm userForm) {

        ModelAndView mView = new ModelAndView();
        if ("2061100021".equals(userForm.getUsername()) && "123".equals(userForm.getPassword())) {
            mView.addObject("hdk", "欢迎登录");
            mView.setViewName("main");
            return mView;
        } else {
            mView.addObject("hdk", "用户名或者密码错误");
            mView.setViewName("login");
            return mView;
        }
    }
    @GetMapping("/varifyRegister")
    public ModelAndView varifyRegister() {
        ModelAndView mView = new ModelAndView();
        mView.addObject("hdk", "欢迎注册");
        mView.setViewName("login");
        return mView;
    }
    @GetMapping("/login2/{uname}")
    public ModelAndView login2(@PathVariable("uname") String name) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("msg", name);
        modelAndView.setViewName("index");
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
