import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //Desc: put source inside an arrayList, use forEach to print the elements of the ArrayList
        //source
        String s = request.getParameter("t1");
        //pattern
        ArrayList<String> strings = new ArrayList<String>();
        strings.add(s);
        strings.forEach(e -> {
            try {
                response.getWriter().write(e);
            } catch (Exception ex) {
            }
        });

    }
}

