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
        String patternString = "blabla";
        Pattern pattern = Pattern.compile(patternString);
        Stream<String> st = pattern.splitAsStream(s);
        response.getWriter().write(st.findFirst().toString());

    }
}