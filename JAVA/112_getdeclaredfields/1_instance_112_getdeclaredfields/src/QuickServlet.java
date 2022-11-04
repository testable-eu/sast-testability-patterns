import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Field;

public class QuickServlet extends HttpServlet {
    String s ;
    QuickServlet(String s){
        this.s = s ;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        QuickServlet qs = new QuickServlet(s);
        for (Field f : qs.getClass().getDeclaredFields()){
            try {
                Object value = f.get(s);
                response.getWriter().write(value.toString());
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
    }
}
