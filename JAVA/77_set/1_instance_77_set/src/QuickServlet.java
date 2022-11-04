import java.io.IOException;
import java.util.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String s = request.getParameter("t1");
        String[] firstArray = {"A", "B", s, "D"};
        String[] secondArray = {"D", s, "E", "F"};
        HashSet<String> set = new HashSet<>();
        set.addAll(Arrays.asList(firstArray));
        set.retainAll(Arrays.asList(secondArray));
        String[] intersection = {};
        intersection = set.toArray(intersection);
        response.getWriter().write(intersection.toString());
    }
}