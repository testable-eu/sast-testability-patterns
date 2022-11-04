import java.io.IOException;
import java.util.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class QuickServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String s = request.getParameter("t1");
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(s) ;
        Object arr[] = arrayList.toArray();
        response.getWriter().write(arr[0].toString());
    }
}