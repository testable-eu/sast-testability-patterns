import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// Desc : class implements two interfaces
public class QuickServlet extends HttpServlet {
    interface Fish {
        String s="" ;
        String getNumberOfScales(); }
    interface Piano {
        String s="" ;
        String getNumberOfScales(); }
    class Tuna implements Fish, Piano {
        String s ;
        public Tuna(String s){
            this.s = s ;
        }
        // You can tune a piano, but can you tuna fish?
        public String getNumberOfScales() { return this.s; }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //source
        String s = request.getParameter("t1") ;
        Piano p = new Tuna(s) ;
        Fish f = new Tuna(s) ;
        response.getWriter().write(p.getNumberOfScales());
        response.getWriter().write(f.getNumberOfScales());
    }
}
