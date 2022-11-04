import java.io.IOException;
import java.util.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        StringJoiner sj = new StringJoiner("", "", "");
        sj.add("").add(s).add("");
        String desiredString = sj.toString();
        response.getWriter().write(desiredString);
    }
}