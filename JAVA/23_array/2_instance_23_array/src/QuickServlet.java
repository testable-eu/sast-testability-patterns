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
        String[] arr = {s} ;
        String[] arrDest = new String[1];
        System.arraycopy(arr,0,arrDest,0,1);
        response.getWriter().write(arrDest[0]);
    }
}
