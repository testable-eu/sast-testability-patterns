import java.io.IOException;
import javax.naming.Context;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        //test1
        String s1 ="" ;
        String s ="" ;
        s = s1 = request.getParameter("t1") ;
        response.getWriter().write(s);
        //test2
        s = s1 += " lol" ;
        response.getWriter().write(s);
    }
}
