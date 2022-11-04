import static p1.pub.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class QuickServlet extends HttpServlet {
    static String print3(String a, String b, String c) {
        return(a + b + c);
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
            //source
            String s = request.getParameter("t1");
            String s1="" ;
            response.getWriter().write(print3(s1,s1,s1=s)) ;

    }
}
