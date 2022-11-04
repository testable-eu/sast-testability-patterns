import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class QuickServlet extends HttpServlet {
    public class Test{
        String s ;
        Test(String s){
            this.s = s ;
        }
        Test hello(){
            return this ;
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
            //source
            String s = request.getParameter("t1");
            Test t = new Test(s) ;
            Test t1 = t.hello();
            response.getWriter().write(t1.s);
    }
}
