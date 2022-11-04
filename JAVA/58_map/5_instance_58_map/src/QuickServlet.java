import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.* ;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        HashMap<Integer,String> map = new HashMap<>() ;
        map.put(0,s) ;
        HashMap<Integer, String> shallowCopy = (HashMap<Integer, String>) map.clone();
        response.getWriter().write(shallowCopy.get(0));
    }
}
