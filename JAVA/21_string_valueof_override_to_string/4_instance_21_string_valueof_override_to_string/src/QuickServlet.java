import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    // Base class
    class Parent {
        HttpServletResponse response = null;
        String s ="abc" ;
        Parent(HttpServletResponse response, String s) {
            this.response = response;
            this.s = s;
        }
        String show()
        {
            try{
                response.getWriter().write("Parent's show()") ;
             }
            catch (Exception e) {}
            return("hi parent") ;
        }
    }
    // Inherited class
    class Child extends Parent {
        HttpServletResponse response = null;
        String s ="abc" ;
        Child(HttpServletResponse response, String s) {
            super(response,s) ;
        }
        @Override
        String show()
        {
            try {
                response.getWriter().write("Child's show()" + this.s);
            } catch (Exception e) {}
            return("hi child") ;
        }
    }
    static String indirect_call(Parent obj) throws IOException{
        return ((obj ==null)? "null" : obj.show()) ;
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        //pattern
        Parent obj1 = new Parent(response,s) ;
        Parent obj2 = new Child(response,s) ;
        indirect_call(obj2) ;
    }
}
