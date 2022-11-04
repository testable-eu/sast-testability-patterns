import java.io.IOException;
import javax.servlet.http.HttpServlet;
import java.util.* ;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


    public class ToMap extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws IOException {
            //source
            String s = request.getParameter("t1") ;
            Stream <String> st = Stream.of(s) ;
            Map<String,String> result = st.collect(Collectors.toMap(p->p,p->p));
            response.getWriter().write(result.get("Hi"));
        }
    }
