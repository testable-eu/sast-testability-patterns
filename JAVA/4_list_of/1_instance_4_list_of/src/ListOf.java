import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class ListOf extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        String[] arr= {s,"a","b"} ;
        List<String> list =  List.of(arr);
        response.getWriter().write(list.get(0));
        }
    }
