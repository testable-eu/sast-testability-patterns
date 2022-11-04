import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class QuickServlet extends HttpServlet {

        String m(String s) {
            switch(s) {
                case "Oh what a feeling...":
                    return(s);
                case "oups":
                    return ("... switching on the ceiling!");
            }
            return null;
        }
        public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        //test1
        String s =  request.getParameter("t1") ;
        response.getWriter().write(m(s));
    }
}
