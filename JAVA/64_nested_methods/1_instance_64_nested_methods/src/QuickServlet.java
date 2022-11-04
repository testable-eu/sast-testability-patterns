import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class QuickServlet extends HttpServlet {
    String nest_me( String s) {
        return (this.nested(s));
    }
    String nested (String s) {
        return(s) ;
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException {
        String s = request.getParameter("t1");
        String sout = nest_me(s) ;
        response.getWriter().write(sout);
    }
}