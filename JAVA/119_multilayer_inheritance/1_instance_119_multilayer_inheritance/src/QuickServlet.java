import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class QuickServlet extends HttpServlet {
    static String s ;
    class GrandFather {
        String s = QuickServlet.s ;
    }
    class Father extends GrandFather{}
    class Son extends Father {}

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // source
        String s = request.getParameter("t1") ;
        QuickServlet.s = s ;
        Son son = new Son();
        response.getWriter().write(son.s);

    }
}
