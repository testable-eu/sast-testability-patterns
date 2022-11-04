import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException{
        String s = request.getParameter("t1");
        char[] getMe= new char[s.length()] ;
        s.getChars(0,s.length(),getMe,0) ;
        response.getWriter().write(getMe);
    }
}