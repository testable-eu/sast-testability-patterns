import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.function.Consumer;
import java.util.function.BiFunction;
public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        String s1 = "" ;
        BiFunction<String, String, String> SIMPLE_CURRIED_STRING_CREATOR = (e1,e2) -> e1+e2;
        //sink
        response.getWriter().write(SIMPLE_CURRIED_STRING_CREATOR.apply(s,s1));
        }
    }
