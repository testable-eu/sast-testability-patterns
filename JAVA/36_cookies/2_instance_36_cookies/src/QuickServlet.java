import java.io.*;
import java.nio.charset.StandardCharsets;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class QuickServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //source
        String s1=request.getCookies()[1].getValue() ;
        response.getWriter().write(s1) ;
    }
}
