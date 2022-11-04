import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {


    public void returnMe(String[] lost, String[] found) {
        lost[0] = found[0] ;
        return;
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String s = request.getParameter("t1");
        //pattern
        String []lost = {"oups"};
        String []found={s};
        returnMe(lost,found);
        //sink
        response.getWriter().write(lost[0]);

    }
}