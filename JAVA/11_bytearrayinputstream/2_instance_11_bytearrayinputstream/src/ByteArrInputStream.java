import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class ByteArrInputStream extends HttpServlet {
        public void doGet(HttpServletRequest request, HttpServletResponse response)
                throws IOException {
            //source
            String s = request.getParameter("t1");
            Charset charset = StandardCharsets.US_ASCII;
            byte[] sBytes = charset.encode(s).array() ;
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(sBytes);
            byteArrayInputStream.skip( 0);
            int n = byteArrayInputStream.available();
            byte[] bytes = new byte[n];
            byteArrayInputStream.readNBytes(bytes, 0, n);
            String sout = new String(bytes, StandardCharsets.UTF_8);
            response.getWriter().write(sout);
        }
    }
