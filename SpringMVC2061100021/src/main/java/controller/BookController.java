package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import pojo.BookInfo;
import pojo.UserForm;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/09/26/9:14
 */
@Controller
@RequestMapping("/Book")
@SuppressWarnings("all")
public class BookController {
    @PostMapping("/addBookInfo")
    public String addBook(BookInfo bookInfo, Model model) {
        //从session中取数据

        double price = (bookInfo.getPrice() * 0.8);
        bookInfo.setPrice(price);
        model.addAttribute("BookInfo", bookInfo);
        return "forward:/jsp/bookInfoResult.jsp";
    }

//    @GetMapping("/varifyLogin")
//    public ModelAndView varifyLogin(UserForm userForm) {
//
//        ModelAndView mView = new ModelAndView();
//        if ("2061100021".equals(userForm.getUsername()) && "123".equals(userForm.getPassword())) {
//            mView.addObject("msg", "欢迎登录");
//            mView.setViewName("bookInfo");
//            return mView;
//        } else {
//            mView.addObject("msg", "用户名或者密码错误");
//            mView.setViewName("login");
//            return mView;
//        }
//    }

    @GetMapping("/varifyRegister")
    public ModelAndView varifyRegister() {
        ModelAndView mView = new ModelAndView();
        mView.addObject("msg", "欢迎注册");
        mView.setViewName("login");
        return mView;
    }
    @RequestMapping("/updateBook")
    public String updateBook(Model model) {

        BookInfo bookInfo = new BookInfo();
        bookInfo.setName("大学英语");
        bookInfo.setISBN("1234");
        bookInfo.setWriter("小唐");
        ArrayList<String> objects = new ArrayList<>();
        objects.add("专科");
        objects.add("本科");
        objects.add("硕士");
        bookInfo.setGroup(objects);
        bookInfo.setHsp("有");
        model.addAttribute("bookInfo", bookInfo);

        return "bookInfo";
    }
}
