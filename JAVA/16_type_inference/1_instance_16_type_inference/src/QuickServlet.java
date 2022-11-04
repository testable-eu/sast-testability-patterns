import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// wait and notify
public class QuickServlet extends HttpServlet {
    class GenericClass<X> {
        X name;
        public void setName(X name){
            this.name = name;
        }
        public X getName(){
            return name;
        }
        public String genericMethod(GenericClass<String> x){
            return  x.name;
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
            String s = request.getParameter("t1");
            GenericClass<String> genericClass = new GenericClass<>();
            genericClass.setName(s);
            response.getWriter().write(genericClass.genericMethod(genericClass));
            response.getWriter().write(genericClass.getName());

    }
}
