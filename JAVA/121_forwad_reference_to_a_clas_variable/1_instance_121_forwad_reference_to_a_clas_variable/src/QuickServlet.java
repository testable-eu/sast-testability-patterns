import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class QuickServlet extends HttpServlet {
	static String s ;
	class GrandFather {
        String s ;
        void call_son(){
        this.s = bringTheSource;}
        String bringTheSource = QuickServlet.s ;
    }
	public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // source
        QuickServlet.s = request.getParameter("t1") ;
        GrandFather gf = new GrandFather();
	gf.call_son();
        response.getWriter().write(gf.s);

    }
}
