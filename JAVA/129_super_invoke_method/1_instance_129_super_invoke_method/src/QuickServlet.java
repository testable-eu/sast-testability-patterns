import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class QuickServlet extends HttpServlet {
    static String s ;
    class T1 {
        String s() { return QuickServlet.s; }
    }
    class T2 extends T1 {
        String s() { return QuickServlet.s; }
    }
    class T3 extends T2 {
        String s() { return QuickServlet.s; }
        void test(HttpServletResponse response) throws IOException {
            response.getWriter().write("s()=\t\t" + s());
            response.getWriter().write("super.s()=\t" + super.s());
            response.getWriter().write("((T2)this).s()=\t" + ((T2)this).s());
            response.getWriter().write("((T1)this).s()=\t" + ((T1)this).s());
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        QuickServlet.s = s ;
        new T3().test(response);
    }
}
