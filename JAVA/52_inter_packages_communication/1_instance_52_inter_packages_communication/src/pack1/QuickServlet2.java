package pack1;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class QuickServlet2 extends HttpServlet {
    String s;
    public void setMe2(String s, HttpServletResponse response) throws IOException {
        response.getWriter().write(s) ;
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        //source
    }
}
