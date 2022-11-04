import java.io.IOException;
import java.util.concurrent.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1") ;
        //tarpit
        CompletableFuture<Long> completableFuture =CompletableFuture.supplyAsync(() -> {
            try {
                //sink
                response.getWriter().write(s);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        });
        // tarpit companion
        while (!completableFuture.isDone()) {
            System.out.println("CompletableFuture is not finished yet...");
        }
    }
}
