import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public class Parent {
        public class Child {
            public String s;
            Child(String s){
                this.s =s ;
            }
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source

        String s = request.getParameter("t1") ;
	Parent parent = new Parent();
        Parent.Child son = parent.new Child(s) ;
        response.getWriter().write(son.s);

    }
}
