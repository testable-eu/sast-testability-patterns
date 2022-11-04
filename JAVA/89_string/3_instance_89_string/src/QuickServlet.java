import java.io.IOException;
import java.util.Base64;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException{
        String plaintextString = request.getParameter("t1");
        String encodedString = Base64.getEncoder().encodeToString(plaintextString.getBytes()) ;
        String decodedString = new String(Base64.getDecoder().decode(encodedString));
        response.getWriter().write(decodedString);
    }
}