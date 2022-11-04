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
        arrayList.add("haha");
        arrayList.add(s) ;
        arrayList.remove(0);
        response.getWriter().write(arrayList.get(0));
    }
}