import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.io.IOException;
import java.util.stream.Stream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        ArrayList<String> src= new ArrayList<>();
        ArrayList<String> result = new ArrayList<>() ;
        src.add(s);
        Collections.copy(src,result);
        response.getWriter().write(src.get(0));
    }
}