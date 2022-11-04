import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Finalization extends HttpServlet {
    class Car {
        String id;
        HttpServletResponse response;

        public Car(String id, HttpServletResponse response) {
            this.id = id;
            this.response = response;
        }

        @Override
        protected void finalize() {
            try {
                this.response.getWriter().write(this.id);
            } catch(Exception e ){}
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // source
        String s = request.getParameter("t1") ;
        Car car = new Car(s,response);
        car.finalize();
    }
}
