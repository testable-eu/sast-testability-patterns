import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class QuickServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException{
        String s = request.getParameter("t1");
        HttpSession session = request.getSession();
        session.setAttribute("source",s) ;
        response.getWriter().write(session.getAttribute("source").toString()) ;
    }
}