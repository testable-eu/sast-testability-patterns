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
        List<List> list = new ArrayList<>();
        list.add(Collections.singletonList(list.add(Collections.singletonList(s))));
        response.getWriter().write(list.get(0).get(0).toString());

    }
}