import java.io.IOException;
import java.util.Arrays;
import java.util.stream.Stream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SkipStream extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        Stream<String> st = Stream.of(s, "abc", "def", "geh");
        //sink
        response.getWriter().write(st.findFirst().toString());
        response.getWriter().flush();
    }
}