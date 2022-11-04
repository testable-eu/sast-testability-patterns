import java.io.IOException;
import java.util.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        List<String> list = new ArrayList<>();
        list.add(s) ;
        List<String> copyList ;
        copyList = List.copyOf(list) ;
        response.getWriter().write(copyList.get(0));
    }
}