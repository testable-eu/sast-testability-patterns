import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.concurrent.*;
import java.util.*;
import java.util.stream.Stream;


public class QuickServlet extends HttpServlet {
    public static String f ( String s)  {
        return(s) ;
    }
    public  static void display (HttpServletResponse response, String s){
        try{
            response.getWriter().write(s) ;
        }
        catch (Exception e) {}
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String s = request.getParameter("t1") ;
        String arr[] = {"a",s,s} ;
        Stream<String> rStream = (Stream<String>) Arrays.stream(arr).map(x-> f(x));
        rStream.forEach(x-> display(response,x));
    }
}
