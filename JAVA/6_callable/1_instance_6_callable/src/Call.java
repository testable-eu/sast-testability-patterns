import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.concurrent.*;


public class Call extends HttpServlet {
    // There are two ways of creating threads – one by extending the Thread class and other by creating a thread with a Runnable.
    // However, one feature lacking in  Runnable is that we cannot make a thread return result when it terminates, i.e. when run() completes.
    // For supporting this feature, the Callable interface is present in Java.
    // Note: for callable, the call() method needs to be implemented which returns a result on completion.
    public static class MyCallable implements Callable<String> {
        String s ;
        public MyCallable(String s) {
            this.s = s ;
        }
        @Override
        public String call() {
            return s;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //source
        try {
            String s = request.getParameter("t1");
            MyCallable callable = new MyCallable(s);
            // store the call() method result in a future object
            // Note: Future is a way for the main thread to keep track of the progress and results of the other threads
            // To create the thread, a Runnable is required. To obtain the result, a Future is required.
            //The Java library has the concrete type FutureTask, which implements Runnable and Future, combining both functionality conveniently.
            // there is no way to create the thread directly with a Callable.
            FutureTask futureTask = new FutureTask(callable);
            Thread t = new Thread(futureTask);
            t.start();
            // All interaction with the thread after it starts is using the FutureTask object as it implements the Future interface.
            response.getWriter().write(futureTask.get().toString());
        } catch (Exception e) {
        }
    }
}