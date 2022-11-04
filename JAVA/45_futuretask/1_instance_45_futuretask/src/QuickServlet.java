import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.concurrent.*;


public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        try {
            String s = request.getParameter("t1");
            ExecutorService threadpool = Executors.newCachedThreadPool();
            Future<Long> futureTask = (Future<Long>) threadpool.submit(() -> getMe(response,s));

            while (!futureTask.isDone()) {
                System.out.println("FutureTask is not finished yet...");
            }
            futureTask.get();
            threadpool.shutdown();
        } catch (Exception e){
            System.out.println(e);
        }
    }
    public static void getMe(HttpServletResponse response, String s) {
        try {
            response.getWriter().write(s);
        } catch(Exception e){
            System.out.println(e);
        }
    }
}
