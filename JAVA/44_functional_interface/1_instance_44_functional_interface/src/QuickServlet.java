import java.io.IOException;
import java.io.* ;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.function.Consumer;

// sink in lambda target.
public class QuickServlet extends HttpServlet {
    private static String test(HttpServletResponse response, String s)  {
        try {
            response.getWriter().write(s);
        } catch (Exception e) {}
        return s;
    }

    @FunctionalInterface // Not required, but expresses intent that this is designed
    // as a lambda target
    public interface MyInterface {
        String someMethod(HttpServletResponse response, String s);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        final MyInterface foo = QuickServlet::test;
        final String result = foo.someMethod(response,s);
    }
}