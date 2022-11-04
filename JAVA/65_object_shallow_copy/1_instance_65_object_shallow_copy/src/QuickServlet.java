import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.util.stream.* ;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    static class Detected {
        private String s;

        public Detected(String s) {
            this.s = s;
        }

        public Detected(Detected that) {
            this(that.s);
        }
    }

    static class Include_detected {
        private Detected detected;

        public Include_detected(Detected detected) {
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
        Detected detect_me = new Detected(s);
        Include_detected include_detected = new Include_detected(detect_me);
        Include_detected shallow_copy_include_detected = new Include_detected(include_detected.detected);
        response.getWriter().write(shallow_copy_include_detected.detected.s);
    }
}