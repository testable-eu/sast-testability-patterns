import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.* ;

    public class QuickServlet extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws IOException {
            //source
            String s = request.getParameter("t1") ;
            String[] arr =  {s,"efg","def"} ;
            int index =1 ;
            index = index-1 ;
            response.getWriter().write(arr[index]);
        }
    }
