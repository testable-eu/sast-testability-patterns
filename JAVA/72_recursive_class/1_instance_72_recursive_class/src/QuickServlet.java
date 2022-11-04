import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// desc : recursice classes
public class QuickServlet extends HttpServlet {
    public class Rec<T>{
        T recMe;
        Rec<T> next;
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //source
        String s = request.getParameter("t1");
        Rec<String> rec = new Rec<>();
        rec.next = rec;
        rec.next.recMe = s ;
        Rec<String> rec1 = rec;
        response.getWriter().write(rec1.next.recMe) ;
    }
}
