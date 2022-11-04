import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {

    public enum EnumSingleton {
        INSTANCE("Initial class info");

        private String info;

        private EnumSingleton(String info) {
            this.info = info;
        }

        public EnumSingleton getInstance() {
            return INSTANCE;
        }

        public String getInfo() {
            return info;
        }

        public void setInfo(String info) {
            this.info = info;
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        String s = request.getParameter("t1");
        EnumSingleton enumSingleton1 =  EnumSingleton.INSTANCE.getInstance();
        enumSingleton1.setInfo(s) ;
        response.getWriter().write(enumSingleton1.getInfo());

    }
}