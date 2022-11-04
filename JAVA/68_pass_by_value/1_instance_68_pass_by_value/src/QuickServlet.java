import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws IOException {
            String s = request.getParameter("t1");
            //pattern
            String[] arr1;
            arr1 = new String[]{"a","b","c"};
            String[] arr2;
            arr2 = arr1;
            arr1[0] = s;
            //sink
            response.getWriter().write(arr2[0]);
        }
    }