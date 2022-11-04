import java.io.ByteArrayInputStream;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




public class ByteArrInputStream extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws IOException {
            //source
            String s = request.getParameter("t1");
            byte[] sBytes = s.getBytes() ;
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(sBytes);
            String sout = new String(byteArrayInputStream.readAllBytes()) ;
            response.getWriter().write(sout);
        }
    }
