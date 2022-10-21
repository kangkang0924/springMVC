package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import pojo.BookInfo;
import pojo.UserForm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/09/07/10:29
 */
@Controller
@RequestMapping("/hello")
@SessionAttributes("msg")
public class HelloController {
    @GetMapping ("/login")
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("msg", "这是@Controller实现登陆处理");
        modelAndView.setViewName("login");
        return modelAndView;
    }
//    @GetMapping("/varifyLogin")
//    public ModelAndView varifyLogin(String username, String password) {
//        ModelAndView mView = new ModelAndView();
//        if ("2061100021".equals(username) && "123".equals(password)) {
//            mView.addObject("msg", "欢迎登录");
//            mView.setViewName("main");
//            return mView;
//        } else {
//            mView.addObject("msg", "用户名或者密码错误");
//            mView.setViewName("login");
//            return mView;
//        }
//    }

    @PostMapping("/addBookInfo")
    public String addBook(BookInfo bookInfo, Model model, HttpSession httpSession, HttpServletRequest request) {
        httpSession.getAttribute("msg");

        System.out.println(httpSession.getAttribute("msg"));
        model.addAttribute("BookInfo", bookInfo);
        return "bookInfoResult";
    }
//    public ModelAndView addBookInfo(BookInfo bookInfo) {
//        ModelAndView mView = new ModelAndView();
//        mView.addObject("id", bookInfo.getId());
//        mView.addObject("name", bookInfo.getName());
//        mView.addObject("type", bookInfo.getType());
//        mView.addObject("price", bookInfo.getPrice());
//        mView.addObject("author", bookInfo.getAuthor());
//        mView.addObject("ISBN", bookInfo.getISBN());
//        mView.addObject("newQuantity", bookInfo.getNewQuantity());
//        mView.addObject("inventory", bookInfo.getInventory());
//        mView.addObject("press", bookInfo.getPress());
//        mView.addObject("bookshelf", bookInfo.getBookshelf());
//
//        mView.setViewName("userInfoResult");
//        return mView;
//    }





    @GetMapping("/varifyLogin")
    public ModelAndView varifyLogin(UserForm userForm) {

        ModelAndView mView = new ModelAndView();
        if ("2061100021".equals(userForm.getUsername()) && "123".equals(userForm.getPassword())) {
            mView.addObject("msg", "欢迎登录" + userForm.getUsername());
            mView.setViewName("redirect:/Book/updateBook");
            return mView;
        } else {
            mView.addObject("msg", "用户名或者密码错误");
            mView.setViewName("login");
            return mView;
        }
    }
    @GetMapping("/varifyRegister")
    public ModelAndView varifyRegister() {
        ModelAndView mView = new ModelAndView();
        mView.addObject("msg", "欢迎注册");
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
        modelAndView.addObject("msg", "这是@Controller实现注册处理");
        modelAndView.setViewName("register");
        return modelAndView;
    }
}
