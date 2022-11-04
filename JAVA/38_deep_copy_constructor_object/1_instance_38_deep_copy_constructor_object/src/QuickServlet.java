import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    static class Detected {
        public String s;

        public Detected(String s) {
            this.s = s;
        }

        public Detected(Detected that) {
            this(that.s);
        }
    }

    static class Include_detected {
        public Detected detected;

        public Include_detected( Detected detected) {
            this.detected = detected;
        }

        public Include_detected(Include_detected that) {
            this(new Detected(that.detected));
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String s = request.getParameter("t1");
        //pattern
        Detected detected = new Detected(s);
        Include_detected include_detected = new Include_detected(detected);
        Include_detected deep_copy_include_detected = new Include_detected(include_detected);
        //sink
        response.getWriter().write(deep_copy_include_detected.detected.s);
    }
}