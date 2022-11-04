import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class QuickServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //source
        String s = request.getParameter("t1");
        Cookie cref = new Cookie("cookie",s) ;
        cref.setMaxAge(365*24*60*60) ;
        response.addCookie(cref) ;
        RequestDispatcher rq = request.getRequestDispatcher("QuickServlet2") ;
        rq.forward(request,response);
    }
}