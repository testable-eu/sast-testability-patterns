import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class QuickServlet extends HttpServlet {
    String s ;
    public QuickServlet (String s) {
        this.s = s ;
    }
    public void colorTheServlet(ColoredServlet cs){
        this.s = cs.color ;
    }

    class ColoredServlet extends QuickServlet { String color;
        public ColoredServlet(String s, String color) {
            super(s);
            this.color=color;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //source
        String s = request.getParameter("t1");
        ColoredServlet cs = new ColoredServlet("haha",s) ;
        QuickServlet qs = new QuickServlet("haha") ;
        qs.colorTheServlet(cs);
        response.getWriter().write(qs.s);
    }
}
