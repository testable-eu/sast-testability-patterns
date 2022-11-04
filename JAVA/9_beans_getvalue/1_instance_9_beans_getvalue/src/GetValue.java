import java.io.IOException;
import java.beans.* ;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


    public class GetValue extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws IOException {
            try {
                //source
                String s = request.getParameter("t1");
                // An Expression object represents a primitive expression in which a single method is applied to a target and a set of arguments
                // to return a result. In addition to the properties of the super class, the Expression object provides a value which is
                // the object returned when this expression is evaluated. The return value is typically not provided by the caller
                // and is instead computed by dynamically finding the method and invoking it when the first call to getValue is made.
                Expression expression = new Expression(s, Object.class, "new", null);
                response.getWriter().write(expression.getValue().toString());
            }
            catch (Exception e){}
            }
    }
