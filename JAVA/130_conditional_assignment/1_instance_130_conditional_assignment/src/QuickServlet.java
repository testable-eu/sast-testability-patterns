import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class QuickServlet extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
            String s = request.getParameter("t1") ;
            String[] sa = {s};
            List<String> ls = sa == null ? Arrays.asList(sa) :
                    Collections.emptyList();
            response.getWriter().write(ls.get(0));
    }
}
