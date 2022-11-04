import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// a class implementing an interface that has the sink in the method display.
public class QuickServlet extends HttpServlet {
    // Creating Interface One
    // Creating Interface One
    interface gfg{

        public default void display(HttpServletResponse response, String s)throws IOException
        {
            response.getWriter().write(s) ;
        }
    }

    public class InterfaceExample implements gfg {
        public void display(HttpServletResponse response, String s)throws IOException {
            gfg.super.display(response, s);
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String s = request.getParameter("t1");
        InterfaceExample foo = new InterfaceExample() ;
        foo.display(response, s) ;
    }
}