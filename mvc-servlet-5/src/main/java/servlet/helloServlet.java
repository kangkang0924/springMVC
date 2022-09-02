package servlet; /**
 * @author 韩德康~
 * @version 1.0
 */

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "helloServlet", value = "/helloServlet")
public class helloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //1.去请求参数
        String username = request.getParameter("username");
        //2.根据值，调用数据库处理方法，得到结果

        //3.跳转 //重定向
        request.getRequestDispatcher("/result.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
