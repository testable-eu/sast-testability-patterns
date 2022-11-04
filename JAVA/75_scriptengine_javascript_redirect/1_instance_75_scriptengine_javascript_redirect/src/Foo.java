import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Foo extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException{
        HttpSession session = request.getSession();
        response.getWriter().write(session.getAttribute("source").toString()) ;
    }
}