import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class QuickServlet extends HttpServlet {
    static String s;
    @FunctionalInterface
    interface IdentityInterface{
        String identify(String s) ;
    }
    static class MethodReference{
    public static String id(String s){
            return s ;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        QuickServlet.s = request.getParameter("t1");
        IdentityInterface identity = MethodReference::id;
        response.getWriter().write(identity.identify(s));
    }
}
