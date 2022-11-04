import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class QuickServlet extends HttpServlet {
    String s ;
    public QuickServlet (String s) {
        this.s = s ;
    }

    public String getS() {
        return s;
    }

    class ColoredServlet extends QuickServlet {
        public ColoredServlet(String s) {
            super(s);
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //source
        String s = request.getParameter("t1");
        ColoredServlet cs = new ColoredServlet(s) ;
        String s1 = cs.getS();
        response.getWriter().write(s1);
    }
}
