import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.concurrent.*;

// yield and default
public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
	String s = request.getParameter("t1") ;
	String sink="" ;
	switch (s) {
            case "a" : sink = "hola : a " ; break ;
            case "b" : sink = "hola : b "; break ;
            case "c" : sink = "hola : c ";  break ;
            case "d" : sink = "hola : d ";  break ;
            case "e" : sink = "hola : e ";  break ;
            case "f" : sink = "hola : f ";   break ;
            case "g" : sink = "hola : g ";  break ;
            case "h" : sink = "hola : h ";  break ;
            case "i" : sink = "hola : i ";  break ;
            case "j" : sink = "hola : j ";  break ;
            case "k" : sink = "hola : k ";  break ;
            case "l" : sink = "hola : l ";  break ;
            case "m" : sink = "hola : m ";  break ;
            case "n" : sink = "hola : n ";  break ;
            case "o" : sink = "hola : o ";  break ;
            case "p" : sink = "hola : p ";  break ;
            case "<script>alert()</script>" : sink = s ;  break ;
            case "z" : sink = "hola : z" ;
        }
        response.getWriter().write(sink);

    }
}
