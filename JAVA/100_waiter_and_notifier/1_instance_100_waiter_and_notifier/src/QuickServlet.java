import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// wait and notify
public class QuickServlet extends HttpServlet {

    final class Message {
        private final String msg;

        public Message(String str){
            this.msg=str;
        }
        public String getMsg() {
            return msg;
        }
    }

    public class Waiter implements Runnable{

        private Message msg;
        HttpServletResponse response ;

        public Waiter(Message m, HttpServletResponse response){
            this.msg=m;
            this.response = response ;
        }

        @Override
        public void run() {
            synchronized (msg) {
                try{
                    // XSS
                    response.getWriter().write(msg.getMsg());
                    msg.wait();
                } catch(Exception e ) {}
            }
        }
    }
    public class Notifier implements Runnable {

        private Message msg;
        HttpServletResponse response ;
        public Notifier(Message msg, HttpServletResponse response) {
            this.msg = msg;
            this.response = response ;
        }

        @Override
        public void run() {
            try {
                synchronized (msg) {
                    msg.notify();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        Message msg = new Message(s);
        Waiter waiter = new Waiter(msg,response);
        new Thread(waiter,"waiter").start();
        Notifier notifier = new Notifier(msg,response);
        new Thread(notifier, "notifier").start();
    }
}
