import java.io.IOException;
import java.util.* ;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        List<String> stringList = Arrays.asList("aa", s, "aa", "edpresso");
        Stream<String> stringStream = stringList.stream();
        Optional<String> maxElement = stringStream.collect(Collectors.maxBy(Comparator.naturalOrder()));
        //sink
        response.getWriter().write(maxElement.orElse("null"));
    }
}
