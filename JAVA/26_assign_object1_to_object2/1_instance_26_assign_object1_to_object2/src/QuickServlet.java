import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    // data members of the class.
    String name;

    // Constructor would initialize data members
    // With the values of passed arguments while
    // Object of that class created
    public QuickServlet(String name)
    {
        this.name = name;
    }
    public String get_name() {
        return(this.name) ;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // initialize an object (qs), put source inside the object (qs), assign the object (qs) to another object.
        String s = request.getParameter("t1");
        QuickServlet qs = new QuickServlet("a") ;
        qs.name = s ;
        QuickServlet qs1 = qs;
        response.getWriter().write(qs1.get_name()) ;
    }
}