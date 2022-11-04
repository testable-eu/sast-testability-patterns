import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.lang.ref.WeakReference;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        // Create WeakReference object using innerObject reference.
        WeakReference<String> weakRef = new WeakReference<String>(s);
        response.getWriter().write(weakRef.get());
    }
}
