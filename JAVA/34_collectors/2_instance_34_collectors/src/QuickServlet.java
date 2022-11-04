import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.* ;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
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
                        Collectors.groupingBy(
                                null,null
                        )
                );
        response.getWriter().write(String.valueOf(result.keySet().toArray()[0]));
    }
}
