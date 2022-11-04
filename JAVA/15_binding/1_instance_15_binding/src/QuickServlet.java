import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    static String s;
    class S { String s = QuickServlet.s; }
    class T extends S { String s = QuickServlet.s; }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        QuickServlet.s = request.getParameter("t1");
        T t = new T();
        response.getWriter().write(t.s);
        S s = new S();
        response.getWriter().write(s.s);
        s.s = "hello" ;
        s = t;
        response.getWriter().write(s.s);
    }
}