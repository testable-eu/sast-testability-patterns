import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        String patternString = ".*";
        Pattern pattern = Pattern.compile(patternString);
        Matcher matcher = pattern.matcher(s);
        String res = matcher.replaceAll("blabla");
        response.getWriter().write(res);

    }
}