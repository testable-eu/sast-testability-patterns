import java.io.IOException;
import java.util.* ;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




    public class ToMap extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws IOException {
            //source
            String s = request.getParameter("t1") ;
            // Creating a string stream
            Stream <String> st = Stream.of("Hi",s) ;
            //toMap method takes as input a keyMapper: a mapping function to produce keys and a valueMapper: a mapping function to produce values
            List<String> result = st.collect(Collectors.toList());
            for( String str : result) {
                response.getWriter().write(str);
            }
        }
    }
