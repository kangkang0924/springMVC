package controller;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.DataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import pojo.BookInfo;
import pojo.BookType;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/09/26/9:14
 */
@Controller
@RequestMapping("/Book")
@SessionAttributes({"msg", "bookInfos", "bookTypeList"})
public class BookController {
    @PostMapping("/addBook")
    public String addBook(@Valid BookInfo bookInfo, BindingResult result, Model model, HttpSession session) {
        //从session中取数据

        System.out.println(result.getErrorCount());
        model.addAttribute("BookInfo", bookInfo);
        if (result.getErrorCount() > 0) {
            return "bookInfo";
        }
//        ArrayList<BookInfo> bookInfos = new ArrayList<>();
//        bookInfos.add(bookInfo);
//        session.setAttribute("bookInfos", bookInfos);
        ArrayList<BookInfo> bookInfos = (ArrayList<BookInfo>) session.getAttribute("bookInfos");
        bookInfos.add(bookInfo);

        return "bookInfoList";
    }

    @RequestMapping("/addBookB")
    public String addBook(Model model) {
        BookInfo bookInfo = new BookInfo();
        bookInfo.setISBN("1234");
        bookInfo.setWriter("小唐");
        List<String> objects = new ArrayList<>();
        objects.add("专科");
        objects.add("本科");
        objects.add("硕士");
        bookInfo.setGroup(objects);
        bookInfo.setHas("有");
        bookInfo.setPub("3");
        //设置图书类型数据列表
        ArrayList<BookType> bookTypeList = new ArrayList<>();
        bookTypeList.add(new BookType(1, "社科类"));
        bookTypeList.add(new BookType(2, "文史类"));
        bookTypeList.add(new BookType(3, "工具类"));
        model.addAttribute("bookTypeList", bookTypeList);
        bookInfo.setType(2);
        model.addAttribute("bookInfo", bookInfo);
        return "bookInfo";
    }

    @PostMapping("/bookInfoListB")
    public String bookInfoListB(@Valid BookInfo bookInfo, BindingResult result, Model model) {
        return "bookInfoList";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Model model, String ISBN, HttpSession session) {
        ArrayList<BookInfo> bookInfos = (ArrayList<BookInfo>) session.getAttribute("bookInfos");

        ArrayList<BookType> bookTypeList = new ArrayList<>();
        bookTypeList.add(new BookType(1, "社科类"));
        bookTypeList.add(new BookType(2, "文史类"));
        bookTypeList.add(new BookType(3, "工具类"));
        model.addAttribute("bookTypeList", bookTypeList);

        for (int i = 0; i < bookInfos.size(); i++) {
            BookInfo bookInfo = bookInfos.get(i);
            if (ISBN.equals(bookInfo.getISBN())) {
                bookInfos.remove(i);
                model.addAttribute("bookInfo", bookInfo);
                break;
            }
        }
        return "bookInfo";
    }

    @RequestMapping("/showBook")
    public String showBook(Model model, String ISBN, HttpSession session) {
        ArrayList<BookInfo> bookInfos = (ArrayList<BookInfo>) session.getAttribute("bookInfos");

        ArrayList<BookType> bookTypeList = new ArrayList<>();
        bookTypeList.add(new BookType(1, "社科类"));
        bookTypeList.add(new BookType(2, "文史类"));
        bookTypeList.add(new BookType(3, "工具类"));
        model.addAttribute("bookTypeList", bookTypeList);

        for (int i = 0; i < bookInfos.size(); i++) {
            BookInfo bookInfo = bookInfos.get(i);
            if (ISBN.equals(bookInfo.getISBN())) {
                model.addAttribute("bookInfo", bookInfo);
                break;
            }
        }
        return "showBookInfo";
    }
    @RequestMapping("/deleteBook")
    public String deleteBook(Model model, String ISBN, HttpSession session) {
        ArrayList<BookInfo> bookInfos = (ArrayList<BookInfo>) session.getAttribute("bookInfos");
        for (int i = 0; i < bookInfos.size(); i++) {
            BookInfo bookInfo = bookInfos.get(i);
            if (ISBN.equals(bookInfo.getISBN())) {
                bookInfos.remove(i);
                break;
            }
        }
        return "bookInfoList";
    }

    @GetMapping("/varifyRegister")
    public ModelAndView varifyRegister() {
        ModelAndView mView = new ModelAndView();
        mView.addObject("msg", "欢迎注册");
        mView.setViewName("login");
        return mView;
    }

    @InitBinder
    public void initBinder(DataBinder binder) {
        System.out.println("@@@@@@initBinder");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
}
