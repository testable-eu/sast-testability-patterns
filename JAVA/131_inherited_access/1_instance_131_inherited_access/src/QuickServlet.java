import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class QuickServlet extends HttpServlet {
        String bar (String s) {
        p1.pub p = new p1.pub();
        return(p.foo(s));
        }
        public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
            //source
            String s = request.getParameter("t1") ;
            String sink = bar(s) ;
            response.getWriter().write(sink);
    }
}
