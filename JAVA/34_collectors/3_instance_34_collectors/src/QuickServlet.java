import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.* ;
import java.util.stream.Collectors;


public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        List<String> items =
                Arrays.asList("apple", "apple", "banana",
                        "apple", "banana",s);

        Map<String, Long> result =
                items.stream().collect(
                        Collectors.groupingByConcurrent(
                                null, null
                        )
                );

        response.getWriter().write(String.valueOf(result.keySet().toArray()[0]));
    }
}
