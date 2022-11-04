import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Arrays ;

public class CharArrReader extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        char[] arr = s.toCharArray();
        String s1= "" ;
        for (int i=0 ; i<s.length(); i++) {
            s1 = s1 + arr[i] ;
        }
        response.getWriter().write(s1) ;
    }
}
