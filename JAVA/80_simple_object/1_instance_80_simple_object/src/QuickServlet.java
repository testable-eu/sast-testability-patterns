import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    // data members of the class.
    String name;
    int id;
    QuickServlet(String name, int id)
    {
        this.name = name;
        this.id = id;
    }
    public String get_name() {
        return(this.name) ;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String s = request.getParameter("t1");
        //pattern
        // Lambda Expression
        QuickServlet qs = new QuickServlet(s,1) ;
        response.getWriter().write(qs.get_name()) ;
        response.getWriter().flush() ;
    }
}