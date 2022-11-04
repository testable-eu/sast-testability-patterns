import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    static void test(final String arg, HttpServletResponse response) throws IOException {
        final String inlined = " inlined ";
        class LocalClass {
            String m() {
                return "LocalClass " + arg + inlined;
            }

            class SubClass extends LocalClass {
                @Override
                String m() {
                    return "SubClass " + arg + inlined;
                }
            }

            class SubSubClass extends SubClass {
                @Override
                String m() {
                    return "SubSubClass " + arg + inlined;
                }
            }

            class AnotherLocal {
                class AnotherSub extends LocalClass {
                    @Override
                    String m() {
                        return "AnotherSub " + arg + inlined;
                    }
                }
            }
        }
        response.getWriter().write(new LocalClass().m());
        response.getWriter().write(new LocalClass().new SubClass().m());
        response.getWriter().write(new LocalClass().new SubSubClass().m());
        response.getWriter().write(new LocalClass().new AnotherLocal().new AnotherSub().m());

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        test(s,response) ;


    }
}
