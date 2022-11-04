import java.io.IOException;
import java.util.stream.Stream;
import java.util.Arrays;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SkipStream extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        //pattern
        Stream<String> st = Stream.of("ace", s, "def", "geh").skip(1);
        // sink
        response.getWriter().write(st.findFirst().toString()) ;
        response.getWriter().flush() ;
        }
    }