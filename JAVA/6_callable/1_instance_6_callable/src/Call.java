import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Call extends HttpServlet {
    public class RunnableImpl implements Runnable {
        String s;
        HttpServletResponse response;

        RunnableImpl(HttpServletResponse response, String s) {
            this.s = s;
            this.response = response;
        }

        public void run() {
            try {
                this.response.getWriter().write(s);
            } catch (Exception e) {
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        Thread t1 = new Thread(new Call().new RunnableImpl(response, s));
        t1.start();
    }
}