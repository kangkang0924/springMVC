package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import pojo.BookInfo;
import pojo.UserForm;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/09/26/9:14
 */
@Controller
@SessionAttributes(value = {"hdk"})
public class BookController {
    @PostMapping("/addBookInfo")
    public String addBook(BookInfo bookInfo, Model model) {

        model.addAttribute("BookInfo", bookInfo);
        return "bookInfoResult";
    }

    @GetMapping("/varifyLogin")
    public ModelAndView varifyLogin(UserForm userForm) {

        ModelAndView mView = new ModelAndView();
        if ("2061100021".equals(userForm.getUsername()) && "123".equals(userForm.getPassword())) {
            mView.addObject("hdk", "欢迎登录");
            mView.setViewName("bookInfo");
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
}
