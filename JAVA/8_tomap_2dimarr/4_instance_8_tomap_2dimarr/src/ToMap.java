import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Arrays ;

public class ToMap extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        //source
        String s = request.getParameter("t1");
        //pattern
        String [][] arr = new String[10][10] ;
        arr[0][0] = s ;
        Arrays.stream(arr).forEach(p-> {try {
            response.getWriter().write(p[0]) ; }
        catch (Exception e) {}
        });
    }
}
