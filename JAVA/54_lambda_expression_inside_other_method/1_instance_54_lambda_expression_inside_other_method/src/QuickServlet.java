import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Desc: lambda expression inside another method
public class QuickServlet extends HttpServlet {
    interface myInterface {
        void display();
    }

    // function have implements another function
    // run() using Lambda expression
    static void Foo(String s, HttpServletResponse response)
    {
        // Lambda expression
        myInterface r = () ->
        {
            try {
                response.getWriter().write("<h1>hello hello</h1>"+s);
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        };
        r.display();
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        String s = request.getParameter("t1");
        Foo(s,response);
    }
}