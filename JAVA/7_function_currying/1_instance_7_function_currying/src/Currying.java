import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.function.Function;

public class Currying extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        Function<String, Function<String, String>> func = text -> text1 -> text + text1;
        String s1 = func.apply(s).apply(" Currying might be dangerous");
        //sink
        response.getWriter().write(s1);
    }
}
