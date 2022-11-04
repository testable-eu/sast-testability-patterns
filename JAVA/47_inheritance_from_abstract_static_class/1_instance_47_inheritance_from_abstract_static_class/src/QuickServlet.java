import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class QuickServlet extends HttpServlet {
    abstract static class Foo {
        String str = "";

        void append(String sapp) {
            str += sapp;
        }
        abstract String id();
    }

    static class FooFoo extends Foo {
        String id(){
            return this.str;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        // Desc: inheritance from an abstract static class
        String s = request.getParameter("t1");
        Foo foo = new FooFoo();
        foo.append(s);
        String sout = foo.id();
        response.getWriter().write(sout);
    }
}
