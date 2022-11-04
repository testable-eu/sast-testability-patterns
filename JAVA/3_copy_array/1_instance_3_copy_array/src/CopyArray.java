import java.io.IOException;
import java.util.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CopyArray extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        //pattern
        String arr[] = {s,"abc","Def"} ;
        String copyArr[] = Arrays.copyOf(arr,4) ;
        //sink
        response.getWriter().write(copyArr[0]);
        response.getWriter().flush();
        }
    }