import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QuickServlet extends HttpServlet {
    public String s1, s2;
    class FatServlet extends QuickServlet {
        public String s3;
        public void delta(QuickServlet qs) {
            qs.s1 += this.s1;
            qs.s2 += this.s2;
        } 
    } 
    public void warp(FatServlet a) {
        if (a.s3 != null)
            a.delta(this);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source

        String s = request.getParameter("t1") ;
        QuickServlet qs= new QuickServlet() ;
        FatServlet fs = new FatServlet();
        fs.s1=s;
        fs.s2="";
        fs.s3="" ;
        qs.s1= "";
        qs.s2="";
        qs.warp(fs) ;
        response.getWriter().write(qs.s1);

    }
}
