import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// Desc : class implements interface
public class QuickServlet extends HttpServlet {
    interface Colorable {
    }
    class ColoredServlet extends QuickServlet implements Colorable {
        String color;
        public void setColor(String color) { this.color = color; }
        public String getColor() { return color; }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //source
        String s = request.getParameter("t1");
        ColoredServlet cs = new ColoredServlet();
        cs.setColor(s);
        response.getWriter().write(cs.getColor());
    }
}
