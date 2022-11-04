import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class QuickServlet extends HttpServlet {
    static String s ;
    interface Colorable {
        String RED = QuickServlet.s;
    }
    interface Paintable extends Colorable {
    }
    static class Point { }
    static class ColoredPoint extends Point implements Colorable {}
    static class PaintedPoint extends ColoredPoint implements Paintable {
        String color = RED;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // source
        String s = request.getParameter("t1") ;
        QuickServlet.s = s ;
        PaintedPoint pp = new PaintedPoint();
        response.getWriter().write(pp.color);
    }
}
