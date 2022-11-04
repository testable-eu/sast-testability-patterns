import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

public class Foo{
    String s ;
    HttpServletResponse response = null ;
    Foo(HttpServletResponse response, String s){
        this.s =s ;
        this.response = response;
    }
    void f() throws IOException{
        this.response.getWriter().write(this.s) ;
    }
 }