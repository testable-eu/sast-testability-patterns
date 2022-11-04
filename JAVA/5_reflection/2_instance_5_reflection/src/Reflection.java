import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;

public class Reflection extends HttpServlet {
    private static String process( String str) {
            return (str);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException{
            String s = request.getParameter("t1");
            try {
                Object reflection = new Reflection();
                String d_str = "process" ;
                java.lang.reflect.Method m = reflection.getClass().getDeclaredMethod(d_str, String.class);
                response.getWriter().write(m.invoke(null, s).toString());
            }
            catch(Exception e){}
        }
}