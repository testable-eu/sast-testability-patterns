import java.awt.*;
import java.awt.image.DataBuffer;
import java.awt.image.Raster;
import java.awt.image.SampleModel;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.IOException;
import java.net.SocketPermission;
import java.nio.charset.StandardCharsets;
import java.util.Vector;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;

public class QuickServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        //source
        String s = request.getParameter("t1");
        Vector<String> vect = new Vector<>();
        vect.add(s);
        vect.add("haha");
        vect.setSize(1);
        response.getWriter().write(vect.get(0));
    }
}