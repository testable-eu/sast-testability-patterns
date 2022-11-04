import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Help extends HttpServlet {
    public static String cat ="haha";
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        cat = request.getParameter("t1");
    }
}
