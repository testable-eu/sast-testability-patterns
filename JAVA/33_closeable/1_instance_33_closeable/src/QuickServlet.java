import java.io.Closeable;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    class Demo implements Closeable {
        String s ;
        public Demo(String s) {
            this.s = s ;
        }
        String getS() { return(this.s); }
        public void close()
        {
            System.out.println("close from demo");
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        Demo demo = new Demo(s) ;
        String sout = demo.getS();
        response.getWriter().write(sout);
    }
}