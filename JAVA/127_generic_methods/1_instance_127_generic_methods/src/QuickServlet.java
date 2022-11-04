import static p1.pub.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class QuickServlet extends HttpServlet {
    public static <String> String show (String s) throws IOException{
        return(s);
    }
        public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
            //source
            String s = request.getParameter("t1");
            response.getWriter().write(show(s));
    }
}
