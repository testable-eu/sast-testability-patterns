import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;


public class QuickServlet extends HttpServlet {
    public class Foo{
        String s;
        Foo(String s){
            this.s = s ;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        Map<String, Foo> fooMap = new HashMap<String, Foo>();
        fooMap.put(s, new Foo(s));
        Foo myFoo = fooMap.get(s);
        response.getWriter().write(myFoo.toString()) ;
    }
}