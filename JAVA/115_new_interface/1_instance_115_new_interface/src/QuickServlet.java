import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    // create a local interface with one abstract
    // method run()
    interface myInterface {
        void run();
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    {
        String s = request.getParameter("t1");
        // implement run method inside
        myInterface r = new myInterface() {
            public void run()
            {
                try {
                    response.getWriter().write(s);
                }
                catch (IOException e) {
                    e.printStackTrace() ;
                }
            };
        };
        r.run();
    }
}