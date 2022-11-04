import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet implements AutoCloseable {
    HttpServletResponse response;
    String s;
    public QuickServlet ( HttpServletResponse response, String s) {
        this.response = response;
        this.s = s;
    }
    @Override
    public void close() throws IOException {
        response.getWriter().write(this.s);
    }

    void show()  {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        try (QuickServlet demo = new QuickServlet(response,s)) {
            demo.show();
        }
    }
}