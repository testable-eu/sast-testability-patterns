import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// Desc: sink in the clone method 
public class QuickServlet extends HttpServlet implements Cloneable{
    String s ;
    HttpServletResponse response;
    QuickServlet(String s, HttpServletResponse response) {
        this.s = s ;
        this.response=response;
    }

    public Object clone() throws CloneNotSupportedException{
        try{response.getWriter().write(this.s);
       }
        catch (Exception e) {
            e.printStackTrace();
        }
        return super.clone();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    {
        try{
            String s = request.getParameter("t1");
            //pattern
            QuickServlet obj = new QuickServlet(s,response);
            QuickServlet obj2 = (QuickServlet) obj.clone();
        }
        catch (CloneNotSupportedException e){
            e.printStackTrace();
        }
    }
}