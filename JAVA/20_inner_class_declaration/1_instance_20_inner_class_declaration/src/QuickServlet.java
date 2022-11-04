import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class QuickServlet extends HttpServlet {
    // A pattern is a set of instances containing a set of instructions that may be challenging for the SAST tool to interpret/analyze.
    public String foo(String s){
        String s1 = s ;
        class Local { // A local class
            String s2 = s1;
        }
        Local loc = new Local();
        return(loc.s2);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //source
        String s = request.getParameter("t1");
        String sout = foo(s);
        response.getWriter().write(sout);
    }
}
