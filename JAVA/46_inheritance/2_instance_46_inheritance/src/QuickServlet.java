import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    // Base class
    HttpServletResponse response ;
    String s;
    public QuickServlet(HttpServletResponse response, String s) {
        this.response = response;
        this.s = s;
        try {
            response.getWriter().write(this.s) ;}
        catch(Exception e) {
            e.printStackTrace();
        }
    }
    // Inherited class
    class Child extends QuickServlet{
        Child(HttpServletResponse response, String s) {
            super(response,s) ;
        }

    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        //source
        String s = request.getParameter("t1");
        Child child = new Child(response,s) ;
    }
}
