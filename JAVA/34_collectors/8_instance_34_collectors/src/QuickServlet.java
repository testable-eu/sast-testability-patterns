import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.stream.Stream;
import java.util.stream.Collectors;


public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        Stream <String> st = Stream.of(s) ;
        List<String> result = st.collect(Collectors.toList());
        //sink
        response.getWriter().write(result.get(0));
    }
}
