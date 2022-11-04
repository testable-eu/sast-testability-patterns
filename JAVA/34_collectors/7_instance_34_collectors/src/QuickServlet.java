import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.* ;
import java.util.stream.Stream;
import java.util.stream.Collectors;


public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        // Creating a string stream
        Stream<String> st = Stream.of(s , "");
        Collection<String> names = st
                .collect(Collectors
                        .toCollection(TreeSet::new));
        response.getWriter().write(names.stream().findFirst().toString());
    }
}
