package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.BookInfo;
import pojo.BookType;
import pojo.UserForm;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/10/19/10:40
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @RequestMapping("/userUpdate")
    public String updateBook(Model model) {
        UserForm userForm = new UserForm();
        userForm.setName("韩德康");
        userForm.setUsername("康康");
        userForm.setAge(20);
        userForm.setPhone("179999999");
        userForm.setGender("男");
        List<String> objects = new ArrayList<>();
        objects.add("学Java");
        objects.add("打豆豆");
        userForm.setHobby(objects);
        //设置图书类型数据列表
        userForm.setEducation("本科");
        model.addAttribute("userForm", userForm);

        return "userUpdate";
    }


    @PostMapping("/UserRegister")
    public String addBook(@Valid UserForm userForm, BindingResult result, Model model) {
        System.out.println(result.getErrorCount());
        model.addAttribute("userForm", userForm);
        if (result.getErrorCount() > 0) {
            return "userRegister";
        }

        //设置图书类型数据列表
        return "RegisterResult";
    }

    @RequestMapping("/Register")
    public String register(Model model) {
        UserForm userForm = new UserForm();
        userForm.setName("韩德康");
        userForm.setUsername("康康");
        userForm.setAge(20);
        userForm.setPhone("179999999");
        userForm.setGender("男");
        //设置图书类型数据列表
        userForm.setEducation("本科");
        model.addAttribute("userForm", userForm);

        return "userRegister";
    }

}
