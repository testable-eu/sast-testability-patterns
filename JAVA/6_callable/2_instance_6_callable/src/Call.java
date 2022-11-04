import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Call extends HttpServlet {
    class MyRunnable implements Runnable {

        HttpServletResponse response;
        String s ;

        public MyRunnable(HttpServletResponse response,String s)
        {
            this.response = response;
            this.s = s;
        }
        @Override
        public void run()
        {
            try {
                response.getWriter().write(s);
            }
            catch (Exception e) {
            }
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws IOException {
            //source
        try {
           String s = request.getParameter("t1") ;
           MyRunnable myrunnableobject1 = new MyRunnable(response,s);
           FutureTask<String> futureTask1 = new FutureTask<>(myrunnableobject1, s);
           ExecutorService executor = Executors.newFixedThreadPool(1);
           executor.submit(futureTask1);
           String s1 = futureTask1.get();
           response.getWriter().write(s1) ;
        }
        catch (Exception e) {}
    }
    }
