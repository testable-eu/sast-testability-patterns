import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
        class Inner {
            private String value;
            Inner(int code, String s) {
                switch(code) {
                    case VAL1: value = "value1"; break;
                    case VAL2: value = "value2"; break;
                    case VAL3: value = "value3"; break;
                    case VAL4: value =s ; break;
                }
            }
        }
        private static final int VAL1 = 1;
        private static final int VAL2 = 2;
        private static final int VAL3 = 3;
        private static final int VAL4 = 4;



    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        //test1
        String s =  request.getParameter("t1") ;
        Inner in = new Inner(4,s);
        response.getWriter().write(in.value);
    }
}
