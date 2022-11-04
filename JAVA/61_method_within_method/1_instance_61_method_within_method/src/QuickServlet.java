import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class QuickServlet extends HttpServlet {
    public void call (String s, HttpServletResponse response) throws IOException{
        response.getWriter().write(s) ;
        response.getWriter().flush() ;
    }
    public void getMe(String s, HttpServletResponse response) throws IOException{
        call(s,response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String s = request.getParameter("t1");
        getMe(s,response) ;
    }
}