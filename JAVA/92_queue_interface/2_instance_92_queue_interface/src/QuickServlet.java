import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        //source
        String s = request.getParameter("t1");
        BlockingQueue<String> strings = new ArrayBlockingQueue<>(5);
        // Insert element to blocking queue
        try{
            strings.put(s);
            strings.put("hello");

            // Remove Elements from blocking queue
            String removedString = strings.take();
            response.getWriter().write(removedString);}
        catch (Exception e) {
            System.out.println(e);
        }

    }
}