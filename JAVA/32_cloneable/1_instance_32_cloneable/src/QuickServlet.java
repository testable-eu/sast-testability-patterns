import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet implements Cloneable{
    String s ;
    public String getS() {
        return s;
    }
    public Object clone() throws CloneNotSupportedException{
        return super.clone();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        try{
            String s = request.getParameter("t1");
            this.s = s ; 
            //pattern
            QuickServlet obj2 = (QuickServlet) this.clone();
            //sink
            String sout = obj2.getS() ;
            response.getWriter().write(sout) ;
        }
        catch (CloneNotSupportedException e){
            e.printStackTrace();
        }
    }
}