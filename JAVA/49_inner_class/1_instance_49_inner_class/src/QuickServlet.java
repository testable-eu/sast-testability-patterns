import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class QuickServlet extends HttpServlet {
    String s ;
    public QuickServlet(String s) {
        this.s = s ;
    }

    class InnerClass {
        String sin ;
        public InnerClass(){
            this.sin = s;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //source
        String s = request.getParameter("t1");
        QuickServlet myOuter = new QuickServlet(s);
        QuickServlet.InnerClass myInner = myOuter.new InnerClass();
        response.getWriter().write(myInner.sin);
    }
}
