package controller;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/08/31/11:08
 */
public class HelloControllerTest implements Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hdk", "hello 韩德康");
        modelAndView.setViewName("login");
        return modelAndView;
    }
}
