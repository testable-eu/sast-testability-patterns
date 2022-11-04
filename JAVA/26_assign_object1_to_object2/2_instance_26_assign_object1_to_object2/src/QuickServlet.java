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
    QuickServlet(String name)
    {
        this.name = name;
    }
    public String get_name() {
        return(this.name) ;
    }
    public void assign_me(QuickServlet qs, String s ) {
        qs.name = s ;
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // initialize an object, then assign the source to a data member of the object using a method that returns void (assign_me)
        String s = request.getParameter("t1");
        //pattern
        QuickServlet qs = new QuickServlet("a") ;
        assign_me(qs,s);
        //sink
        response.getWriter().write(qs.get_name()) ;
        response.getWriter().flush() ;
    }
}