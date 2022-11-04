import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet  {
    interface Colorable {
        void setColor(String color);
    }

    class ColoredFlyer implements Colorable {
        String color;
        public ColoredFlyer(String color) {
            this.color=color;
        }
        @Override
        public void setColor(String color) {
            this.color = color;
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        ColoredFlyer coloredFlyer = new ColoredFlyer(s);
        Colorable c = coloredFlyer;
        response.getWriter().write(c.toString());
    }
}