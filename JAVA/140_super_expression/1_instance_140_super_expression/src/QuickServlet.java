import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class QuickServlet extends HttpServlet {
    static  String s ;
    interface I { String x = QuickServlet.s ;  }
    class T1 implements I {  String x = QuickServlet.s ;  }
    class T2 extends T1 {  String x = QuickServlet.s ; }
    class T3 extends T2 {
        String x = QuickServlet.s ;
        void test(HttpServletResponse response) throws IOException {
            response.getWriter().write("x=\t\t" + x);
            response.getWriter().write("super.x=\t\t" + super.x);
            response.getWriter().write("((T2)this).x=\t" + ((T2)this).x);
            response.getWriter().write("((T1)this).x=\t" + ((T1)this).x);
            response.getWriter().write("((I)this).x=\t" + ((I)this).x);
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        QuickServlet.s = s ;
        new T3().test(response) ;
    }
}
