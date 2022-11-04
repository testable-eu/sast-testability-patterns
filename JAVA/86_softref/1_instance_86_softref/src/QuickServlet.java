import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.lang.ref.SoftReference;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        // Create WeakReference object using innerObject reference.
        SoftReference<String> softRef = new SoftReference<String>(s);
        s = null ;
        response.getWriter().write(softRef.get());
    }
}
