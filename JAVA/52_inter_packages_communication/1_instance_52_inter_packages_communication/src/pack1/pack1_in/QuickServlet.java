package pack1.pack1_in;
import pack1.QuickServlet2;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class QuickServlet extends QuickServlet2 {
    public void setMeIn(String s, HttpServletResponse response) throws IOException {
        super.setMe2(s,response) ;
    }
    // test between packages communication
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //source
        String s = request.getParameter("t1");
       setMeIn(s,response) ; 
    }
}
