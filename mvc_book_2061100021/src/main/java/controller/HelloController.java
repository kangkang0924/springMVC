package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import pojo.BookInfo;
import pojo.BookType;
import pojo.UserForm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/09/07/10:29
 */
@Controller
@RequestMapping("/hello")
@SessionAttributes({"msg", "bookInfos", "bookTypeList"})
public class HelloController {
    @GetMapping("/login")
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
    ModelAndView varifyLogin(UserForm userForm, Model model, HttpSession session) {

        ModelAndView mView = new ModelAndView();
        if ("1".equals(userForm.getUsername()) && "1".equals(userForm.getPassword())) {
            System.out.println("###");
            model.addAttribute("msg", userForm.getUsername());

            List<BookInfo> bookInfos = new ArrayList<>();
            BookInfo bookInfo = new BookInfo();
            bookInfo.setType(2);
            bookInfo.setName("大学英语");
            bookInfo.setISBN("1234");
            bookInfo.setWriter("康康");
            bookInfos.add(bookInfo);
            model.addAttribute("bookInfos", bookInfos);
            //设置图书类型数据列表
            List<BookType> bookTypeList = new ArrayList<>();
            bookTypeList.add(new BookType(1, "社科类"));
            bookTypeList.add(new BookType(2, "文史类"));
            bookTypeList.add(new BookType(3, "工具类"));

            mView.addObject("msg", "欢迎登录" + userForm.getUsername());

            mView.setViewName("bookInfoList");
            return mView;

        } else {
            mView.addObject("msg", "用户名或者密码错误");
            mView.setViewName("login");
            return mView;
        }
    }



    @RequestMapping("register")
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("msg", "这是@Controller实现注册处理");
        modelAndView.setViewName("register");
        return modelAndView;
    }
}
