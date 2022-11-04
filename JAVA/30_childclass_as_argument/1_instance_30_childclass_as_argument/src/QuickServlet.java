import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class QuickServlet extends HttpServlet {
    String s;
    public QuickServlet(String s) {
        this.s = s;
    }
    public void colorTheServlet(ColoredPaint cp){
        this.s = cp.color;
    }
    final class ColoredPaint extends QuickServlet { String color;

        public ColoredPaint(String x, String color) {
            super(x);
            this.color=color;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
            //source
            String s = request.getParameter("t1");
            ColoredPaint cp = new ColoredPaint("haha",s) ;
            QuickServlet qs = new QuickServlet("haha") ;
            qs.colorTheServlet(cp);
            //sink
            response.getWriter().write(qs.s);
    }
}
