import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public class Point {
        public String s;

        Point(String s) {
            this.s = s;
        }
    }

    public void warp(Point p, Point p1) {
        p1.s = p.s;
    }
    
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source

        String s = request.getParameter("t1") ;
        Point p= new Point(s) ;
        Point p1 = new Point("");
        warp(p,p1) ;
        response.getWriter().write(p1.s);

    }
}
