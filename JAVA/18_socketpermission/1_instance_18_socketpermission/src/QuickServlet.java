import java.io.IOException;
import java.net.SocketPermission;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        SocketPermission sp = new SocketPermission(s, "connect,accept");
        response.getWriter().write(sp.getName());
    }
}