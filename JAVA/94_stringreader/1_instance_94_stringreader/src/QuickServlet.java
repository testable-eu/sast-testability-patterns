import java.io.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class QuickServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        Reader reader = new StringReader(s) ;
        BufferedReader breader = new BufferedReader(reader) ;
        response.getWriter().write(breader.readLine()) ;
    }
}