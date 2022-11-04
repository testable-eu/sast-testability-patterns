import java.io.IOException;
import java.util.List;
import java.util.* ;
import java.util.stream.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        //tarpit
        ArrayList<String> people = new ArrayList<>();
        List<String> list = people.stream().collect(Collectors.collectingAndThen(Collectors.toList(), l -> {
            l.add(s);
            return l;
        }));
        //sink
        response.getWriter().write(list.get(0));
    }
}
