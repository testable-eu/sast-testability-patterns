import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class QuickServlet extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws IOException, ServletException {
            //source
           String s = request.getParameter("t1") ;
           request.setAttribute("attributeName",s);
           RequestDispatcher rd = request.getRequestDispatcher("QuickServlet2");
           rd.forward(request,response);
        }
    }
