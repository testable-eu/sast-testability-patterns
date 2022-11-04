import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.concurrent.*;
import java.util.*;
import java.util.stream.Stream;


public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // source
        String s = request.getParameter("t1") ;
        String s1 =""; 
        Integer cond = 0 ;
        loop1:
        for (int i = 0; i < 2; i++) {
            cond ++ ; 
            response.getWriter().write(s1) ;
            if (cond == 1) {
                s1 = s ;
                continue loop1;
            }
        }
    }
}
