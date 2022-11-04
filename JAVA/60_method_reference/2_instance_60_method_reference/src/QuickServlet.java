import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class QuickServlet extends HttpServlet {
    @FunctionalInterface
    interface IdentityInterface{
        String identify(String s) ;
    }
    class MethodReference{
        String id(String s){
            return s ;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        MethodReference methodReference = new MethodReference();
        IdentityInterface identityInterface = methodReference::id;
        String sout = identityInterface.identify(s);
        response.getWriter().write(sout);
    }
}
