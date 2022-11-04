import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    static String s = "";
    static QuickServlet favorite(){
        System.out.print("Mount ");
        return null;
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        QuickServlet.s = request.getParameter("t1");
        response.getWriter().write(favorite().s);
    }
}