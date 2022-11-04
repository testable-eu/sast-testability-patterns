import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    static String test(final String arg) {
        class LocalClass {
            class AnotherLocal {
                class AnotherSub {
                    String m() {
                        return arg ;
                    }
                }
            }
        }
        return new LocalClass().new AnotherLocal().new AnotherSub().m();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        String sink = test(s) ;
        response.getWriter().write(sink);
    }
}
