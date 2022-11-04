import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    String s ;
    public QuickServlet(String s) {
        this.s = s ;
    }
    public static class ChildClass extends QuickServlet {
        ChildClass(String s) {
            super(s);
        }
    }


    public String returnFirst (List<? extends QuickServlet> origlist)  {
            return origlist.get(0).toString();
        }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        // tarpit
        ChildClass myChild = new ChildClass(s);
        List<ChildClass> childrenList = new ArrayList<>();
        childrenList.add(myChild);
        String sout = returnFirst(childrenList);
        //sink
        response.getWriter().write(sout);
    }
}