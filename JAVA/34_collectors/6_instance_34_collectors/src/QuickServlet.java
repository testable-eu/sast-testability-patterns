import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.* ;
import java.util.stream.Stream;
import java.util.stream.Collectors;


public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        Stream<String>
                st = Stream.of(s,"");
        Map<Boolean, List<String> >
                map = st.collect(
                Collectors.partitioningBy(str -> str.length() > 3));
        response.getWriter().write(String.valueOf(map.get(true)));

    }
}
