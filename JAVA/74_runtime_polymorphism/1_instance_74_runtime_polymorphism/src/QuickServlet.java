import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    String s ;
    public void setS(String newString) {
        this.s = newString;
    }
    public void getS(HttpServletResponse response) throws IOException
    {
        response.getWriter().write("abc") ;
    }


    // Inherited class
    static class Child extends QuickServlet {
        // This method overrides show() of Parent
        public String s="childsh" ;
        @Override
        public void setS(String newString) {
            this.s = newString;
        }

        @Override
        public void getS(HttpServletResponse response) throws IOException
        {
            response.getWriter().write(this.s) ;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException {
        String s = request.getParameter("t1");
        // If a Parent type reference refers
        // to a Parent object, then Parent's
        // getS is called
        QuickServlet obj1 = new QuickServlet();
        obj1.setS(s) ;
        //obj1.getS(response) ;
        // If a Parent type reference refers
        // to a Child object Child's getS()
        // is called. This is called RUN TIME
        // POLYMORPHISM.
        QuickServlet obj2 = new Child();
        obj2.setS(s);
        obj2.getS(response) ;
    }
}