import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {

        public String f(String source) {
            class Local {
                private String s = source;
            }
            return (new Local()).s;
        }


    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        //test1
        String s =  request.getParameter("t1") ;
        response.getWriter().write(f(s));
    }
}
