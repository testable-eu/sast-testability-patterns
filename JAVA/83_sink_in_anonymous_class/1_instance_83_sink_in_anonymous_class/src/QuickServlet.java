import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// sink inside Anonymous class

public class QuickServlet extends HttpServlet {
    interface InputHandler{
        void handleInput(String s) throws IOException;
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        InputHandler ih = new InputHandler(){
            public void handleInput(String s) throws IOException {
                response.getWriter().write(s) ;
            }
        } ;
        ih.handleInput(s) ;
    }
}
